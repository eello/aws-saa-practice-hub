import {
  createContext,
  useCallback,
  useContext,
  useEffect,
  useMemo,
  useRef,
  useState,
} from 'react'
import { fetchQuestionById, QuestionNotFoundError } from '../services/questionApi.js'

const QuizContext = createContext(null)
const STORAGE_KEY = 'saa-quiz-state'
const TOTAL_QUESTIONS_FALLBACK = 240
const defaultSnapshot = Object.freeze({
  mode: null,
  currentQuestionId: null,
  sequentialQuestionId: null,
  language: 'kr',
  randomHistory: [],
  randomIndex: -1,
})

function readStoredSnapshot() {
  if (typeof window === 'undefined') return defaultSnapshot

  try {
    const raw = window.localStorage.getItem(STORAGE_KEY)
    if (!raw) return defaultSnapshot

    const parsed = JSON.parse(raw)
    if (
      typeof parsed !== 'object' ||
      parsed === null ||
      (parsed.mode !== null && parsed.mode !== 'sequential' && parsed.mode !== 'random')
    ) {
      return defaultSnapshot
    }

    const language = parsed.language === 'en' ? 'en' : 'kr'

    const randomHistory = Array.isArray(parsed.randomHistory)
      ? parsed.randomHistory
          .map((value) => Number(value))
          .filter((value) => Number.isInteger(value) && value > 0)
      : defaultSnapshot.randomHistory

    const randomIndex = Number.isInteger(parsed.randomIndex) ? parsed.randomIndex : defaultSnapshot.randomIndex

    return {
      mode: parsed.mode,
      currentQuestionId:
        typeof parsed.currentQuestionId === 'number' ? parsed.currentQuestionId : defaultSnapshot.currentQuestionId,
      sequentialQuestionId:
        typeof parsed.sequentialQuestionId === 'number'
          ? parsed.sequentialQuestionId
          : defaultSnapshot.sequentialQuestionId,
      language,
      randomHistory,
      randomIndex,
    }
  } catch (error) {
    console.warn('Failed to parse stored quiz snapshot', error)
    return defaultSnapshot
  }
}

