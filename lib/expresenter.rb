# frozen_string_literal: true

# Namespace for the Expresenter library.
module Expresenter
  # @raise [Fail] A failed spec result.
  # @return [Pass] A passed spec result.
  def self.call(is_passed)
    is_passed ? Pass : Fail
  end
end

require_relative File.join("expresenter", "fail")
require_relative File.join("expresenter", "pass")
