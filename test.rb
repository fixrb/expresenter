#!/usr/bin/env ruby
# frozen_string_literal: true

require "simplecov"

::SimpleCov.command_name "Brutal test suite"
::SimpleCov.start

require "./lib/expresenter"

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Success: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Success: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Success: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Success: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Success: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Success: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Success: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Success: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Success: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Success: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Success: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Success: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Warning: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Warning: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Warning: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Warning: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Warning: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Warning: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Warning: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Warning: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Warning: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Warning: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Warning: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Warning: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Info: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Info: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Info: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Info: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Info: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Info: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Info: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Info: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Info: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Info: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Info: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Info: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "foo",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of \"foo\".\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   "bar",
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql \"foo\".\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"bar\", error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql \"foo\""
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql \"foo\"."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    Exception.new("BOOM"),
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: #<Exception: BOOM>, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Success: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: ZeroDivisionError."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      true,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: true, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Warning: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: ZeroDivisionError."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      false,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: false, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Info: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: ZeroDivisionError."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MUST"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :SHOULD"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :be_an_instance_of,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :be_an_instance_of, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   true,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: true, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:   ZeroDivisionError.new,
      error:    nil,
      expected: "foo",
      got:      nil,
      negate:   false,
      matcher:  :eql,
      level:    :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql \"foo\""
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: #<ZeroDivisionError: ZeroDivisionError>, error: nil, expected: \"foo\", got: nil, matcher: :eql, negate: false, level: :MAY"
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false
