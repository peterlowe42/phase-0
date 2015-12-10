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
    if sides < 1
      raise ArgumentError 
    end
  	    @sides = sides 
  end

  def sides
    return @sides
  end

  def roll
    r = rand(1...(@sides + 1))
    return r
  end

end



# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError if sides < 1
      @sides = sides 
  end

  def sides
    return @sides
  end

  def roll
    return rand(1...(@sides + 1))
  end

end

=begin
What is an ArgumentError and why would you use one?

  An ArgumentError is an error that is raised when the input argument(s) for a method do not meet the expected criteria.  In this case the error is raised if 
  sides is < 1.  You use ArgumentErrors to ensure that the wrong type of input cannot be fed into your method by a user. 

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  I used rand for the first time. Initally I had some trouble understanding what input I needed for it. I tried just rand(@sides) first but this returned 
  0 as a possible value and only went up to @sides-1.  After a little research I found how to set the possible range of outputs to what i wanted. 

What is a Ruby class?

  A rubt class is a 'type' of ruby object. For example String, Array and Hash are all ruby classes. 

Why would you use a Ruby class?

  If you want to create a new type of object that has specific characteristics and methods. 

What is the difference between a local variable and an instance variable?

  A local variable only exists within the method. An instance variable exixts globally

Where can an instance variable be used?
  
  Within 'initialize'
=end






# 4. Reflection