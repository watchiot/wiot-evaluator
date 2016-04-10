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
    end
  end
end
