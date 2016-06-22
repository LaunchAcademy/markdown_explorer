require "sinatra"

class MarkdownExplorer::Application < Sinatra::Base
  get "/" do
    @files = Files.new(Dir.pwd)
    erb :index
  end
end
