require "spec_helper"

describe 'Calcengine' do

	before :each do
      @calc = Calcengine.new
  	end

	it 'should correctly add two number' do
		expect(@calc.add(1,1)).to eql(2)
	end

	it 'should correctly substract second number from first number' do 
		expect(@calc.substract(7,2)).to eql(5)
	end

	it 'should correctly multiply two numbers' do 
		expect(@calc.multiply(4, 8)).to eql(32)
	end

	it 'should correctly divide two numbers' do 
		expect(@calc.divide(56, 7)).to eql(8)
	end
	
end