# frozen_string_literal: true

class Calculator
  def add(*args)
    args.inject(0) { |sum, num| sum + num }
  end

  def multiply(*args)
    args.inject(1) { |product, num| product * num }
  end

  def divide(*args)
    args.inject do |quotient, divisor|
      return 'undefined' if divisor.zero?

      quotient / divisor
    end
  end
end
