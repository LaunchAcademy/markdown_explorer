require "rubygems"
require "bundler"

Bundler.require

require_relative "./lib/markdown_explorer/application"
run MarkdownExplorer::Application
