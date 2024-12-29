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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "foo",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"foo\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"foo\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"foo\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to be an instance of 'foo'.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to be an instance of 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to be an instance of 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Success: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Success"
raise if actual.to_s != "Success: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :success
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != true
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Warning"
raise if actual.to_s != "Warning: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :warning
raise if actual.warning? != true

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
raise if actual.message != "Info: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != true
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Info"
raise if actual.to_s != "Info: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :info
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" not to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.negate? != true
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" not to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" not to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(false).with(
      actual:     "bar",
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: expected \"bar\" to eql 'foo'.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "expected \"bar\" to eql 'foo'"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: expected \"bar\" to eql 'foo'."
raise if actual.to_sym != :failure
raise if actual.warning? != false

# ------------------------------------------------------------------------------

actual = begin
  begin
    Expresenter.call(true).with(
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "be an instance of 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "be an instance of 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != true
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != true
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      Exception.new("BOOM"),
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "E"
raise if actual.colored_char != "\e[31mE\e[0m"
raise if actual.colored_string != "\e[31m\e[1mException\e[22m: BOOM.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💥"
raise if actual.error? != true
raise if actual.failed? != true
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "."
raise if actual.colored_char != "\e[32m.\e[0m"
raise if actual.colored_string != "\e[32m\e[1mSuccess\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "✅"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        true,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "W"
raise if actual.colored_char != "\e[33mW\e[0m"
raise if actual.colored_string != "\e[33m\e[1mWarning\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "⚠️"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        false,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "I"
raise if actual.colored_char != "\e[36mI\e[0m"
raise if actual.colored_string != "\e[36m\e[1mInfo\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "💡"
raise if actual.error? != false
raise if actual.failed? != false
raise if actual.failure? != false
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MUST
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :SHOULD
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     true,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
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
      actual:     ZeroDivisionError.new,
      error:      nil,
      got:        nil,
      negate:     false,
      definition: "eql 'foo'",
      level:      :MAY
    )
  rescue ::Expresenter::Fail => e
    e
  end
end

raise if actual.char != "F"
raise if actual.colored_char != "\e[35mF\e[0m"
raise if actual.colored_string != "\e[35m\e[1mFailure\e[22m: ZeroDivisionError.\e[0m"
raise if actual.definition != "eql 'foo'"
raise if actual.emoji != "❌"
raise if actual.error? != false
raise if actual.failed? != true
raise if actual.failure? != true
raise if actual.info? != false
raise if actual.message != "Failure: ZeroDivisionError."
raise if actual.negate? != false
raise if actual.passed? != false
raise if actual.success? != false
raise if actual.summary != "ZeroDivisionError"
raise if actual.titre != "Failure"
raise if actual.to_s != "Failure: ZeroDivisionError."
raise if actual.to_sym != :failure
raise if actual.warning? != false
