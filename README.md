# Bicorn

Bicorn can output STDOUT and STDERR with other file easily.

## Installation

Add this line to your application's Gemfile:

    gem 'bicorn'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bicorn

## Usage

This is a sample code.

```ruby
require 'bicorn'

out_file = File.open("out.log", "a")
err_file = File.open("err.log", "a" )

$std_out = Bicorn.out(out_file)
$std_err = Bicorn.err(err_file)

puts 'hoge'
raise 'fuga'

```

## Contributing

1. Fork it ( http://github.com/Konboi/bicorn/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
