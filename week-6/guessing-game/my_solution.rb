# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    if answer.class != Fixnum 
    	raise ArgumentError
    end
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess == @answer 
  	  :correct
  	elsif @guess > @answer
       :high
  	else  
  	   :low
  	end

  end
  
  def solved?
  	if @guess == @answer
      return true
    else
      return false
    end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    if answer.class != Fixnum 
      raise ArgumentError
    end
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer 
      :correct
    else @guess > @answer ? :high : :low
    end

  end
  
  def solved?
    return @guess == @answer ? true : false 
  end

end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

#   They can be used to represent any number of real world objects depending on how the code is written.  A good example would be the die-class we crated last week
#   the die odject reperesents a die the instance variable @sides represents the sides of the die and the method .roll represents the action of rolling the die.  In the 
#   expanded version of this die class the instance variable @labels was used to represent symbols on the sides of the die.

# When should you use instance variables? What do they do for you?

#   Instance variables should be used within the class.  They allow you to access them globaly as appose to localy meaning you can use them in multiple methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

#   Flow caontrol is most commonly used with if statements.  I had no trouble using it in this challenge. 

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

#   The code could return strings instead but if it did every time it returned a string it would be a new ruby object.  Symbols are unique so by retruning symbols you 
#   return the same objects each time and reduce the memeory usage.  
