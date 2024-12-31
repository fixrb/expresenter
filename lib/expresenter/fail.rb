# frozen_string_literal: true

require_relative "common"

module Expresenter
  # Class responsible for handling and reporting failed test expectations.
  #
  # The Fail class represents test failures and errors, inheriting from StandardError
  # to support exception handling. It distinguishes between two types of failures:
  # - Regular failures: When an assertion fails but no exception occurred
  # - Errors: When an unexpected exception was raised during the test
  #
  # @example Handling a regular test failure
  #   begin
  #     Expresenter.call(false).with(
  #       actual: 42,
  #       definition: 'eq 43',
  #       error: nil,
  #       got: false,
  #       negate: false,
  #       level: :MUST
  #     )
  #   rescue Expresenter::Fail => e
  #     e.failure?     # => true
  #     e.error?       # => false
  #     e.to_sym      # => :failure
  #     e.char        # => "F"
  #     e.emoji       # => "❌"
  #     e.to_s        # => "Failure: expected 42 to eq 43."
  #   end
  #
  # @example Handling a test error
  #   begin
  #     error = StandardError.new("Unexpected error")
  #     Expresenter.call(false).with(
  #       actual: nil,
  #       definition: 'be_valid',
  #       error: error,
  #       got: false,
  #       negate: false,
  #       level: :MUST
  #     )
  #   rescue Expresenter::Fail => e
  #     e.failure?     # => false
  #     e.error?       # => true
  #     e.to_sym      # => :error
  #     e.char        # => "E"
  #     e.emoji       # => "💥"
  #     e.to_s        # => "StandardError: Unexpected error."
  #   end
  class Fail < ::StandardError
    # Single character indicator for test failures.
    # @api private
    FAILURE_CHAR  = "F"

    # Emoji indicator for test failures.
    # @api private
    FAILURE_EMOJI = "❌"

    # Single character indicator for test errors.
    # @api private
    ERROR_CHAR    = "E"

    # Emoji indicator for test errors.
    # @api private
    ERROR_EMOJI   = "💥"

    include Common

    # Creates and raises a new Fail instance with the given details.
    #
    # @param details [Hash] Test result details (see #initialize for parameters)
    # @raise [Fail] Always raises a Fail exception with the provided details
    # @example
    #   Expresenter::Fail.with(
    #     actual: 42,
    #     definition: 'eq 43',
    #     error: nil,
    #     got: false,
    #     negate: false,
    #     level: :MUST
    #   ) # raises Expresenter::Fail
    def self.with(**details)
      raise new(**details)
    end

    # Initializes a new Fail instance.
    #
    # @param actual [#object_id] The actual value returned by the test
    # @param definition [String] Human-readable description of the expectation
    # @param error [Exception, nil] Any exception that was raised during the test
    # @param got [Boolean, nil] Result of comparing actual vs expected values
    # @param negate [Boolean] Whether this is a negative assertion
    # @param level [:MUST, :SHOULD, :MAY] The requirement level of the test
    #
    # @example Creating a failure result
    #   Fail.new(
    #     actual: 42,
    #     definition: 'eq 43',
    #     error: nil,
    #     got: false,
    #     negate: false,
    #     level: :MUST
    #   )
    def initialize(actual:, definition:, error:, got:, negate:, level:)
      @actual     = actual
      @definition = definition
      @error      = error
      @got        = got
      @negate     = negate
      @level      = level

      super(to_s)
    end

    # Always returns true since this class represents failed tests.
    #
    # @return [true] Always returns true
    def failed?
      true
    end

    # Indicates if this is a regular failure (not an error).
    #
    # @return [Boolean] true if no error was captured, false otherwise
    def failure?
      !error?
    end

    # Fail results are never informational.
    #
    # @return [false] Always returns false
    def info?
      false
    end

    # Fail results are never warnings.
    #
    # @return [false] Always returns false
    def warning?
      false
    end

    # Returns the symbolic representation of the failure type.
    #
    # @return [:failure, :error] :failure for regular failures, :error when an exception occurred
    def to_sym
      if failure?
        :failure
      else
        :error
      end
    end

    # Returns a single character representing the failure type.
    #
    # @return [String] "F" for failures, "E" for errors
    def char
      if failure?
        FAILURE_CHAR
      else
        ERROR_CHAR
      end
    end

    # Returns an emoji representing the failure type.
    #
    # @return [String] "❌" for failures, "💥" for errors
    def emoji
      if failure?
        FAILURE_EMOJI
      else
        ERROR_EMOJI
      end
    end

    protected

    # Applies color formatting to the given string based on failure type.
    #
    # @param str [String] The string to colorize
    # @return [String] ANSI-colored string (purple for failures, red for errors)
    # @api private
    def color(str)
      if failure?
        "\e[35m#{str}\e[0m" # purple
      else
        "\e[31m#{str}\e[0m" # red
      end
    end
  end
end
