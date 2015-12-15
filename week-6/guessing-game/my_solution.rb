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
    @solved = false
    @guess = nil
  end

  def guess (guess)
  	@guess = guess
  	if @guess == @answer 
  		@solved = true
  		return :correct
  		
  	elsif @guess > @answer
  		return :high
  	else  
  		return :low
  	end

  end
  
  def solved?
  	return @solved
  end
end




# Refactored Solution






# Reflection
