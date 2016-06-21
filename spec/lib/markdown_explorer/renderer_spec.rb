RSpec.describe MarkdownExplorer::Renderer do
  describe "#render" do
    it "returns markup" do
      markup = MarkdownExplorer::Renderer.new("# Document Title").render
      expect(markup).to eq("<h1>Document Title</h1>\n")
    end
  end
end
