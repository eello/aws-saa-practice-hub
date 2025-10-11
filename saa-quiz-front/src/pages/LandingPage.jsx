import { useNavigate } from 'react-router-dom'
import { useQuiz } from '../context/QuizContext.jsx'

function LandingPage() {
  const navigate = useNavigate()
  const {
    startSequential,
    startRandom,
    sequentialQuestionId,
    sequentialQuestionNumber,
    resetSession,
  } = useQuiz()

  const hasProgress = sequentialQuestionId != null

  const handleStartSequential = (options) => {
    startSequential(options)
    navigate('/quiz')
  }

  return (
    <main className="landing">
      <section className="landing__panel">
        <span className="landing__badge">AWS SAA 연습</span>
        <h1 className="landing__title">솔루션스 아키텍트 연습 문제</h1>
        <p className="landing__subtitle">
          공식 시험을 준비하면서 문제를 순차적으로 또는 랜덤하게 풀어볼 수 있습니다.
        </p>

        {hasProgress ? (
          <div className="landing__progress">
            <div>
              <span className="landing__progress-label">마지막으로 풀던 문제</span>
              <strong className="landing__progress-value">
                {sequentialQuestionNumber != null
                  ? `#${sequentialQuestionNumber}`
                  : `ID ${sequentialQuestionId}`}
              </strong>
            </div>
            <button type="button" className="landing__reset" onClick={resetSession}>
              기록 초기화
            </button>
          </div>
        ) : null}

        <div className="landing__modes">
          <button
            type="button"
            className="landing__mode landing__mode--sequential"
            onClick={() => handleStartSequential({ resetToFirst: false })}
          >
            <span className="landing__mode-title">순차 풀이</span>
            <span className="landing__mode-desc">1번부터 차례대로 문제를 풀어보세요.</span>
            <span className="landing__mode-meta">
              {hasProgress && sequentialQuestionNumber != null
                ? `현재 #${sequentialQuestionNumber}`
                : '1번부터 시작'}
            </span>
          </button>

          <button
            type="button"
            className="landing__mode landing__mode--random"
            onClick={() => {
              startRandom()
              navigate('/quiz')
            }}
          >
            <span className="landing__mode-title">랜덤 풀이</span>
            <span className="landing__mode-desc">아직 풀지 않은 문제를 무작위로 제공합니다.</span>
          </button>
        </div>

        {hasProgress ? (
          <button
            type="button"
            className="landing__restart"
            onClick={() => handleStartSequential({ resetToFirst: true })}
          >
            순차 풀이를 처음부터 다시 시작
          </button>
        ) : null}
      </section>
    </main>
  )
}

export default LandingPage
