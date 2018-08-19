# AZNConverter [![Gem Version](https://badge.fury.io/rb/azn_converter.svg)](https://badge.fury.io/rb/azn_converter) [![Build Status](https://travis-ci.org/0x2C6/azn-converter.svg?branch=master)](https://travis-ci.org/0x2C6/azn-converter)

Easy to use AZN converter.
You can convert any currency to AZN and its word form.

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

You can specify currency yourself if you doesn't have internet connection

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
