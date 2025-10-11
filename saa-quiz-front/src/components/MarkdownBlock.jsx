import ReactMarkdown from 'react-markdown'
import remarkGfm from 'remark-gfm'
import { normalizeMarkdown } from '../utils/markdown.js'

function MarkdownBlock({ text, className, inline = false }) {
  const normalized = normalizeMarkdown(text)

  if (!normalized) {
    return null
  }

  const baseClass = inline ? 'markdown-inline' : 'markdown-block'
  const wrapperClassName = [baseClass, className].filter(Boolean).join(' ') || undefined
  const Wrapper = inline ? 'span' : 'div'

  const components = inline
    ? {
        p: ({ node, ...props }) => <span {...props} />,
        li: ({ node, ...props }) => <li {...props} />,
      }
    : {
        p: ({ node, ...props }) => <p {...props} />,
        li: ({ node, ...props }) => <li {...props} />,
      }

  return (
    <Wrapper className={wrapperClassName}>
      <ReactMarkdown remarkPlugins={[remarkGfm]} components={components}>
        {normalized}
      </ReactMarkdown>
    </Wrapper>
  )
}

export default MarkdownBlock
