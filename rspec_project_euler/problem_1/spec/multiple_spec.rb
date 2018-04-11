require 'multiple'

describe 'Multiple' do

	before(:each) do
		@mult = Multiple.new
	end	

	it 'should respond true if the number is divisible by 3' do 
		expect(@mult.divisible?(12, 3)).to be true
	end

	it 'should respond true if the number is divisible by 5' do
		expect(@mult.divisible?(15, 5)).to be true
	end

	it 'should correctly sum the numbers that are divisible by 3 and 5 between 1 and 99' do
		@mult.iterator(1, 10)
		expect(@mult.sum).to eq 23

	end

	it 'should correctly sum the numbers that are divisible by 3 and 5 between 1 and 999' do
		@mult.iterator(1, 1000)
		expect(@mult.sum).to eq 233168

	end

end