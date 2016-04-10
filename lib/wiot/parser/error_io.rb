##
#
#
module Wiot
  module Parser
    class ErrorIO < IO

      def initialize()
        @errors = {}
      end

      def write(string)
        #assume anything written to stderr is an error
        return if string == "\n"

        string.scan(/^line\s(\d+):\s*(\d+)(\s.*)/) do |m|
          @errors['error-' + @errors.size.to_s] = ParserError.new(m[0], m[1], m[2]) if m.length == 3
        end
        @errors
      end

      def errors
        @errors
      end

    end
  end
end
