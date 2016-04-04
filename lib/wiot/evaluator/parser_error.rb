##
#
#
module Wiot
  module Evaluator
    class ParserError
      def initialize(row, column, text)
        @row=row
        @column=column
        @text=text
        @type='error'
      end
    end
  end
end
