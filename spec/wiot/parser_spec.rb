require 'spec_helper'
require 'wiot/parser/version'

describe Wiot::Parser do
  it 'has a version number' do
    expect(Wiot::Parser::VERSION).not_to be_nil
  end

  it 'valid yaml with nil constrainers' do
    errors = Wiot::Parser.parse('yaml', nil)
    expect(errors).not_to be_nil
    expect(errors.length).to eq(1)
  end

  it 'valid yaml with nil constrainers' do
    tokens = Wiot::Parser.token
    expect(tokens).not_to be_nil

    expect(tokens.length).to eq(11)
  end
end
