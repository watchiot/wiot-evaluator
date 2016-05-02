##
#
#
module WiotParser
  class YamlParser
    def self.parser(yaml)
      # Put it all together
      handler = LineNumberHandler.new
      parser =  Psych::Parser.new(handler)
      # Provide the handler with a reference to the parser
      handler.parser = parser

      parser.parse yaml
      handler.root.to_ruby[0]
    end
  end
end
