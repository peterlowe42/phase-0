# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
=begin Original before refactoring

def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0
  list_of_integers.each do |i|
  	if (i >= lower_bound.to_i) && (i <= upper_bound.to_i)
  		count += 1
  	end
  end
  return count
end

=end
# Refactored soluition
def count_between(list_of_integers, lower_bound, upper_bound)
	list_of_integers.count {|i| i >= lower_bound && i <= upper_bound}
end