# Pry::Loudmouth

Pry-Loudmouth is a dead simple pry plugin.  It's actually just 7 lines from my .pryrc that I thought was worth gemifying.  Here's what it does:

1. Terminal bell when a pry session starts
2. Changes your process name to "pry" when the session starts
3. Resets the process name to "ruby" when it ends.

(The process name appears in your terminal or tmux title.)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pry-loudmouth'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pry-loudmouth

## Local installation

If you're really opinionated about not adding extra cruft to your Gemfile, try this instead.

Install pry-loudmouth
    $ gem install pry-loudmouth

And add this to your .pryrc:

```ruby
require 'rubygems'

Gem.path.each do |gemset|
  $:.concat(Dir.glob("#{gemset}/gems/pry-*/lib"))
end if defined?(Bundler)
$:.uniq!

require 'pry-loudmouth'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

