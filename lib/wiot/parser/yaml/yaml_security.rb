##
#
#
module Wiot
  module Parser
    class YamlSecurity
      def self.valid(yml)
        errors = {}
        errors['error-' + errors.size.to_s] = ParserError.new(1, 1, 'bafd token')
        errors
      end
    end
  end
end
