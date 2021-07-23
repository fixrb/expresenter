# frozen_string_literal: true

module Expresenter
  # Common collection of methods.
  module Common
    # White space.
    SPACE = " "

    # @return [#object_id] Returned value by the challenged subject.
    attr_reader :actual

    # @return [String] A readable string of the matcher and any expected values.
    attr_reader :definition

    # @return [Exception, nil] Any possible raised exception.
    attr_reader :error

    # @return [#object_id] The expected value.
    attr_reader :expected

    # @return [#object_id] The result of the boolean comparison between the
    #   actual value and the expected value through the matcher.
    attr_reader :got

    # @return [:MUST, :SHOULD, :MAY] The requirement level of the expectation.
    attr_reader :level

    # Did the test pass?
    #
    # @return [Boolean] The spec passed or failed?
    def passed?
      !failed?
    end

    # The value of the negate instance variable.
    #
    # @return [Boolean] Evaluated to a negative assertion?
    def negate?
      @negate
    end

    # The state of error.
    #
    # @return [Boolean] The test raised an error?
    def error?
      !error.nil?
    end

    # The state of success.
    #
    # @return [Boolean] The test was a success?
    def success?
      got.equal?(true)
    end

    # A string containing a human-readable representation of the result.
    #
    # @return [String] The human-readable representation of the result.
    def inspect
      "#{self.class}(actual: #{actual.inspect}, " \
        "definition: #{definition.inspect}, "     \
        "error: #{error.inspect}, "               \
        "expected: #{expected.inspect}, "         \
        "got: #{got.inspect}, "                   \
        "negate: #{negate?.inspect}, "            \
        "level: #{level.inspect})"
    end

    # The summary of the result.
    #
    # @return [String] A string representing the summary of the result.
    def summary
      if error?
        error.message
      elsif actual.is_a?(::Exception)
        actual.message
      elsif actual == expected
        ["expected", negation, "to", definition].compact.join(SPACE)
      else
        ["expected", actual.inspect, negation, "to", definition].compact.join(SPACE)
      end
    end

    # Express the result with one colored char.
    #
    # @return [String] The colored char that identify the result.
    def colored_char
      color(char)
    end

    # The colored string representation of the result.
    #
    # @return [String] A string representing the result.
    def colored_string
      color(to_bold_s)
    end

    # The representation of the result.
    #
    # @return [String] A string representing the result.
    def to_s
      "#{titre}: #{summary}."
    end

    # Titre for the result.
    #
    # @return [String] A string representing the titre.
    def titre
      if error?
        error.class.name
      else
        to_sym.to_s.capitalize
      end
    end

    protected

    # The negation, if any.
    #
    # @return [String, nil] The negation, or an empty string.
    def negation
      "not" if negate?
    end

    # The representation of the result with the title in bold.
    #
    # @return [String] A string representing the result with the title in bold.
    def to_bold_s
      "\e[1m#{titre}\e[22m: #{summary}."
    end
  end
end
