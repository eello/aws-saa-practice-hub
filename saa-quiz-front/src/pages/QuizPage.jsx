import { useCallback, useEffect, useMemo, useState } from 'react'
import { useRef } from 'react'
import { useNavigate } from 'react-router-dom'
import LanguageToggle from '../components/LanguageToggle.jsx'
import MarkdownBlock from '../components/MarkdownBlock.jsx'
import { useQuiz } from '../context/QuizContext.jsx'

function QuizPage() {
  const navigate = useNavigate()
  const {
    mode,
    isSequentialMode,
    isRandomMode,
    language,
    setLanguage,
    currentQuestion,
    currentQuestionId,
    isLoadingCurrent,
    lastError,
    hasNextSequential,
    hasPreviousSequential,
    goToNextSequential,
    goToPreviousSequential,
    startSequential,
    sequentialEndReached,
    setQuestionById,
    totalQuestionsEstimate,
    goToNextRandom,
    goToPreviousRandom,
    hasNextRandom,
    hasPreviousRandom,
    randomExhausted,
    randomCompletionReached,
  } = useQuiz()

  const [selectedChoiceIds, setSelectedChoiceIds] = useState([])
  const [isEvaluated, setIsEvaluated] = useState(false)
  const [isAnswerCorrect, setIsAnswerCorrect] = useState(false)
  const [jumpValue, setJumpValue] = useState('')
  const [jumpError, setJumpError] = useState('')
  const pageRef = useRef(null)

  useEffect(() => {
    if (mode == null) {
      startSequential({ resetToFirst: false })
      return
    }

    if (!isSequentialMode) return

    if (currentQuestionId == null) {
      startSequential({ resetToFirst: false })
    }
  }, [mode, isSequentialMode, currentQuestionId, startSequential])

  useEffect(() => {
    if (!isSequentialMode) {
      setJumpError('')
    }
  }, [isSequentialMode])

  const localizedQuestion = useMemo(() => {
    if (!currentQuestion) return null
    const text = currentQuestion.question?.[language] ?? currentQuestion.question?.kr ?? ''
    return text
  }, [currentQuestion, language])

  const localizedChoices = useMemo(() => {
    if (!currentQuestion) return []
    return currentQuestion.choices?.map((choice) => ({
      ...choice,
      displayText: choice.text?.[language] ?? choice.text?.kr ?? '',
    }))
  }, [currentQuestion, language])

  const correctChoiceIds = useMemo(() => {
    if (!currentQuestion) return []
    return (currentQuestion.answer?.choice_ids ?? []).map((id) => Number(id))
  }, [currentQuestion])

  const correctChoiceIdSet = useMemo(() => new Set(correctChoiceIds), [correctChoiceIds])
  const requiredSelectionCount = correctChoiceIds.length

  const errorMessage = useMemo(() => {
    if (!lastError) return null
    if (lastError.message) return lastError.message
    return language === 'en'
      ? 'An unexpected issue occurred while loading the question.'
      : '문제를 불러오는 중 예상치 못한 문제가 발생했어요.'
  }, [lastError, language])

  useEffect(() => {
    if (!pageRef.current) return
    pageRef.current.scrollIntoView({ behavior: 'smooth', block: 'start' })
  }, [currentQuestionId])

  useEffect(() => {
    setSelectedChoiceIds([])
    if (requiredSelectionCount === 0) {
      setIsEvaluated(true)
      setIsAnswerCorrect(true)
    } else {
      setIsEvaluated(false)
      setIsAnswerCorrect(false)
    }
  }, [currentQuestionId, requiredSelectionCount])

  useEffect(() => {
    if (!isSequentialMode) return
    if (currentQuestionId != null) {
      setJumpValue(String(currentQuestionId))
    }
  }, [isSequentialMode, currentQuestionId])

  const evaluateSelection = useCallback(
    (selection) => {
      if (!currentQuestion) return
      if (requiredSelectionCount === 0) {
        setIsEvaluated(true)
        setIsAnswerCorrect(true)
        return
      }

      const selectionSet = new Set(selection)
      let isAllCorrect = selection.length === correctChoiceIds.length
      if (isAllCorrect) {
        for (const id of correctChoiceIds) {
          if (!selectionSet.has(id)) {
            isAllCorrect = false
            break
          }
        }
      }

      if (isAllCorrect) {
        setIsAnswerCorrect(true)
      } else {
        setIsAnswerCorrect(false)
      }

      setIsEvaluated(true)
    },
    [currentQuestion, correctChoiceIds, requiredSelectionCount],
  )

  const handleChoiceToggle = useCallback(
    (choiceId) => {
      if (requiredSelectionCount === 0) return

      setSelectedChoiceIds((prev) => {
        const alreadySelected = prev.includes(choiceId)
        let nextSelection

        if (alreadySelected) {
          nextSelection = prev.filter((id) => id !== choiceId)
        } else {
          if (prev.length >= requiredSelectionCount) {
            return prev
          }
          nextSelection = [...prev, choiceId]
        }

        if (requiredSelectionCount === 0) {
          setIsEvaluated(true)
          setIsAnswerCorrect(true)
        } else if (nextSelection.length === requiredSelectionCount) {
          evaluateSelection(nextSelection)
        } else {
          setIsEvaluated(false)
          setIsAnswerCorrect(false)
        }

        return nextSelection
      })
    },
    [evaluateSelection, requiredSelectionCount],
  )

  const handleJumpInputChange = (event) => {
    setJumpValue(event.target.value)
    if (jumpError) {
      setJumpError('')
    }
  }

  const handleJumpSubmit = (event) => {
    event.preventDefault()
    const trimmed = jumpValue.trim()
    if (!trimmed) {
      setJumpError('문제 번호를 입력해 주세요.')
      return
    }
    const numeric = Number(trimmed)
    if (!Number.isInteger(numeric) || numeric < 1) {
      setJumpError('유효한 문제 번호를 입력해 주세요.')
      return
    }
    if (numeric > totalQuestionsEstimate) {
      setJumpError(`1부터 ${totalQuestionsEstimate} 사이의 번호만 이동할 수 있어요.`)
      return
    }
    setJumpError('')
    setJumpValue(String(numeric))
    setQuestionById(numeric)
  }

  if (lastError && !isLoadingCurrent && !currentQuestion) {
    return (
      <main className="quiz">
        <div className="quiz__empty">
          <h2>문제를 불러오는 데 실패했어요.</h2>
          <p>{lastError.message ?? '잠시 후 다시 시도해 주세요.'}</p>
          <button type="button" onClick={() => navigate('/')}>모드 선택으로 돌아가기</button>
        </div>
      </main>
    )
  }

  if (!currentQuestion) {
    return (
      <main className="quiz">
        <div className="quiz__empty">
          <h2>문제를 불러오는 중이에요…</h2>
          <p>잠시만 기다려 주세요.</p>
        </div>
      </main>
    )
  }

  const explanation = currentQuestion.explanation ?? ''
  const modeLabel = isSequentialMode ? '순차 풀이' : isRandomMode ? '랜덤 풀이' : '문제 풀이'

  const handleBackToLanding = () => {
    navigate('/')
  }

  const showExplanation = isEvaluated && Boolean(explanation)

  const getChoiceStatusClasses = (choiceId, isSelected) => {
    if (!isEvaluated) {
      const base = ['choice-list__item--selectable']
      if (isSelected) base.push('choice-list__item--selected')
      return base
    }

    const classes = []
    const isCorrectChoice = correctChoiceIdSet.has(choiceId)

    if (isSelected && isCorrectChoice) classes.push('choice-list__item--user-correct')
    if (isSelected && !isCorrectChoice) classes.push('choice-list__item--user-wrong')
    if (!isSelected && isCorrectChoice && !isAnswerCorrect) classes.push('choice-list__item--correct-answer')
    return classes
  }

  return (
    <main className="quiz" ref={pageRef}>
      <header className="quiz__header">
        <button type="button" className="quiz__back" onClick={handleBackToLanding}>
          모드 선택으로
        </button>
        <div className="quiz__header-info">
          <span className="quiz__mode-chip">{modeLabel}</span>
        </div>
        <LanguageToggle value={language} onChange={setLanguage} />
      </header>

      {errorMessage && currentQuestion ? (
        <div className="quiz__alert" role="status">{errorMessage}</div>
      ) : null}

      <section className="question-card">
        <header className="question-card__header">
          <h2 className="question-card__title">문제 #{currentQuestion.id}</h2>
          {isSequentialMode ? (
            <form className="question-card__jump" onSubmit={handleJumpSubmit}>
              <input
                id="quiz-jump-input"
                type="number"
                min="1"
                step="1"
                inputMode="numeric"
                pattern="\\d*"
                aria-label="문제 번호"
                className="question-card__jump-input"
                value={jumpValue}
                onChange={handleJumpInputChange}
              />
              <span className="question-card__jump-total">/ {totalQuestionsEstimate}</span>
              <button type="submit" className="question-card__jump-button">이동</button>
            </form>
          ) : null}
        </header>

        {isSequentialMode && jumpError ? (
          <p className="question-card__jump-error">{jumpError}</p>
        ) : null}

        <div className="question-card__body">
          <MarkdownBlock text={localizedQuestion} className="question-card__question" />

          <div className="question-card__section">
            <ul className="choice-list">
              {localizedChoices.map((choice) => {
                const numericId = Number(choice.id)
                const isSelected = selectedChoiceIds.includes(numericId)
                const className = [
                  'choice-list__item',
                  ...getChoiceStatusClasses(numericId, isSelected),
                ]
                  .filter(Boolean)
                  .join(' ')

                return (
                  <li
                    key={choice.id}
                    className={className}
                    role="checkbox"
                    tabIndex={isEvaluated ? -1 : 0}
                    aria-checked={isSelected}
                    onClick={() => handleChoiceToggle(numericId)}
                    onKeyDown={(event) => {
                      if (event.key === ' ' || event.key === 'Enter') {
                        event.preventDefault()
                        handleChoiceToggle(numericId)
                      }
                    }}
                  >
                    <span className="choice-list__label">{choice.label}. </span>
                    <MarkdownBlock text={choice.displayText} className="choice-list__text" inline />
                  </li>
                )
              })}
            </ul>
            {!isEvaluated && requiredSelectionCount > 0 ? (
              <p className="choice-hint">정답은 {requiredSelectionCount}개입니다. 보기 {requiredSelectionCount}개를 선택하면 채점이 진행됩니다.</p>
            ) : null}
          </div>

          {showExplanation ? (
            <div className="question-card__section">
              <h3 className="question-card__section-title">해설</h3>
              <MarkdownBlock text={explanation} className="question-card__explanation" />
            </div>
          ) : null}
        </div>
      </section>

      <footer className="quiz__footer">
        {isSequentialMode ? (
          <div className="quiz__nav">
            <button
              type="button"
              className="quiz__nav-button"
              onClick={goToPreviousSequential}
              disabled={!hasPreviousSequential || isLoadingCurrent}
            >
              이전 문제
            </button>
            <button
              type="button"
              className="quiz__nav-button quiz__nav-button--accent"
              onClick={goToNextSequential}
              disabled={!hasNextSequential || isLoadingCurrent}
            >
              다음 문제
            </button>
          </div>
        ) : null}

        {isRandomMode ? (
          <div className="quiz__nav">
            <button
              type="button"
              className="quiz__nav-button"
              onClick={goToPreviousRandom}
              disabled={!hasPreviousRandom || isLoadingCurrent}
            >
              이전 문제
            </button>
            <button
              type="button"
              className="quiz__nav-button quiz__nav-button--accent"
              onClick={goToNextRandom}
              disabled={!hasNextRandom || isLoadingCurrent}
            >
              다른 문제
            </button>
          </div>
        ) : null}

        {isSequentialMode && sequentialEndReached ? (
          <span className="quiz__end-indicator">마지막 문제까지 도달했어요.</span>
        ) : null}

        {isRandomMode && randomCompletionReached ? (
          <span className="quiz__end-indicator">모든 문제를 확인했습니다.</span>
        ) : null}
      </footer>

   </main>
  )
}

export default QuizPage
