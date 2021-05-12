# frozen_string_literal: true

require_relative "common"

module Expresenter
  # The class that is responsible for reporting that an expectation is true.
  class Pass
    include Common

    # @param (see Pass#initialize)
    # @return [Pass] A passed spec instance.
    def self.with(**details)
      new(**details)
    end

    alias message to_s

    # Initialize method.
    #
    # @param actual   [#object_id] Returned value by the challenged subject.
    # @param error    [Exception, nil] Any possible raised exception.
    # @param expected [#object_id] The expected value.
    # @param got      [Boolean, nil] The result of the boolean comparison
    #   between the actual value and the expected value through the matcher.
    # @param negate   [Boolean] Evaluated to a negative assertion?
    # @param valid    [Boolean] Report if the test was true or false?
    # @param matcher  [Symbol] The matcher.
    # @param level    [:MUST, :SHOULD, :MAY] The requirement level.
    def initialize(actual:, error:, expected:, got:, negate:, valid:,
                   matcher:, level:)

      @actual   = actual
      @error    = error
      @expected = expected
      @got      = got
      @negate   = negate
      @valid    = valid
      @matcher  = matcher
      @level    = level
    end

    # Did the test fail?
    #
    # @return [Boolean] The spec passed or failed?
    def failed?
      false
    end

    # The state of failure.
    #
    # @return [Boolean] The test was a failure?
    def failure?
      false
    end

    # The state of info.
    #
    # @return [Boolean] The test was an info?
    def info?
      !error.nil?
    end

    # The state of warning.
    #
    # @return [Boolean] The test was a warning?
    def warning?
      got.equal?(false)
    end

    # Identify the state of the result.
    #
    # @return [Symbol] The identifier of the state.
    def to_sym
      return :success if success?
      return :warning if warning?

      :info
    end

    # Express the result with one char.
    #
    # @return [String] The char that identify the result.
    def char
      if success?
        "."
      elsif warning?
        "W"
      else
        "I"
      end
    end

    # Express the result with one emoji.
    #
    # @return [String] The emoji that identify the result.
    def emoji
      if success?
        "✅"
      elsif warning?
        "⚠️"
      else
        "💡"
      end
    end
  end
end
