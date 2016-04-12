
require 'wiot/parser/error'

module Wiot
  module Parser
    def self.parse(yaml, constrainers)
      errors = {}
      errors['error-' + errors.size.to_s] = ParserError.new(1, 1, 'bafd token')
      errors
    end

    def self.token
      %w(ip url params condition critical if less less_equal repeat_min email teplate)
    end
  end
end
