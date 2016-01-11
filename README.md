# numerals_jp

[![Build Status](https://travis-ci.org/paralleltree/numerals_jp.svg?branch=master)](https://travis-ci.org/paralleltree/numerals_jp)

A number converting library for japanese.

This library converts between japanese numerals which are often used  
(i.e., from 0 to 9,999,999,999,999,999) and arabic numerals.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'numerals_jp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numerals_jp

## Usage

```ruby
require 'numerals_jp'
```

### Convert from japanese numerals
```ruby
"三十六".convert_from_jp_nums
# => "36"
```

This method just replaces japanese numerals with arabic numerals.

```ruby
"十二月三十一日".convert_from_jp_nums
# => "12月31日"
```

## Roadmap

  * Support converting from japanese numerals without factor units.
  * Support converting from arabic numerals with japanese factor units.
  * Support converting from integer to japanese numerals.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paralleltree/numerals_jp.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

