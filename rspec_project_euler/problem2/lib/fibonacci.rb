class Fibonacci

	attr_accessor :arr, :sum, :tooHigh

	def initialize
		@arr = [1,2]
		@sum = 0
		@tooHigh = false
	end

	def fibonacci(range_to)
		(2...range_to).each do |i|
			@arr[i] = @arr[-1] + @arr[-2]
		end
		@arr.each do |j|
			if isEven?(j)
				@sum += j
			end
		end
	end

	def isEven?(num)
		(num % 2).zero?
	end

	def isGreaterThanFourMillion?
		if @sum > 4000000
			@tooHigh = true
		end
		@tooHigh
	end
end