# frozen_string_literal: true

require_relative "base"

module Expresenter
  # The class that is responsible for reporting that the expectation is true.
  class Pass
    include Base

    # @return [Pass] A passed spec result.
    def self.with(**details)
      new(**details)
    end

    alias message to_s

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
