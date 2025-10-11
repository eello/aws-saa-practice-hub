const API_BASE_URL = 'https://api.eello.site/saa/quiz'

export class QuestionNotFoundError extends Error {
  constructor(message = 'Question not found') {
    super(message)
    this.name = 'QuestionNotFoundError'
  }
}

export async function fetchQuestionById(id) {
  const numericId = Number(id)
  if (!Number.isFinite(numericId) || numericId < 1) {
    throw new Error('Invalid question id')
  }

  const response = await fetch(`${API_BASE_URL}/${numericId}`)

  if (response.status === 404) {
    throw new QuestionNotFoundError(`Question ${numericId} not found`)
  }

  if (!response.ok) {
    throw new Error(`Failed to fetch question ${numericId}: ${response.status}`)
  }

  return response.json()
}
