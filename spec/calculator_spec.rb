# frozen_string_literal: true

# spec/calculator_spec.rb

require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(3, 15)).to eql(45)
    end

    it 'works on more than two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(1, 2, 3)).to eql(6)
    end

    it 'works on negative numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(10, -10, 1)).to eql(-100)
    end

    it 'works with floats' do
      calculator = Calculator.new
      expect(calculator.multiply(1.25, 2)).to eql(2.5)
    end
  end

  describe '#divide' do
    it 'works with two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(10, 5)).to eql(2)
    end

    it 'works with more than two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(10, 5, 2)).to eql(1)
    end

    it 'works with floats' do
      calculator = Calculator.new
      expect(calculator.divide(10, 2, 2.0)).to eql(2.5)
    end

    it 'returns undefined when 0 is a divisor' do
      calculator = Calculator.new
      expect(calculator.divide(10, 0)).to eql('undefined')
    end
  end
end
