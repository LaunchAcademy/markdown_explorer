require "tmpdir"

class MarkdownExplorer::Files
  EXTENSIONS = %w(md mdown markdown)

  attr_reader :path

  def initialize(path)
    @path = path
    find_files
  end

  def to_a
    @collection
  end

  private

  def find_files
    @collection = Dir[search_string]
  end

  def search_string
    File.join(path, "**", "*.{#{extensions}}")
  end

  def extensions
    EXTENSIONS.join(",")
  end
end
