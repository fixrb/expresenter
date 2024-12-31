# frozen_string_literal: true

module Expresenter
  # Common collection of methods shared between Pass and Fail result classes.
  #
  # This module provides the core functionality for presenting test results, including:
  # - Access to test result data (actual value, definition, error state)
  # - Test state queries (passed?, error?, success?)
  # - Result formatting and presentation (summary, colored output)
  # - Support for requirement levels (MUST/SHOULD/MAY)
  #
  # @example Using common methods in a test result
  #   result = Expresenter.call(true).new(
  #     actual: "foo",
  #     definition: 'eq "foo"',
  #     error: nil,
  #     got: true,
  #     negate: false,
  #     level: :MUST
  #   )
  #
  #   result.passed?    # => true
  #   result.success?   # => true
  #   result.summary    # => 'expected "foo" to eq "foo"'
  #   result.to_s      # => 'Success: expected "foo" to eq "foo".'
  #
  module Common
    # String constant used for joining message parts.
    #
    # @api private
    SPACE = " "

    # The actual value returned by the test subject.
    #
    # @return [#object_id] The value being tested against the expectation.
    # @example
    #   result.actual # => "foo"
    attr_reader :actual

    # The human-readable description of the expectation.
    #
    # @return [String] Description combining the matcher and expected values.
    # @example
    #   result.definition # => 'eq "foo"'
    attr_reader :definition

    # Any exception that was raised during the test.
    #
    # @return [Exception, nil] The error object if an exception occurred, nil otherwise.
    # @example
    #   begin
    #     raise StandardError, "Oops"
    #   rescue => e
    #     result = Expresenter.call(false).new(error: e, ...)
    #     result.error # => #<StandardError: Oops>
    #   end
    attr_reader :error

    # The boolean result of comparing the actual value against the expectation.
    #
    # @return [#object_id] Usually true/false, but can be any object that responds to equal?
    # @example
    #   result.got # => true
    attr_reader :got

    # The requirement level of the expectation.
    #
    # @return [:MUST, :SHOULD, :MAY] The RFC 2119 requirement level.
    # @see https://www.ietf.org/rfc/rfc2119.txt
    # @example
    #   result.level # => :MUST
    attr_reader :level

    # Checks if the test passed.
    #
    # @return [Boolean] true if the test passed, false otherwise.
    # @example
    #   result.passed? # => true
    def passed?
      !failed?
    end

    # Checks if this is a negative assertion.
    #
    # @return [Boolean] true if this is a negative assertion (using not), false otherwise.
    # @example
    #   result = Expresenter.call(true).new(negate: true, ...)
    #   result.negate? # => true
    def negate?
      @negate
    end

    # Checks if an error occurred during the test.
    #
    # @return [Boolean] true if an error was captured, false otherwise.
    # @example
    #   begin
    #     raise "Oops"
    #   rescue => e
    #     result = Expresenter.call(false).new(error: e, ...)
    #     result.error? # => true
    #   end
    def error?
      !error.nil?
    end

    # Checks if the test was successful.
    #
    # @return [Boolean] true if the got value equals true, false otherwise.
    # @example
    #   result = Expresenter.call(true).new(got: true, ...)
    #   result.success? # => true
    def success?
      got.equal?(true)
    end

    # Generates a human-readable summary of the test result.
    #
    # @return [String] A description of what was expected vs what was received.
    # @example With regular value
    #   result.summary # => 'expected "foo" to eq "bar"'
    # @example With error
    #   result.summary # => "Unexpected error occurred"
    def summary
      if error?
        error.message
      elsif actual.is_a?(::Exception)
        actual.message
      else
        ["expected", actual.inspect, negation, "to", definition].compact.join(SPACE)
      end
    end

    # Returns the result indicator with ANSI color codes.
    #
    # @return [String] A colored single character indicating the result type.
    # @example
    #   result.colored_char # => "\e[32m.\e[0m"
    def colored_char
      color(char)
    end

    # Returns the full result message with ANSI color codes.
    #
    # @return [String] A colored string with the complete test result.
    # @example
    #   result.colored_string # => "\e[32mSuccess: expected 1 to eq 1.\e[0m"
    def colored_string
      color(to_bold_s)
    end

    # Returns the complete result message.
    #
    # @return [String] A string containing the result type and summary.
    # @example
    #   result.to_s # => "Success: expected 1 to eq 1."
    def to_s
      "#{titre}: #{summary}."
    end

    # Returns the title for the result type.
    #
    # @return [String] Either the error class name or capitalized result type.
    # @example Normal result
    #   result.titre # => "Success"
    # @example Error result
    #   result.titre # => "StandardError"
    def titre
      if error?
        error.class.name
      else
        to_sym.to_s.capitalize
      end
    end

    protected

    # Returns the negation word if this is a negative assertion.
    #
    # @return [String, nil] Returns "not" for negative assertions, nil otherwise.
    # @api private
    def negation
      "not" if negate?
    end

    # Returns the result message with a bold title.
    #
    # @return [String] The result message with ANSI codes for bold title.
    # @api private
    def to_bold_s
      "\e[1m#{titre}\e[22m: #{summary}."
    end
  end
end
