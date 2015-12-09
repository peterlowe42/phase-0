# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?  Any integer
# What is the output? A string representing the integer sepateated by commas e.g 1000000 => "1,000,000"
# What are the steps needed to solve the problem?
# convert interger to string
# if the string length is less than 4 return the string
# if the length is greater than 4 insert a comma every after every 3 places starting from the end and working backwards.
# Retun the string. 


# 1. Initial Solution
def separate_comma(num)
	str = num.to_s
	if str.length < 4 
		return str
	else
		i = str.length - 3
		while i > 0
          str = str.insert(i,',')
          i -= 3
      end
      return str
	end
end


# 2. Refactored Solution

def separate_comma(num)
	str = num.to_s
	if str.length >= 4 
		i = str.length - 3
		while i > 0
          str = str.insert(i,',')
          i -= 3
      end
 	end
 	return str
end

# 3. Reflection