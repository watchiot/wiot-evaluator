#require 'wiot_parser/errors'
#require 'wiot_parser/yaml/yaml_line'
#require 'wiot_parser/yaml/yaml_security'
#require 'wiot_parser/yaml/yaml_parser'

module WiotParser
  def self.parse(yaml, constrainers)

    # try to put more difficult the possible yml exploit with basic validations
    #errors = YamlSecurity.valid(yaml)
    #return errors unless errors.empty?

    #begin
    #  obj = YamlParser.parser yaml
    #  errors = parser_obj obj, constrainers
    #rescue => e
    #  return ParserError.yaml_exception e.message
    #end

    #errors
    errors = {}
  end

  def self.token
    %w(ip url params condition critical if less less_equal repeat_min email template)
  end

  private

  def self.parser_obj(obj, constrainers)
    #errors = {}
    #errors['error-' + errors.size.to_s] = ParserError.new(1, 1, 'bafd token')
    #errors
  end
end
