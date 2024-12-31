# Expresenter

[![Version](https://img.shields.io/github/v/tag/fixrb/expresenter?label=Version&logo=github)](https://github.com/fixrb/expresenter/tags)
[![Yard documentation](https://img.shields.io/badge/Yard-documentation-blue.svg?logo=github)](https://rubydoc.info/github/fixrb/expresenter/main)
[![License](https://img.shields.io/github/license/fixrb/expresenter?label=License&logo=github)](https://github.com/fixrb/expresenter/raw/main/LICENSE.md)

> A Ruby gem for presenting test expectation results with rich formatting and requirement level support. Perfect for test frameworks and assertion libraries that need flexible result reporting with support for MUST/SHOULD/MAY requirement levels.

## Features

- Rich test result presentation with:
  - Colored output for different result types (success, warning, info, failure, error)
  - Single-character indicators for compact output (".", "W", "I", "F", "E")
  - Emoji support for visual feedback (✅, ⚠️, 💡, ❌, 💥)
  - ANSI-colored formatted messages with bold titles
- Support for RFC 2119 requirement levels (MUST/SHOULD/MAY)
- Comprehensive result classification:
  - Success: Test passed as expected (green)
  - Warning: Non-critical issues, typically for SHOULD/MAY requirements (yellow)
  - Info: Additional information about passing tests (blue)
  - Failure: Test failed but no exception occurred (purple)
  - Error: Unexpected exceptions during test execution (red)
- Built-in support for negative assertions
- Detailed error reporting with captured exceptions
- Clean integration with test frameworks via simple API

## Installation

Add this line to your application's Gemfile:

```ruby
gem "expresenter"
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install expresenter
```

## Usage

### Basic Example

```ruby
# Create a successful test result
result = Expresenter.call(true).new(
  actual:     "foo",
  definition: 'eq "foo"',
  error:      nil,
  got:        true,
  negate:     false,
  level:      :MUST
)

result.passed?    # => true
result.to_sym     # => :success
result.char       # => "."
result.emoji      # => "✅"
result.to_s       # => 'Success: expected "foo" to eq "foo".'
```

### Handling Different Result Types

```ruby
# Warning example (non-critical requirement)
warning = Expresenter.call(true).new(
  actual:     "foo",
  definition: "be_optimized",
  error:      nil,
  got:        false, # triggers warning state
  negate:     false,
  level:      :SHOULD
)

warning.warning? # => true
warning.char     # => "W"
warning.emoji    # => "⚠️"

# Failure example with exception
begin
  Expresenter.call(false).with(
    actual:     42,
    definition: "eq 43",
    error:      nil,
    got:        false,
    negate:     false,
    level:      :MUST
  )
rescue Expresenter::Fail => e
  e.failure? # => true
  e.char        # => "F"
  e.emoji       # => "❌"
  e.to_s        # => "Failure: expected 42 to eq 43."
end
```

### Using Requirement Levels

Expresenter supports RFC 2119 requirement levels:

- `:MUST` - Critical requirements that must be satisfied
- `:SHOULD` - Recommended requirements that should be satisfied when possible
- `:MAY` - Optional requirements that may be satisfied

```ruby
# SHOULD requirement with warning
result = Expresenter.call(true).new(
  actual:     response,
  definition: "have_fast_response_time",
  error:      nil,
  got:        false,
  negate:     false,
  level:      :SHOULD
)

result.warning? # => true
```

### Working with Negative Assertions

```ruby
# Negative assertion example
result = Expresenter.call(true).new(
  actual:     "foo",
  definition: 'eq "bar"',
  error:      nil,
  got:        true,
  negate:     true, # indicates negative assertion
  level:      :MUST
)

result.negate?  # => true
result.to_s     # => 'Success: expected "foo" not to eq "bar".'
```

## Integration

Expresenter can be easily integrated into test frameworks and assertion libraries. It provides a simple API for creating and handling test results with rich formatting and requirement levels.

Example integration with a test framework:

```ruby
def assert(actual, matcher, level: :MUST)
  result = matcher.match(actual)

  Expresenter.call(result.success?).with(
    actual:     actual,
    definition: matcher.description,
    error:      result.error,
    got:        result.matched?,
    negate:     false,
    level:      level
  )
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fixrb/expresenter. This project is intended to be a safe, welcoming space for collaboration.

## License

The [gem](https://rubygems.org/gems/expresenter) is available as open source under the terms of the [MIT License](https://github.com/fixrb/expresenter/raw/main/LICENSE.md).

## Sponsors

This project is sponsored by [Sashité](https://sashite.com/)
