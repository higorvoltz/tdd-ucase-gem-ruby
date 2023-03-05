# frozen_string_literal: true

require './factorial'

describe Factorial do
  let(:result) { Factorial.call(number: 5) }
  it 'should returns 120' do
    expect(result.data.values).to eq([120])
  end
end
