require 'wiot/evaluator/version'
require 'wiot/evaluator/parser_error'

module Wiot
  module Evaluator
    def self.token
      %w(ip url server)
    end

    def self.parse(yaml, constrainers)
      errors =
      {
          error1: ParserError.new(6, 10, 'Strange error'),
          error2: ParserError.new(10, 10, 'Strange error 2')
      }
    end
  end
end
