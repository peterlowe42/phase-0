# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Brigitte]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? another array containing mode
# What are the steps needed to solve the problem?
# set mode to first item in array
# loop through the array 
# check frequency of elements in array
# if frequency higher that that of mode mode is reset to element.



def mode(array)
  mode = []
  freq_hash = Hash.new(0)
  array.each do |i|
    freq_hash[i] += 1
  end
  highest = freq_hash[array[0]]
  high_key = [array[0]]
  freq_hash.each do |k,v|
    if v > highest
      high_key = [k]
      highest = v
    elsif v == highest
      high_key << k
    end
  end
  p freq_hash
  return high_key
end
    


  
  
# 3. Refactored Solution
def mode(array)
  count = 0
  mode = []
  array.each do |i|
    if (mode.include?(i) == false) && (array.count(i) == count)
      mode << i
      elsif array.count(i) > count
      mode = [i]
      count = array.count(i)
    end
  end
  return mode 
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
  
  In our initial solution we decided to use a hash to store the frequencies of individual elements.  We started out
  just using arrays and variable but decided a hash made more sense as we could store the unique elements as keys and
  the number of occurences as the value.  In the refactored solution we nolonger needed the hash as the .count method 
  took counted the occurances for us. 

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
   
  yes we broke the probmlem down well.

What issues/successes did you run into when translating your pseudocode to code?

  Our pseudocode did not include the creation of a hash but as we started to write and test our initial solution we decided
  it would work much better with a hash so changed our plan accordingly. 

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  We used .each to iterate in both solutions.  We used .count to create the refactored solution this was fairly simple to implement. 
=end