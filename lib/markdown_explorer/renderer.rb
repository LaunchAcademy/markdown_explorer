require "redcarpet"

class MarkdownExplorer::Renderer
  attr_reader :result

  def initialize(text)
    @text = text
    render
  end

  def render
    @result = markdown.render(@text)
  end

  private

  def markdown
    @_markdown ||= Redcarpet::Markdown.new(html_renderer, extensions)
  end

  def html_renderer
    Redcarpet::Render::HTML
  end

  def extensions
    {
      no_intra_emphasis: true,
      tables: true,
      fenced_code_blocks: true,
      autolink: true,
      strikethrough: true,
      superscript: true,
      underline: true
    }
  end
end
