require './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  context 'test methods when receiving valid values' do
    it 'factorial method return the factorial of the given interger' do
      expect(@solver.factorial(5)).to eq(120)
    end
  end

  context 'test methods when receiving invalid values' do
    it 'factorial method throws SystemStackError when given a negative number' do
      expect{@solver.factorial(-1)}.to raise_exception(SystemStackError)
    end
  end

end