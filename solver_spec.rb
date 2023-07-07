require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'test methods when receiving valid values' do
    it 'factorial method return the factorial of the given interger' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'reverse method returns a given string backwards' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'fizzbuzz method returns fizz when the interger divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'fizzbuzz method returns buzz when the interger divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'fizzbuzz method returns fizzbuzz when the interger divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'fizzbuzz method returns the interger as a string when its not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end

  context 'test methods when receiving invalid values' do
    it 'factorial method throws SystemStackError when given a negative number' do
      expect{@solver.factorial(-1)}.to raise_exception(SystemStackError)
    end
  end
end