import { Navigate, Route, Routes } from 'react-router-dom'
import './App.css'
import LandingPage from './pages/LandingPage.jsx'
import QuizPage from './pages/QuizPage.jsx'

function App() {
  return (
    <div className="app-shell">
      <Routes>
        <Route path="/" element={<LandingPage />} />
        <Route path="/quiz" element={<QuizPage />} />
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>
    </div>
  )
}

export default App
