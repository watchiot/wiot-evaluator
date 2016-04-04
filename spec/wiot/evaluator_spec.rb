require 'spec_helper'

describe Wiot::Evaluator do
  it 'has a version number' do
    expect(Wiot::Evaluator::VERSION).not_to be_nil
  end

  it 'valid yaml with nil constrainers' do
    errors = Wiot::Evaluator.parse('yaml', nil)
    expect(errors).not_to be_nil
    expect(errors.length).to eq(2)
  end

  it 'valid yaml with nil constrainers' do
    tokens = Wiot::Evaluator.token
    expect(tokens).not_to be_nil

    expect(tokens.length).to eq(3)
  end
end
