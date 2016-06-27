# MarkdownExplorer

This Ruby Gem uses Sinatra and Redcarpet to allow you to CRUD markdown files on your local system.

Currently, only read functionality is implemented.


## Installation

$ gem install markdown_explorer


## Usage

Run the executable in a folder with markdown files.

```bash
$ mdexplore
```

Then, navigate to <http://localhost:8080> in your browser

![MarkdownExplorer](image.png)


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. `rackup` will allow you to run a development instance of the app. `rake -T` for other commands.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## TODO

* Create markdown files in browser
* Edit/update markdown files in the browser
* Delete markdown files from the browser
* Create a better navigation system (tree view)


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/LaunchAcademy/markdown_explorer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

