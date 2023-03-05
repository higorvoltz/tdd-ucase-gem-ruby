# frozen_string_literal: true

require './case'

# factorial numbers
class Factorial < Micro::Case
  attributes :number

  def call!
    def factorial_of(number)
      number == 1 ? number : number * factorial_of(number - 1)
    end
    Success result: { fac: number == 1 ? number : number * factorial_of(number - 1) }
  end
end

result = Factorial.call(number: 5)
p result.success?
p result.data.values
