require 'fizzBuzz' #the one in the lib

describe 'FizzBuzz' do

	before(:each) do #you can use 'all' instead of 'each'
		@fb = FizzBuzz.new
	end
	
	it 'should respond true if the number is divisible by 3' do 
		expect(@fb.divisible_by?(9, 3)).to be true
	end

	it 'should respond false if the number is not cleanly divisble by 3' do
		expect(@fb.divisible_by?(5, 3)).to be false
		expect(@fb.divisible_by?(-11, 3)).to be false
	end

	it 'should respond true if the number is divisible by 5' do 
		expect(@fb.divisible_by?(10, 5)).to be true
	end

	it 'should respond false if the number is not cleanly divisble by 5' do
		expect(@fb.divisible_by?(7, 5)).to be false
		expect(@fb.divisible_by?(-11, 5)).to be false
	end

	it 'should correctly apply fizzbuzz to given range' do
		@fb.fizzbuzz_iterator(1,15)
		expect(@fb.fizzbuzz_array[0]).to eq 1
		expect(@fb.fizzbuzz_array[-1]).to eq 'FizzBuzz' #will check the last item in the array
		expect(@fb.fizzbuzz_array[2]).to eq 'Fizz'
		expect(@fb.fizzbuzz_array[4]).to eq 'Buzz'
	end



end