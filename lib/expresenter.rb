# frozen_string_literal: true

# Namespace for the Expresenter library.
#
# The Expresenter library provides a flexible way to present test expectation results with rich
# formatting and requirement level support. It is designed to work with test frameworks and
# assertion libraries that need detailed result reporting.
#
# Each expectation result can be categorized as:
# - Success: The test passed as expected
# - Warning: A non-critical test failure (typically for :SHOULD or :MAY requirements)
# - Info: Additional information about the test
# - Failure: A critical test failure
# - Error: An unexpected error occurred during the test
#
# @example Creating a passing expectation result
#   result = Expresenter.call(true).with(
#     actual: "FOO",
#     definition: 'eql "foo"',
#     error: nil,
#     got: true,
#     negate: true,
#     level: :MUST
#   )
#   result.passed? # => true
#   result.to_s # => "Success: expected \"FOO\" not to eql \"foo\"."
#
# @example Creating a failing expectation result
#   # This will raise an Expresenter::Fail exception
#   Expresenter.call(false).with(
#     actual: "foo",
#     definition: "eq 42",
#     error: Exception.new("Test failed"),
#     got: false,
#     negate: false,
#     level: :MUST
#   )
#
module Expresenter
  # Factory method that returns the appropriate result class based on the assertion outcome.
  #
  # @param is_passed [Boolean] The value of the assertion. True indicates a passing test,
  #   false indicates a failing test.
  #
  # @return [Class<Pass>, Class<Fail>] Returns the Pass class for passing tests or
  #   the Fail class for failing tests. These classes can then be instantiated with
  #   detailed test information using #with.
  #
  # @example Getting a Pass class for a successful test
  #   result_class = Expresenter.call(true)
  #   result_class # => Expresenter::Pass
  #
  # @example Getting a Fail class for a failed test
  #   result_class = Expresenter.call(false)
  #   result_class # => Expresenter::Fail
  #
  def self.call(is_passed)
    is_passed ? Pass : Fail
  end
end

require_relative File.join("expresenter", "fail")
require_relative File.join("expresenter", "pass")
