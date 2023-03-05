# frozen_string_literal: true

require './case'
# sum
class Sum < Micro::Case
  attributes :a, :b

  def call!
    if a.is_a?(Numeric) && b.is_a?(Numeric)
      Success result: { number: a + b }
    else
      Failure result: { message: '`a` e `b` devem ser numéricos' }
    end
  end
end

result = Sum.call(a: 2, b: 2)

puts result.success? # true
puts result.failure? # false
puts result[:number] # 4
puts result.data # {:number =>4}
puts result.data.class # Hash
