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
=begin
What was your process for breaking the problem down? What different approaches did you consider?

 I considered the input and output then tried to think about the individual steps that needed to be taken to go from
 one to the other.  I initialy considered using .split to split the initial string into an array but decided this was 
 not really nececary as I could just use .insert to put commas directly into the string. I also considered reversing the string
 so I could add the commas from left to right rather than having to start from the end and work backwards.  I decided this
 would add two extra steps and was not really worth it. 

Was your pseudocode effective in helping you build a successful initial solution?

  Yes I follwed the steps from my pseudocode almost exactly to produce my initial solution.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  
  I spent quite a long time looking through the ruby docs to find new methods that might help but I did not find any thet 
  I thought would help without compleatly changing how the program works. For now I'm moving on to the next exercise but if i have time at the end of this week I will
  come back and see if I can implement some new methods by using a different approach to the problem. 

How did you initially iterate through the data structure?

  I used a while loop. I considered using .each but I couldn't figure out how to make this work with .insert as it requires 
  the index number of the position where you want to insert a charachter. 

Do you feel your refactored solution is more readable than your initial solution? Why?

  Because I was unable to find a new method the refactored version is very similar to the initial solutoin. All I really did
  was remove a redundent return line.  I think this does make it a little easier to read. 
=end