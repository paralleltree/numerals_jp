# numerals_jp

[![Gem Version](https://badge.fury.io/rb/numerals_jp.svg)](https://badge.fury.io/rb/numerals_jp)
[![Build Status](https://travis-ci.org/paralleltree/numerals_jp.svg?branch=master)](https://travis-ci.org/paralleltree/numerals_jp)

A numerals library for Japanese

This library converts between Arabic numerals and Japanese numerals  
which are often used(i.e., from 1 to 9,999,999,999,999,999).

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

### Convert from Japanese numerals
```ruby
"三十六".jp_to_num
# => "36"
```

This method just replaces Japanese numerals with Arabic numerals.

```ruby
"十二月三十一日".jp_to_num
# => "12月31日"
```

### Convert to Japanese numerals
```ruby
106.to_jp
# => "百六"

19937.to_jp
# => "一万九千九百三十七"
```

## Roadmap

Done:

  * Support converting from integer to Japanese numerals.

Pending:

  * Support converting from Japanese numerals without factor units.
  * Support converting from Arabic numerals with Japanese factor units.

## Other Integrations

[![Code Climate](https://codeclimate.com/github/paralleltree/numerals_jp/badges/gpa.svg)](https://codeclimate.com/github/paralleltree/numerals_jp)
[![Coverage Status](https://coveralls.io/repos/paralleltree/numerals_jp/badge.svg?branch=master&service=github)](https://coveralls.io/github/paralleltree/numerals_jp?branch=master)
[![Inline docs](http://inch-ci.org/github/paralleltree/numerals_jp.svg?branch=master)](http://inch-ci.org/github/paralleltree/numerals_jp)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/paralleltree/numerals_jp.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

