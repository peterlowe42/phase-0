# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below
=begin  Origional before refactoring

def array_concat(array_1, array_2)
  result = []
  array_1.each {|i| result << i}
  array_2.each {|i| result << i}
  return result
end

=end

# refactored using .concat method found in ruby docs. 
def array_concat(array_1, array_2)
	return array_1.concat(array_2)
end