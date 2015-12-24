# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input:A string containing a valid rpn problem
# Output:An integer of the solution to that problem.
# Steps: 
# define an array of symbols "+" "-" "*"
#split input into calc_array
#iterate through calc_array until you find one of the symbols 
#call relevent method on the two elements before the symbol then replace all three elements with the result. 
#continue until calc array contains only one integer
#return this integer 


# Initial Solution

class RPNCalculator
	def initialize (rpn)
		@calc_array = rpn.split(" ")
		@operators = ["+","-","*"]
	end
	def evaluate 
		until @calc_array[0].kind_of? (Integer)

			@calc_array.each_with_index do |x,i|
				if x == "+"
					p @calc_array
					(@calc_array[i-2],@calc_array[i-1],@calc_array[i]) = (@calc_array[i-2].to_i + @calc_array[i-1].to_i)
					p @calc_array
					@calc_array -= [nil]
					p @calc_array
				end
			end
		end
			return @calc_array 
	end
     
end

rpn = RPNCalculator.new("1 2 3 + +")
p rpn.evaluate

# 4. Refactored Solution






# Reflection
