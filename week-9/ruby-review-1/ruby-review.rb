# Numbers to English Words


# I worked on this challenge [by myself, with: Thomas Huang].
# This challenge took me [1.2] hours.


# Pseudocode
# make a hash of the numbers 1-9 10-19 and 20-100 in increments of ten. with names as string values
# function: 
# if < 20 return string from  hash
#   if >  combine hash values to produce output string. 
    
# Initial Solution
# def convert_to_words(integer)
#     hash = {
#       1 => "one",
#       2 => "two",
#       3 => "three",
#       4 => "four",
#       5 => "five",
#       6 => "six",
#       7 => "seven",
#       8 => "eight",
#       9 => "nine",
#       10 => "ten",
#       11 => "eleven",
#       12 => "twelve",
#       13 => "thirteen",
#       14 => "fourteen",
#       15 => "fifteen",
#       16 => "sixteen",
#       17 => "seventeen",
#       18 => "eighteen",
#       19 => "nineteen",
#       20 => "twenty",
#       30 => "thirty",
#       40 => "fourty",
#       50 => "fifty",
#       60 => "sixty",
#       70 => "seventy",
#       80 => "eighty",
#       90 => "ninety",
#       100 => "one hundred"
#     }
    
    
#  words = ""
  
  
#   if hash.has_key?(integer)
#     return hash[integer]
#       elsif num_array = integer.to_s.split(//)
#         num_array.map! {|i| i.to_i}
#         key_1 = num_array[0] * 10
#         key_2 = num_array[1]
#         words << "#{hash[key_1]} "
#         words << hash[key_2]
#         return words
#       end
#   end
  



# Refactored Solution

def convert_to_words(integer)
    number_words = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "fourty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety",
     
    }
    
    if integer.to_s.length < 3
      return words_to_99(integer,number_words)
    elsif integer.to_s.length == 3
      num_array = integer.to_s.split(//)
      words = "#{number_words[num_array[0].to_i]} hundred"
      num_array.shift
      num = num_array.join('').to_i
        if num !=0 
         words << " and #{words_to_99(num,number_words)}"
        end
      return words
    end
   
  
end
     

def words_to_99(num,hash)
  if hash.has_key?(num)
     return hash[num]
  elsif num_array = num.to_s.split(//)
        num_array.map! {|i| i.to_i}
  return "#{hash[num_array[0]*10]} #{hash[num_array[1]]}"         
  end
end

p convert_to_words(800)
p convert_to_words(100)
p convert_to_words(123)

# Reflection 
# What concepts did you review in this challenge?
  
#   Mostly function definitions and scope but also using hashes, String interpolation and if elsif statements.

# What is still confusing to you about Ruby?
  
#   There's nothing i find confusing about ruby in paticular.

# What are you going to study to get more prepared for Phase 1?
  
#   I'm going to go through some more ruby review exercises. 
