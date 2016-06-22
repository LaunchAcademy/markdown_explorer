require "sinatra"

class MarkdownExplorer::Application < Sinatra::Base
  get "/" do
    @files = MarkdownExplorer::Files.new(Dir.pwd)
    erb :index
  end

  get "/show" do
    markdown = File.read(params[:filename])
    @markup = MarkdownExplorer::Renderer.new(markdown).markup
    erb :show
  end
end
