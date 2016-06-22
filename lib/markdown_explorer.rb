require "markdown_explorer/version"

module MarkdownExplorer
  autoload :Application, "markdown_explorer/application"
  autoload :Files, "markdown_explorer/files"
  autoload :Renderer, "markdown_explorer/renderer"

  # http://stackoverflow.com/a/10133837/2675670
  def self.root
    File.dirname __dir__
  end
end
