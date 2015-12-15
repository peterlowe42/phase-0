# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:   number
# Output:   true or false
# Steps:

# Create class for credit card
# Add argument error if it's less than 16 digits
# Define method called check_card method
# The check_card method will split the number into an array
# start with the second to last value
# working backwards, doubel every other value
# split numbers over ten into single digit numbers
# add up the entire array
# if the sum is divisible by 10, return true; else return false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError
    end
    @number = number
  end
  
  def check_card
    num_string = @number.to_s
    num_array = num_string.split(//)
    num_array.map! do |i|
      i = i.to_i
    end
    new_array = num_array.each_with_index.map do |x, i| 
      if i.even? == true
        x = x*2
      else 
        x = x
      end
      
    end
    p new_array
    new_array.map! do |i|
      if i > 9
        string = i.to_s
        string_split = string.split(//)
        string_split.map! do |i|
          i= i.to_i
        end
        i = string_split
      else
        i = i
      end
    end
    new_array.flatten!
    p new_array
    sum = new_array.reduce(:+)
    
    if sum % 10 == 0
      return true
    else
      return false
    end
    
    
  end

end



# Refactored Solution
class CreditCard
  
  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError
    end
    @number = number
  end
  
  def num_split(num)
    num_string = num.to_s
    num_array = num_string.split(//)
    num_array.map! {|i| i=i.to_i}
    return num_array
  end
  
  def check_card
    num_array = num_split(@number)
  
    new_array = num_array.each_with_index.map do |x, i| 
      if i.even? == true
        x = x*2
      else 
        x = x
      end
      
    end
  
    new_array.map! do |i|
      if i > 9
        split_num = num_split(i)
        i = split_num
      else
        i = i
      end
    end
    new_array.flatten!
 
    sum = new_array.reduce(:+)
     
    return sum % 10 == 0 ? true : false
   
  end

end

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  
  Splitting the number into an array of digits was a little tedious as we had so convert to a string then convert all the digits back to numbers.
  We also had a little trouble splitting the numbers greater than 10 as it left us with nested arrays but this was solved by using .flatten!

What new methods did you find to help you when you refactored?

  Most of the methods are the same in the refactored version. We had to look up the syntax for putting the last if statement onto one line.

What concepts or learnings were you able to solidify in this challenge?

  This challenge really solidified the use of .map and iteration in general. This was also the first time i've implemented .flatten.  I had read 
  about this method before so I knew what it does but I had not had a chance to use it until now. 
=end