# Leap Years

<<<<<<< HEAD
# I worked on this challenge [by myself, with: Gary].
=======
# I worked on this challenge [ with: Gary].
>>>>>>> d9e040d08523045f62933e43c613cdad95ca8a61


# Your Solution Below
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    true
  elsif year % 400 == 0
    true
 else false
  end
    
end
