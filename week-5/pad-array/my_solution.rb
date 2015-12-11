# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# -- An array, min size, and optional value
# What is the output? (i.e. What should the code return?)
# -- a padded Array with min value length and extra spaces filled with optional value.
# What are the steps needed to solve the problem?
# compare min-size to the array length
# If min-size is greater than array lenth 
# add value to array until the array length == min size

#1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if min_size <= array.length 
    return array
  else 
    i = min_size - array.length
    i.times do 
      array << value
    end
  end
  return array
end


def pad(array, min_size, value = nil) 
   new_array = []
   array.each {|v| new_array << v }
  if min_size <= new_array.length 
    return new_array
  else 
    i = min_size - new_array.length
    i.times do 
      new_array << value
    end
  end
  return new_array
end




# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
   (min_size - array.length).times { array << value }
  return array
end

def pad(array, min_size, value = nil) 
   new_array = []
   array.each {|v| new_array << v }
  (min_size - array.length).times {new_array << value}
    
  return new_array
end



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

  Yes 

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  We actually did is as we wrote the pseudocode it was very straight forward. 

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  Our non destructive method ititaly failed the test for being non destructive. This was very confusing at first because it did not change the array.
  I eventually figured it out by checking the rspec file. The test criteria was that the non destructive method would return an array 
  with a different odject id to the origional.  Our intitial solution returned the origional array if min_size <= array.length. /once we cahnged
  it to return a new array in all cases it passed the test. 

When you refactored, did you find any existing methods in Ruby to clean up your code?

  We didn't find any built in methods that we thought we could use but in the process of looking through examples in 
  stack overflow I realised that alot of our existing code was redundent and could be removed. 

How readable is your solution? Did you and your pair choose descriptive variable names?

  I think our code is very readable. The only variable name we chose was 'new_array' and this is very self expalinatory. 

What is the difference between destructive and non-destructive methods in your own words?

  The distructive method adds values to the origional array then returns it. The non-destructive version starts by making a copy
  of the new array and adds the values to this instead. 
 
=end