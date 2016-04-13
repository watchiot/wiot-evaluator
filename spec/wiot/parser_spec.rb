require 'spec_helper'
require 'wiot/parser/version'

describe Wiot::Parser do
  it 'has a version number' do
    expect(Wiot::Parser::VERSION).not_to be_nil
  end

  it 'valid yaml with nil constrainers' do
    yaml = 'params:
    server_name:        string
    partition name:     string
    total_space:        string
    free_space:         string
    use_space:          string
    use_percet_space:   string
    free_percent_space: string

critical:

    when: (server_name == "my_server1" and free_space < 2) or (server_name == "my_server2" and free_space <= 7)


    repeat_min: 20
    email:
        tpl: You have the partition ${partition_name} in the server ${server_name} with ${free_percent_space} percent free'

    errors = Wiot::Parser.parse(yaml, nil)
    expect(errors).not_to be_nil
    expect(errors.length).to eq(1)
  end

  it 'valid yaml with nil constrainers' do
    tokens = Wiot::Parser.token
    expect(tokens).not_to be_nil

    expect(tokens.length).to eq(11)
  end
end
