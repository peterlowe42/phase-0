# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
=begin
Original before refactoring

def longest_string(list_of_words)
  longest = nil
  list_of_words.each do |word|
  	if longest == nil || word.length > longest.length
  		longest = word
  	end
  end
  return longest
end

=end

# Refactored version
def longest_string(list_of_words)
	return list_of_words.max {|x,y| x.length <=> y.length}
end