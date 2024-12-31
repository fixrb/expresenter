# frozen_string_literal: true

require_relative "common"

module Expresenter
  # Class responsible for handling and reporting successful test expectations.
  #
  # The Pass class represents test results that didn't fail, but can be in different states:
  # - Success: Test passed completely as expected
  # - Warning: Test passed but with some concerns (typically for :SHOULD or :MAY requirements)
  # - Info: Test passed but with additional information to note
  #
  # Each state has its own character indicator, emoji, and color for easy visual identification
  # in test output:
  # - Success: "." (green) ✅
  # - Warning: "W" (yellow) ⚠️
  # - Info: "I" (blue) 💡
  #
  # @example Creating a successful test result
  #   result = Expresenter::Pass.new(
  #     actual: "foo",
  #     definition: 'eq "foo"',
  #     error: nil,
  #     got: true,
  #     negate: false,
  #     level: :MUST
  #   )
  #   result.success?   # => true
  #   result.warning?   # => false
  #   result.info?      # => false
  #   result.to_sym    # => :success
  #   result.char      # => "."
  #   result.emoji     # => "✅"
  #   result.to_s      # => "Success: expected \"foo\" to eq \"foo\"."
  #
  # @example Creating a warning result
  #   result = Expresenter::Pass.new(
  #     actual: "foo",
  #     definition: 'eq "foo"',
  #     error: nil,
  #     got: false,  # Warning state is triggered when got: false
  #     negate: false,
  #     level: :SHOULD
  #   )
  #   result.warning?   # => true
  #   result.to_sym    # => :warning
  #   result.char      # => "W"
  #   result.emoji     # => "⚠️"
  class Pass
    # Single character indicator for informational results.
    # @api private
    INFO_CHAR     = "I"

    # Emoji indicator for informational results.
    # @api private
    INFO_EMOJI    = "💡"

    # Single character indicator for successful results.
    # @api private
    SUCCESS_CHAR  = "."

    # Emoji indicator for successful results.
    # @api private
    SUCCESS_EMOJI = "✅"

    # Single character indicator for warning results.
    # @api private
    WARNING_CHAR  = "W"

    # Emoji indicator for warning results.
    # @api private
    WARNING_EMOJI = "⚠️"

    include Common

    # Creates a new Pass instance with the given details.
    #
    # @param details [Hash] Test result details (see #initialize for parameters)
    # @return [Pass] A new Pass instance
    # @example
    #   Expresenter::Pass.with(
    #     actual: "foo",
    #     definition: 'eq "foo"',
    #     error: nil,
    #     got: true,
    #     negate: false,
    #     level: :MUST
    #   )
    def self.with(**details)
      new(**details)
    end

    alias message to_s

    # Initializes a new Pass instance.
    #
    # @param actual [#object_id] The actual value returned by the test
    # @param definition [String] Human-readable description of the expectation
    # @param error [Exception, nil] Any exception that occurred (for info states)
    # @param got [Boolean, nil] Result of comparing actual vs expected values
    # @param negate [Boolean] Whether this is a negative assertion
    # @param level [:MUST, :SHOULD, :MAY] The requirement level of the test
    def initialize(actual:, definition:, error:, got:, negate:, level:)
      @actual     = actual
      @definition = definition
      @error      = error
      @got        = got
      @negate     = negate
      @level      = level
    end

    # Always returns false since this class represents passed tests.
    #
    # @return [false] Always returns false
    def failed?
      false
    end

    # Pass results are never failures.
    #
    # @return [false] Always returns false
    def failure?
      false
    end

    # Indicates if this is an informational result.
    #
    # @return [Boolean] true if an error was captured but the test still passed
    def info?
      !error.nil?
    end

    # Indicates if this is a warning result.
    #
    # @return [Boolean] true if got equals false, indicating a non-critical issue
    def warning?
      got.equal?(false)
    end

    # Returns the symbolic representation of the result state.
    #
    # @return [:success, :warning, :info] The type of pass result
    def to_sym
      if success?
        :success
      elsif warning?
        :warning
      else
        :info
      end
    end

    # Returns a single character representing the result state.
    #
    # @return [String] "." for success, "W" for warning, "I" for info
    def char
      if success?
        SUCCESS_CHAR
      elsif warning?
        WARNING_CHAR
      else
        INFO_CHAR
      end
    end

    # Returns an emoji representing the result state.
    #
    # @return [String] "✅" for success, "⚠️" for warning, "💡" for info
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

    # Applies color formatting to the given string based on result state.
    #
    # @param str [String] The string to colorize
    # @return [String] ANSI-colored string (green for success, yellow for warning, blue for info)
    # @api private
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
