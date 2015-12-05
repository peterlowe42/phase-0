# Factorial

# I worked on this challenge [with:Michal ].
=begin
create new variable num equal to input-1
multiply input by num
subract 1 from num
repeat until num = 0
=end

def factorial(input)
	if input == 0 
		return 1
	end
  num = input - 1 
  result = input 
   
  while num >= 1
    result = result * num
    num -= 1
  end
  return result
end


