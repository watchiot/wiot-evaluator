##
#
#
module Wiot
  module Parser
    class ParserError
      def initialize(row, column, text)
        @row=row
        @column=column
        @text=text
        @type='error'
      end

      def row
        @row
      end

      def row=(row)
        @row = row
      end

      def self.yaml_exception(msg)
        errors = {}
        errors['error-' + errors.size.to_s] = ParserError.new(1, 1, msg)
        errors
      end
    end
  end
end
