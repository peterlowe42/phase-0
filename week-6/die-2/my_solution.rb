# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:An array of symbols
# Output:for die.sides => the length of the array.  for die.roll a random symbol from the array. 
# Steps:


# Initial Solution

class Die
  def initialize(labels)
  	if labels.class != Array || labels == []
  		raise ArgumentError
  	end
  	@labels = labels
  	@sides = labels.length 
  end

  def sides
  	return @sides
  end

  def roll
  	r = rand(@sides)
  	puts r
  	return @labels[r]
  end
end


# Refactored Solution

class Die
  def initialize(labels)
  	if labels.class != Array || labels == []
  		raise ArgumentError
  	end
  	@labels = labels
  	@sides = labels.length 
  end

  def sides
  	return @sides
  end

  def roll
  	return @labels[rand(@sides)]
  end
end






# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  The logic was basicly the same the only real differences were that I needed to define @sides in terms of labels.length and that rather than simply
  returning a random number for .roll i had to use a random number as an index to call an element of 'labels'.

What does this exercise teach you about making code that is easily changeable or modifiable? 

  If you make code that is simple and readable it is easy to modify. 

What new methods did you learn when working on this challenge, if any?

  I found the .class method to check weather 'labels' is an array. 

What concepts about classes were you able to solidify in this challenge?	

  I solidified the concept of instance variables and the process of raising argument errors. 
=end