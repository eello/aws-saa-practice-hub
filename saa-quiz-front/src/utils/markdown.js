export function normalizeMarkdown(markdownText) {
  if (!markdownText) return ''

  return markdownText
    .replace(/\r\n?/g, '\n')
    .replace(/\n\s*\n(?=\s*[-*+]\s)/g, '\n')
    .replace(/\n{3,}/g, '\n\n')
    .trim()
}
