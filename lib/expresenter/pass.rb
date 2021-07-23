# frozen_string_literal: true

require_relative "common"

module Expresenter
  # The class that is responsible for reporting that an expectation is true.
  class Pass
    # Char representing an info.
    INFO_CHAR     = "I"

    # Emoji representing an info.
    INFO_EMOJI    = "💡"

    # Char representing a success.
    SUCCESS_CHAR  = "."

    # Emoji representing a success.
    SUCCESS_EMOJI = "✅"

    # Char representing a warning.
    WARNING_CHAR  = "W"

    # Emoji representing a warning.
    WARNING_EMOJI = "⚠️"

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
    # @param definition [String] A readable string of the matcher and any
    #   expected values.
    # @param error    [Exception, nil] Any possible raised exception.
    # @param expected [#object_id] The expected value.
    # @param got      [Boolean, nil] The result of the boolean comparison
    #   between the actual value and the expected value through the matcher.
    # @param negate   [Boolean] Evaluated to a negative assertion?
    # @param level    [:MUST, :SHOULD, :MAY] The requirement level.
    def initialize(actual:, definition:, error:, expected:, got:, negate:, level:)
      @actual     = actual
      @definition = definition
      @error      = error
      @expected   = expected
      @got        = got
      @negate     = negate
      @level      = level
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
      if success?
        :success
      elsif warning?
        :warning
      else
        :info
      end
    end

    # Express the result with one char.
    #
    # @return [String] The char that identify the result.
    def char
      if success?
        SUCCESS_CHAR
      elsif warning?
        WARNING_CHAR
      else
        INFO_CHAR
      end
    end

    # Express the result with one emoji.
    #
    # @return [String] The emoji that identify the result.
    def emoji
      if success?
        SUCCESS_EMOJI
      elsif warning?
        WARNING_EMOJI
      else
        INFO_EMOJI
      end
    end

    protected

    def color(str)
      if success?
        "\e[32m#{str}\e[0m" # green
      elsif warning?
        "\e[33m#{str}\e[0m" # yellow
      else
        "\e[36m#{str}\e[0m" # blue
      end
    end
  end
end
