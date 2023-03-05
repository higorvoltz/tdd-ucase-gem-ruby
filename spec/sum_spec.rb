# frozen_string_literal: true

require './sum'

describe Sum do
  let(:result) { Sum.call(a: 2, b: 2) }
  it 'should returns 4' do
    expect(result[:number]).to eq(4)
  end

  it 'should returns success' do
    expect(result.success?).to eq(true)
  end

  it 'should not returns failure' do
    expect(result.failure?).to eq(false)
  end
end

# result = Sum.call(a: 2, b: 2)

# puts result.success? # true
# puts result.failure? # false
# puts result[:number] # 4
# puts result.data # {:number =>4}
# puts result.data.class # Hash
