RSpec.describe MarkdownExplorer::Files do
  let!(:path) { Dir.mktmpdir }

  let!(:md_filename) { File.join(path, "README.md") }
  let!(:md_file) do
    File.open(md_filename, "w") do |file|
      file.puts "# MarkdownExplorer\n\n"
      file.puts "View markdown files in your browser.\n\n"
      file.puts "Uses:\n * Sinatra\n * Redcarpet\n"
    end
  end

  let!(:txt_filename) { File.join(path, "notes.txt") }
  let!(:txt_file) do
    File.open(txt_filename, "w") do |file|
      file.puts "TODO:\n\n"
      file.puts "Get the Files class to work."
    end
  end

  let!(:files) { MarkdownExplorer::Files.new(path) }

  describe "#new" do
    it "takes a path name as an argument" do
      expect(files).to be_a(MarkdownExplorer::Files)
    end
  end

  describe "#to_a" do
    it "should include the markdown file" do
      expect(files.to_a).to include(md_filename)
    end

    it "should not include the text file" do
      expect(files.to_a).to_not include(txt_filename)
    end
  end

  after { FileUtils.remove_entry(path) }
end
