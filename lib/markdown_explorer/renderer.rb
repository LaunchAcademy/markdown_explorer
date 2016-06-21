require "redcarpet"

class MarkdownExplorer::Renderer
  attr_reader :markup

  def initialize(text)
    @text = text
    render
  end

  private

  def render
    @markup = markdown.render(@text)
  end

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
