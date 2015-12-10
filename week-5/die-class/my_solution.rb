# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Die.new(n)
# Output:An object die with vairable 'sides' equal to n and method 'roll' which returns a random number between 1 and n  
# and a method sides that returns n
# Steps:  Define class Die
# Define sides within initialise method
# difine method sides that returns the value of sides
# define method roll that retuns a ramdom number between 1 and sides


# 1. Initial Solution

class Die
  def initialize(sides)
  	
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    r = rand(@sides)
    return r
  end

end




# 3. Refactored Solution







# 4. Reflection