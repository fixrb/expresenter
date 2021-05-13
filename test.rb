#!/usr/bin/env ruby
# frozen_string_literal: true

require "simplecov"

::SimpleCov.command_name "Brutal test suite"
::SimpleCov.start

require "./lib/expresenter"

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[32mE\e[0m"
raise if actual.colored_string != "\e[32mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[36mW\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: Exception.new("BOOM"), expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31mException: BOOM.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: #<Exception: BOOM>, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Exception: BOOM."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "BOOM"
raise if actual.titre != "Exception"
raise if actual.to_s != "Exception: BOOM."
raise if actual.to_sym != :error
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Success: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32mSuccess: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Success: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 42."
raise if actual.to_sym != :success
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: true, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[32mF\e[0m"
raise if actual.colored_string != "\e[32mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: true, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Warning: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != true
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33mWarning: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Warning: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 42."
raise if actual.to_sym != :warning
raise if actual.valid? != false
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: false, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: false, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Info: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[31mI\e[0m"
raise if actual.colored_string != "\e[31mInfo: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Pass(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Info: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 42."
raise if actual.to_sym != :info
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MUST, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MUST)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MUST, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :SHOULD)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :SHOULD, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: true)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: true, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" not to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: true, level: :MAY, valid: false)"
raise if actual.maybe_negate != " not"
raise if actual.message != "Failure: expected \"foo\" not to eql 42."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: true, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: true)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != true
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(actual: "foo", error: nil, expected: 42, got: nil, negate: false, valid: false, matcher: :eql, level: :MAY)
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35mFailure: expected \"foo\" to eql 42.\e[0m"
raise if actual.definition != "eql 42"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.inspect != "Expresenter::Fail(actual: \"foo\", error: nil, expected: 42, got: nil, matcher: :eql, negate: false, level: :MAY, valid: false)"
raise if actual.maybe_negate != ""
raise if actual.message != "Failure: expected \"foo\" to eql 42."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 42"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 42."
raise if actual.to_sym != :failure
raise if actual.valid? != false
raise if actual.warning? != false
