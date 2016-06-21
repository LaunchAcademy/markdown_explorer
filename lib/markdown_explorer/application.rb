require "sinatra"

class MarkdownExplorer::Application < Sinatra::Base
  get "/" do
    "Hello from the MarkdownExplorer Application!"
  end
end
