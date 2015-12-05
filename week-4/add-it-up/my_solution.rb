# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
define a variable total and set it to 0
iterate over the array and add each element within
return result
=end

# Steps to solve the problem.


# 1. total initial solution
def total(input)
  result = 0
  input.each { |i| result += i}
  return result
end


# 3. total refactored solution
def total(input)
  return input.reduce(:+)
end
  
puts total([10,20,30])




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: (array of words)
# set result = array[0].capitalize
# loop through array adding each word with a space
# add a period at the end.


# Output: result 
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(array)
  result = array[0].capitalize
  i = 1
  while i < array.length
    result = result + " " + array[i].to_s
    i += 1
  end
  result = result + "."
end



# 6. sentence_maker refactored solution
def sentence_maker(array)
  return array.join(" ").capitalize + "."
end

