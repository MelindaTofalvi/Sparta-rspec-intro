require 'fibonacci'

describe 'Fibonacci' do

	before(:each) do
		@fibo = Fibonacci.new
	end 

	it 'should correctly create Fibonacci numbers' do
		@fibo.fibonacci(10)
		expect(@fibo.arr[9]).to be 89
	end

	it 'should correctly sum the even numbers from the fibonacci numbers for a given range' do
		@fibo.fibonacci(40)
		expect(@fibo.sum).to eq 82790070
	end

	it 'should throw an error if the sum of even numbers of the Fibonacci numbers is greater than 4.000.000' do
		@fibo.fibonacci(40)	
		expect(@fibo.isGreaterThanFourMillion?).to be true
	end

end