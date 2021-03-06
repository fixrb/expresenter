# frozen_string_literal: true

require_relative "common"

module Expresenter
  # The class that is responsible for reporting that an expectation is false.
  class Fail < ::StandardError
    # Char representing a failure.
    FAILURE_CHAR  = "F"

    # Emoji representing a failure.
    FAILURE_EMOJI = "❌"

    # Char representing an error.
    ERROR_CHAR    = "E"

    # Emoji representing an error.
    ERROR_EMOJI   = "💥"

    include Common

    # @param (see Fail#initialize)
    # @raise [Fail] A failed spec exception.
    def self.with(**details)
      raise new(**details)
    end

    # Initialize method.
    #
    # @param actual     [#object_id] Returned value by the challenged subject.
    # @param definition [String] A readable string of the matcher and any
    #   expected values.
    # @param error      [Exception, nil] Any possible raised exception.
    # @param expected   [#object_id] The expected value.
    # @param got        [Boolean, nil] The result of the boolean comparison
    #   between the actual value and the expected value through the matcher.
    # @param negate     [Boolean] Evaluated to a negative assertion?
    # @param level      [:MUST, :SHOULD, :MAY] The requirement level.
    def initialize(actual:, definition:, error:, expected:, got:, negate:, level:)
      @actual     = actual
      @definition = definition
      @error      = error
      @expected   = expected
      @got        = got
      @negate     = negate
      @level      = level

      super(to_s)
    end

    # Did the test fail?
    #
    # @return [Boolean] The spec passed or failed?
    def failed?
      true
    end

    # The state of failure.
    #
    # @return [Boolean] The test was a failure?
    def failure?
      !error?
    end

    # The state of info.
    #
    # @return [Boolean] The test was an info?
    def info?
      false
    end

    # The state of warning.
    #
    # @return [Boolean] The test was a warning?
    def warning?
      false
    end

    # Identify the state of the result.
    #
    # @return [Symbol] The identifier of the state.
    def to_sym
      if failure?
        :failure
      else
        :error
      end
    end

    # Express the result with one char.
    #
    # @return [String] The char that identify the result.
    def char
      if failure?
        FAILURE_CHAR
      else
        ERROR_CHAR
      end
    end

    # Express the result with one emoji.
    #
    # @return [String] The emoji that identify the result.
    def emoji
      if failure?
        FAILURE_EMOJI
      else
        ERROR_EMOJI
      end
    end

    protected

    def color(str)
      if failure?
        "\e[35m#{str}\e[0m" # purple
      else
        "\e[31m#{str}\e[0m" # red
      end
    end
  end
end
