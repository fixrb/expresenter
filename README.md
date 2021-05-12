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

Assuming that an expectation is an assertion that is either `true` or `false`,
qualifying it with `MUST`, `SHOULD` and `MAY`, we can draw up several scenarios:

| Requirement levels        | **MUST** | **SHOULD** | **MAY** |
| ------------------------- | -------- | ---------- | ------- |
| Implemented & Matched     | `true`   | `true`     | `true`  |
| Implemented & Not matched | `false`  | `true`     | `false` |
| Implemented & Exception   | `false`  | `false`    | `false` |
| Not implemented           | `false`  | `false`    | `true`  |

Then,

* for a `true` assertion, a `Expresenter::Pass` instance can be returned;
* for a `false` assertion, a `Expresenter::Fail` exception can be raised.

Both class share a same `Common` interface.

Passed expectations can be classified as:

* ✅ success
* ⚠️ warning
* 💡 info

Failed expectations can be classified as:

* ❌ failure
* 💥 error

### Instantiation

The following parameters are required to instantiate the result:

* `actual`: Returned value by the challenged subject.
* `error`: Any possible raised exception.
* `expected`: The expected value.
* `got`: The result of the boolean comparison between the actual value and the expected value through the matcher.
* `negate`: Evaluated to a negative assertion?
* `valid`: Report if the test was `true` or `false`.
* `matcher`: The symbol representing a matcher.
* `level`: The requirement level (`:MUST`, `:SHOULD` or `:MAY`).

#### Examples

A passed expectation:

```ruby
result = Expresenter.call(true).new(actual: "FOO", error: nil, expected: "foo", got: true, negate: true, valid: true, matcher: :eql, level: :MUST)

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

A failed expectation:

```ruby
result = Expresenter.call(false).new(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)

actual.failed? # => true
actual.failure? # => false
actual.info? # => false
actual.warning? # => false
actual.to_sym # => :error
actual.char # => "E"
actual.emoji # => "💥"
actual.passed? # => false
actual.negate? # => true
actual.error? # => true
actual.success? # => true
actual.valid? # => true
actual.inspect # => "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
actual.definition # => "eql 42"
actual.maybe_negate # => " not"
actual.summary # => "BOOM"
actual.colored_char # => "\e[32mE\e[0m"
actual.colored_string # => "\e[32mException: BOOM.\e[0m"
actual.message # => "Exception: BOOM."
actual.to_s # => "Exception: BOOM."
actual.titre # => "Exception"
```

### Return or Raise

To return the results which pass, and to raise the results which fail, the `with` method is available.

In this example, the result passes, the instance is therefore returned:

```ruby
Expresenter.call(true).with(actual: "FOO", error: nil, expected: "foo", got: true, negate: true, valid: true, matcher: :eql, level: :MUST) # => Expresenter::Pass(actual: "FOO", error: nil, expected: "foo", got: true, matcher: :eql, negate: true, level: :MUST, valid: true)
```

In this example, the result fails, so the exception is raised:

```ruby
Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)
```

> Traceback (most recent call last):
>         3: from ./bin/console:7:in `<main>'
>         2: from (irb):1
>         1: from /Users/cyril/github/fixrb/expresenter/lib/expresenter/fail.rb:12:in `with'
> Expresenter::Fail (Exception: BOOM.)

### More Examples

A full list of unit tests can be viewed (and executed) here:
[./test.rb](https://github.com/fixrb/expresenter/blob/main/test.rb)

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