export function QuizProvider({ children }) {
  const storedSnapshot = useMemo(() => readStoredSnapshot(), [])
  const initialRandomHistory = storedSnapshot.randomHistory ?? []
  const initialRandomIndex =
    initialRandomHistory.length > 0
      ? Math.min(Math.max(storedSnapshot.randomIndex ?? initialRandomHistory.length - 1, 0), initialRandomHistory.length - 1)
      : -1
  const [mode, setMode] = useState(storedSnapshot.mode)
  const [language, setLanguage] = useState(storedSnapshot.language)
  const [currentQuestionId, setCurrentQuestionId] = useState(storedSnapshot.currentQuestionId)
  const [sequentialQuestionId, setSequentialQuestionId] = useState(storedSnapshot.sequentialQuestionId)
  const [randomHistory, setRandomHistory] = useState(initialRandomHistory)
  const [randomIndex, setRandomIndex] = useState(initialRandomIndex)
  const [randomInvalidIds, setRandomInvalidIds] = useState([])
  const [randomExhausted, setRandomExhausted] = useState(false)
  const [totalQuestionsEstimate, setTotalQuestionsEstimate] = useState(TOTAL_QUESTIONS_FALLBACK)

  const randomHistoryRef = useRef(randomHistory)
  useEffect(() => {
    randomHistoryRef.current = randomHistory
  }, [randomHistory])

  const randomIndexRef = useRef(randomIndex)
  useEffect(() => {
    randomIndexRef.current = randomIndex
  }, [randomIndex])

  const randomInvalidIdsRef = useRef(new Set(randomInvalidIds))
  useEffect(() => {
    randomInvalidIdsRef.current = new Set(randomInvalidIds)
  }, [randomInvalidIds])

  const randomInvalidSet = useMemo(() => new Set(randomInvalidIds), [randomInvalidIds])

  const [questions, setQuestions] = useState({})
  const [loadingMap, setLoadingMap] = useState({})
  const [lastError, setLastError] = useState(null)
  const [sequentialEndReached, setSequentialEndReached] = useState(false)

  useEffect(() => {
    if (typeof window === 'undefined') return

    const snapshot = JSON.stringify({
      mode,
      currentQuestionId,
      sequentialQuestionId,
      language,
      randomHistory,
      randomIndex,
    })
    window.localStorage.setItem(STORAGE_KEY, snapshot)
  }, [mode, currentQuestionId, sequentialQuestionId, language, randomHistory, randomIndex])

  const isSequentialMode = mode === 'sequential'
  const isRandomMode = mode === 'random'

  useEffect(() => {
    if (!isRandomMode) return

    if (randomHistory.length === 0) {
      if (randomIndex !== -1) {
        setRandomIndex(-1)
        randomIndexRef.current = -1
      }
      return
    }

    const clampedIndex = Math.min(Math.max(randomIndex, 0), randomHistory.length - 1)
    if (clampedIndex !== randomIndex) {
      setRandomIndex(clampedIndex)
      randomIndexRef.current = clampedIndex
      const targetId = randomHistory[clampedIndex]
      if (targetId != null) {
        setCurrentQuestionId(targetId)
      }
      return
    }

    const targetId = randomHistory[clampedIndex]
    if (targetId != null && currentQuestionId !== targetId) {
      setCurrentQuestionId(targetId)
    }
  }, [isRandomMode, randomHistory, randomIndex, currentQuestionId])

  const ensureQuestionLoaded = useCallback(async (id) => {
    const numericId = Number(id)
    if (!Number.isFinite(numericId) || numericId < 1) {
      throw new Error('Invalid question id')
    }

    const cachedQuestion = questions[numericId]
    if (cachedQuestion) {
      const cachedTotal = Number(cachedQuestion.total_question_count)
      if (Number.isInteger(cachedTotal) && cachedTotal > 0) {
        setTotalQuestionsEstimate((prev) => (prev === cachedTotal ? prev : cachedTotal))
      }
      return cachedQuestion
    }

    setLoadingMap((prev) => ({ ...prev, [numericId]: true }))
    setLastError(null)

    try {
      const data = await fetchQuestionById(numericId)
      const totalCount = Number(data?.total_question_count)
      if (Number.isInteger(totalCount) && totalCount > 0) {
        setTotalQuestionsEstimate((prev) => (prev === totalCount ? prev : totalCount))
      }
      setQuestions((prev) => ({ ...prev, [numericId]: data }))
      return data
    } catch (error) {
      if (error instanceof QuestionNotFoundError) {
        throw error
      }
      setLastError(error)
      throw error
    } finally {
      setLoadingMap((prev) => {
        const next = { ...prev }
        delete next[numericId]
        return next
      })
    }
  }, [questions, setTotalQuestionsEstimate])

  useEffect(() => {
    if (currentQuestionId == null) return

    ensureQuestionLoaded(currentQuestionId).catch((error) => {
      if (error instanceof QuestionNotFoundError) {
        if (isSequentialMode) {
          if (currentQuestionId <= 1) {
            setLastError(error)
          }
          setSequentialEndReached(true)
        }
        return
      }
      console.error('Failed to load question', error)
    })
  }, [currentQuestionId, ensureQuestionLoaded, isSequentialMode])

  const startSequential = useCallback(({ resetToFirst } = {}) => {
    setMode('sequential')
    setSequentialEndReached(false)
    setLastError(null)
    setRandomHistory([])
    setRandomIndex(-1)
    randomHistoryRef.current = []
    randomIndexRef.current = -1
    setRandomInvalidIds([])
    randomInvalidIdsRef.current = new Set()
    setRandomExhausted(false)
    setSequentialQuestionId((prev) => {
      const nextId = resetToFirst || prev == null ? 1 : prev
      setCurrentQuestionId(nextId)
      return nextId
    })
  }, [])

  const fetchRandomQuestion = useCallback(
    async (historyBase, indexBase) => {
      const visitedSet = new Set(historyBase)
      const invalidSet = new Set(randomInvalidIdsRef.current)

      if (visitedSet.size >= totalQuestionsEstimate - invalidSet.size) {
        setRandomExhausted(true)
        return
      }

      for (let attempt = 0; attempt < totalQuestionsEstimate * 2; attempt += 1) {
        const candidate = Math.floor(Math.random() * totalQuestionsEstimate) + 1
        if (visitedSet.has(candidate) || invalidSet.has(candidate)) {
          continue
        }

        try {
          setLastError(null)
          await ensureQuestionLoaded(candidate)

          const nextHistory = historyBase.slice(0, indexBase + 1)
          nextHistory.push(candidate)

          randomHistoryRef.current = nextHistory
          randomIndexRef.current = nextHistory.length - 1

          setRandomHistory(nextHistory)
          setRandomIndex(nextHistory.length - 1)
          setCurrentQuestionId(candidate)
          setRandomExhausted(false)
          return
        } catch (error) {
          if (error instanceof QuestionNotFoundError) {
            if (!invalidSet.has(candidate)) {
              invalidSet.add(candidate)
              setRandomInvalidIds((prev) => (prev.includes(candidate) ? prev : [...prev, candidate]))
            }
          } else {
            setLastError(error)
            return
          }
        }
      }

      setRandomExhausted(true)
    },
    [ensureQuestionLoaded, totalQuestionsEstimate],
  )

  const startRandom = useCallback(() => {
    setMode('random')
    setSequentialQuestionId(null)
    setSequentialEndReached(false)
    setRandomHistory([])
    randomHistoryRef.current = []
    setRandomIndex(-1)
    randomIndexRef.current = -1
    setRandomInvalidIds([])
    randomInvalidIdsRef.current = new Set()
    setRandomExhausted(false)
    setCurrentQuestionId(null)
    fetchRandomQuestion([], -1)
  }, [fetchRandomQuestion])

  const createMissingMessage = useCallback(
    (missingIds, direction) => {
      if (!missingIds || missingIds.length === 0) return null
      const minId = Math.min(...missingIds)
      const maxId = Math.max(...missingIds)
      if (language === 'en') {
        const rangeText = minId === maxId ? `Question ${minId}` : `Questions ${minId}-${maxId}`
        const suffix =
          direction === 'backward'
            ? ' were skipped because they do not exist when moving backward.'
            : ' were skipped because they do not exist when moving forward.'
        return `${rangeText}${suffix}`
      }
      const rangeText = minId === maxId ? `문제 ${minId}번` : `문제 ${minId}번부터 ${maxId}번까지`
      const suffix =
        direction === 'backward'
          ? '을(를) 찾을 수 없어 이전 문제로 건너뛰었어요.'
          : '을(를) 찾을 수 없어 다음 문제로 건너뛰었어요.'
      return `${rangeText}${suffix}`
    },
    [language],
  )

  const goToNextSequential = useCallback(async () => {
    if (!isSequentialMode) return
    const baseId = sequentialQuestionId ?? currentQuestionId ?? 1
    const maxId = Math.max(Number(totalQuestionsEstimate) || 0, Number(baseId))
    const missingIds = []

    for (let candidate = Number(baseId) + 1; candidate <= maxId; candidate += 1) {
      try {
        await ensureQuestionLoaded(candidate)
        setSequentialQuestionId(candidate)
        setCurrentQuestionId(candidate)
        setSequentialEndReached(false)
        const message = createMissingMessage(missingIds, 'forward')
        setLastError(message ? new QuestionNotFoundError(message) : null)
        return
      } catch (error) {
        if (error instanceof QuestionNotFoundError) {
          missingIds.push(candidate)
          continue
        }
        setLastError(error)
        return
      }
    }

    const message =
      createMissingMessage(missingIds, 'forward') ??
      (language === 'en' ? 'No further questions are available.' : '다음 문제를 더 이상 찾을 수 없어요.')
    setLastError(new QuestionNotFoundError(message))
    setSequentialEndReached(true)
  }, [
    isSequentialMode,
    sequentialQuestionId,
    currentQuestionId,
    totalQuestionsEstimate,
    ensureQuestionLoaded,
    createMissingMessage,
    language,
  ])

  const goToPreviousSequential = useCallback(async () => {
    if (!isSequentialMode) return
    const baseId = sequentialQuestionId ?? currentQuestionId ?? 1
    if (Number(baseId) <= 1) return

    const missingIds = []

    for (let candidate = Number(baseId) - 1; candidate >= 1; candidate -= 1) {
      try {
        await ensureQuestionLoaded(candidate)
        setSequentialQuestionId(candidate)
        setCurrentQuestionId(candidate)
        setSequentialEndReached(false)
        const message = createMissingMessage(missingIds, 'backward')
        setLastError(message ? new QuestionNotFoundError(message) : null)
        return
      } catch (error) {
        if (error instanceof QuestionNotFoundError) {
          missingIds.push(candidate)
          continue
        }
        setLastError(error)
        return
      }
    }

    const message =
      createMissingMessage(missingIds, 'backward') ??
      (language === 'en' ? 'No previous questions are available.' : '이전 문제를 더 이상 찾을 수 없어요.')
    setLastError(new QuestionNotFoundError(message))
  }, [
    isSequentialMode,
    sequentialQuestionId,
    currentQuestionId,
    ensureQuestionLoaded,
    createMissingMessage,
    language,
  ])

  const goToPreviousRandom = useCallback(() => {
    if (!isRandomMode) return
    const currentIndex = randomIndexRef.current
    if (currentIndex <= 0) return

    const nextIndex = currentIndex - 1
    const targetId = randomHistoryRef.current[nextIndex]
    if (targetId == null) return

    randomIndexRef.current = nextIndex
    setRandomIndex(nextIndex)
    setCurrentQuestionId(targetId)
    setLastError(null)
    setRandomExhausted(false)
  }, [isRandomMode])

  const goToNextRandom = useCallback(() => {
    if (!isRandomMode) return
    const history = randomHistoryRef.current
    const index = randomIndexRef.current

    if (index >= 0 && index < history.length - 1) {
      const nextIndex = index + 1
      const targetId = history[nextIndex]
      randomIndexRef.current = nextIndex
      setRandomIndex(nextIndex)
      setCurrentQuestionId(targetId)
      setLastError(null)
      setRandomExhausted(false)
      return
    }

    fetchRandomQuestion(history.slice(0, index + 1), index)
  }, [fetchRandomQuestion, isRandomMode])

  const resetSession = useCallback(() => {
    setMode(null)
    setCurrentQuestionId(null)
    setSequentialQuestionId(null)
    setSequentialEndReached(false)
    setLanguage('kr')
    setLastError(null)
    setRandomHistory([])
    randomHistoryRef.current = []
    setRandomIndex(-1)
    randomIndexRef.current = -1
    setRandomInvalidIds([])
    randomInvalidIdsRef.current = new Set()
    setRandomExhausted(false)
  }, [])

  const setQuestionById = useCallback(
    async (questionId) => {
      const numericId = Number(questionId)
      if (!Number.isFinite(numericId) || numericId < 1) return

      try {
        await ensureQuestionLoaded(numericId)
        setMode('sequential')
        setSequentialQuestionId(numericId)
        setCurrentQuestionId(numericId)
        setSequentialEndReached(false)
        setLastError(null)
        setRandomHistory([])
        randomHistoryRef.current = []
        setRandomIndex(-1)
        randomIndexRef.current = -1
        setRandomInvalidIds([])
        randomInvalidIdsRef.current = new Set()
        setRandomExhausted(false)
      } catch (error) {
        setLastError(error)
      }
    },
    [ensureQuestionLoaded],
  )

  const setLanguageSafe = useCallback((nextLanguage) => {
    setLanguage(nextLanguage === 'en' ? 'en' : 'kr')
  }, [])

  const currentQuestion = currentQuestionId != null ? questions[currentQuestionId] ?? null : null
  const isLoadingCurrent = currentQuestionId != null ? Boolean(loadingMap[currentQuestionId]) : false
  const sequentialQuestionNumber = sequentialQuestionId ?? null
  const hasPreviousSequential = isSequentialMode && (sequentialQuestionId ?? currentQuestionId ?? 1) > 1
  const hasNextSequential = isSequentialMode && !sequentialEndReached

  const randomVisitedSet = useMemo(() => new Set(randomHistory), [randomHistory])
  const hasPreviousRandom = isRandomMode && randomIndex > 0
  const hasBufferedRandomForward = isRandomMode && randomIndex >= 0 && randomIndex < randomHistory.length - 1
  const randomRemainingEstimate = Math.max(
    0,
    totalQuestionsEstimate - randomInvalidSet.size - randomVisitedSet.size,
  )
  const hasNextRandom =
    isRandomMode && (hasBufferedRandomForward || (!randomExhausted && randomRemainingEstimate > 0))
  const randomCompletionReached = isRandomMode && randomExhausted && !hasBufferedRandomForward

  const value = useMemo(
    () => ({
      mode,
      isSequentialMode,
      isRandomMode,
      language,
      setLanguage: setLanguageSafe,
      currentQuestionId,
      currentQuestion,
      isLoadingCurrent,
      loadingMap,
      lastError,
      sequentialQuestionId,
      sequentialQuestionNumber,
      sequentialEndReached,
      hasPreviousSequential,
      hasNextSequential,
      startSequential,
      startRandom,
      goToNextSequential,
      goToPreviousSequential,
      goToNextRandom,
      goToPreviousRandom,
      hasPreviousRandom,
      hasNextRandom,
      randomHistory,
      randomIndex,
      randomExhausted,
      randomRemainingEstimate,
      randomCompletionReached,
      totalQuestionsEstimate,
      resetSession,
      setQuestionById,
      ensureQuestionLoaded,
    }),
    [
      mode,
      isSequentialMode,
      isRandomMode,
      language,
      setLanguageSafe,
      currentQuestionId,
      currentQuestion,
      isLoadingCurrent,
      loadingMap,
      lastError,
      sequentialQuestionId,
      sequentialQuestionNumber,
      sequentialEndReached,
      hasPreviousSequential,
      hasNextSequential,
      startSequential,
      startRandom,
      goToNextSequential,
      goToPreviousSequential,
      goToNextRandom,
      goToPreviousRandom,
      hasPreviousRandom,
      hasNextRandom,
      randomHistory,
      randomIndex,
      randomExhausted,
      randomRemainingEstimate,
      randomCompletionReached,
      totalQuestionsEstimate,
      resetSession,
      setQuestionById,
      ensureQuestionLoaded,
    ],
  )

  return <QuizContext.Provider value={value}>{children}</QuizContext.Provider>
}

export function useQuiz() {
  const context = useContext(QuizContext)
  if (context == null) {
    throw new Error('useQuiz must be used within a QuizProvider')
  }
  return context
}
