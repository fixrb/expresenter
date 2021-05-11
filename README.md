# Expresenter

[![Build Status](https://api.travis-ci.org/fixrb/expresenter.svg?branch=main)][travis]
[![Code Climate](https://codeclimate.com/github/fixrb/expresenter/badges/gpa.svg)][codeclimate]
[![Gem Version](https://badge.fury.io/rb/expresenter.svg)][gem]
[![Inline docs](https://inch-ci.org/github/fixrb/expresenter.svg?branch=main)][inchpages]
[![Documentation](https://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

> Expectation result presenter.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "expresenter"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install expresenter

## Usage

```ruby
result = Expresenter.call(true, actual: "FOO", error: nil, expected: "foo", got: true, negate: true, valid: true, matcher: :eql, level: :MUST)

result.failed? # => false
result.failure? # => false
result.info? # => false
result.warning? # => false
result.to_sym # => :success
result.char # => "."
result.emoji # => "✅"
result.passed? # => true
result.negate? # => true
result.error? # => false
result.success? # => true
result.valid? # => true
result.inspect # => "Expresenter::Pass(actual: \"FOO\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
result.definition # => "eql \"foo\""
result.maybe_negate # => " not"
result.summary # => "expected \"FOO\" not to eql \"foo\""
result.colored_char # => "\e[32m.\e[0m"
result.colored_string # => "\e[32mSuccess: expected \"FOO\" not to eql \"foo\".\e[0m"
result.message # => "Success: expected \"FOO\" not to eql \"foo\"."
result.to_s # => "Success: expected \"FOO\" not to eql \"foo\"."
result.titre # => "Success"
```

## Contact

* Home page: https://github.com/fixrb/expresenter
* Bugs/issues: https://github.com/fixrb/expresenter/issues

## Rubies

* [MRI](https://www.ruby-lang.org/)
* [Rubinius](https://rubinius.com/)
* [JRuby](https://www.jruby.org/)

## Versioning

__Expresenter__ follows [Semantic Versioning 2.0](https://semver.org/).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

***

<p>
  This project is sponsored by:<br />
  <a href="https://sashite.com/"><img
    src="https://github.com/fixrb/expresenter/raw/main/img/sashite.png"
    alt="Sashite" /></a>
</p>

[gem]: https://rubygems.org/gems/expresenter
[travis]: https://travis-ci.org/fixrb/expresenter
[codeclimate]: https://codeclimate.com/github/fixrb/expresenter
[inchpages]: https://inch-ci.org/github/fixrb/expresenter
[rubydoc]: https://rubydoc.info/gems/expresenter/frames
