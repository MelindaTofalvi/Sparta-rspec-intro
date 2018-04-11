class Multiple
	attr_accessor :sum

	def initialize
		@sum = 0
	end

	def divisible?(num1, num2)
		(num1 % num2).zero?
	end

	def iterator(range_from, range_to)
		(range_from...range_to).each do |i|
			if divisible?(i, 3)
				@sum += i
			elsif divisible?(i, 5)
				@sum += i
			end
		end
	end

end