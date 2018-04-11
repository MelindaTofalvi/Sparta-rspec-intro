require "spec_helper"

describe 'FizzBuzzEngine' do

	before :each do
      @nums = FizzBuzzEngine.new
      x = []
      (1..100).each { |i| }
  	end

  	it 'should print fizzbuzz if the number can be divided by 3 and 5' do
  		x = [15, 30, 45, 60, 75, 90]
  		expect(@nums.fizzBuzz).to eql(x)
  	end
end