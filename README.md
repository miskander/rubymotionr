# Rubymotionr

## Installation

Add this line to your application's Gemfile:

    gem 'rubymotionr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubymotionr

## Usage

``` ruby
repo = Rubymotionr::Rep.new("/absolute/path/to/repo")
```

This will return the repo object with projects (repo.projects) within it. Each project has an attribute path (i.e repo.projects.path) which is a path to the root of a RubyMotion project.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
