# frozen_string_literal: true

# Namespace for the Expresenter library.
#
# @example A passed expectation result presenter.
#   Expresenter.call(true).with(actual: "FOO", error: nil, expected: "foo", got: true, negate: true, valid: true, matcher: :eql, level: :MUST) # => Expresenter::Pass(actual: "FOO", error: nil, expected: "foo", got: true, matcher: :eql, negate: true, level: :MUST, valid: true)
module Expresenter
  # @param is_passed [Boolean] The value of an assertion.
  # @return [Class<Pass>, Class<Fail>] The class of the result.
  # @example Get the pass class result.
  #   call(true) # => Pass
  def self.call(is_passed)
    is_passed ? Pass : Fail
  end
end

require_relative File.join("expresenter", "fail")
require_relative File.join("expresenter", "pass")
