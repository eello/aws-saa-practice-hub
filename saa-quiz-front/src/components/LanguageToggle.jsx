function LanguageToggle({ value, onChange }) {
  const handleSelect = (nextLanguage) => {
    if (nextLanguage === value) return
    onChange?.(nextLanguage)
  }

  return (
    <div className="language-toggle" role="group" aria-label="문제 언어 선택">
      <button
        type="button"
        className={['language-toggle__button', value === 'kr' && 'language-toggle__button--active']
          .filter(Boolean)
          .join(' ')}
        onClick={() => handleSelect('kr')}
      >
        한글
      </button>
      <button
        type="button"
        className={['language-toggle__button', value === 'en' && 'language-toggle__button--active']
          .filter(Boolean)
          .join(' ')}
        onClick={() => handleSelect('en')}
      >
        English
      </button>
    </div>
  )
}

export default LanguageToggle
