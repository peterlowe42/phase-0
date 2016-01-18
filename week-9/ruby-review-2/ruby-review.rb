# Reverse Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.

# Pseudocode
# split input string into array of Words
# reverse each word 
# join array into single string
# return reault


# Initial Solution
# def reverse_words (string)
#    word_array = string.split(" ")
#    word_array.each {|word| word.reverse!}
#    output = word_array.join(" ")
#    return output  
# end


# Refactored Solution
def reverse_words (string)
   words = string.split(" ").map! {|word| word.reverse}
   return words.join 
end


p reverse_words("word")
p reverse_words("two words")
p reverse_words("This is a sentence")




# Reflection
