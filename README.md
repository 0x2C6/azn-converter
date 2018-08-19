# AZNConverter

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/azn_converter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'azn_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install azn_converter

## Usage

At below you see basic usage. By default it converts from USD

```ruby
  require 'azn_converter'

  5.to_azn #=> 8.5 with current currency
```

You can specify currency yourself

```ruby
  5.to_azn(current: 0.78) #=> 3.900...
```

By default we use to convert USD. It can be change by `:from` parameter

```ruby
  5.to_azn(from: :eur) #=> 9.68
```

Use `:sign` to add manat symbol to end of the returned value

```ruby
  5.to_azn(sign: true) #=> "8.5 ₼"
```

You can get word for of the conversion with `:words` option

```ruby
  5.to_azn(words: true) #=> "səkkiz manat əlli qəpik"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/0x2C6/azn-converter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
