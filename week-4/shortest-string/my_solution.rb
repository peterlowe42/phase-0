# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
=begin
def shortest_string(list_of_words)
  shortest = nil
  list_of_words.each do |word|
  	if shortest == nil || word.length < shortest.length
  		shortest = word
  	end
  end
  return shortest
end
=end
 # Refactored version using .min. N.B. The block between the { } is to tell .min to compare the lengths rather than lexicograpical order. 
def shortest_string(list_of_words)

	return list_of_words.min {|x,y| x.length <=> y.length }

end

