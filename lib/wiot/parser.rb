
require 'wiot/parser/error'
require 'wiot/parser/error_io'

require 'wiot/parser/antlr/GrammarLexer'
require 'wiot/parser/antlr/GrammarParser'

module Wiot
  module Parser
    def self.parse(yaml, constrainers)
      error = ErrorIO.new

      lexer = Grammar::Lexer.new( "1 * 1" )
      Grammar::Parser.new( lexer, {error_output: error}).expression

      error.errors unless error.errors.nil? || error.errors.empty?
    end

    def self.token
      %w(ip url params condition critical if less less_equal repeat_min email teplate)
    end
  end
end
