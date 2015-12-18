 #Bakery Serving Size portion calculator.


def batch_calc(item_to_make, num_of_ingredients)
 
  ingredients_per_item = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless ingredients_per_item.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  ingredients_required = ingredients_per_item[item_to_make]  
  remaining_ingredients = num_of_ingredients % ingredients_required

  
  number_of_extra_cakes = remaining_ingredients / ingredients_per_item["cake"]
  number_of_extra_cookies = remaining_ingredients % ingredients_per_item["cake"]
  
  
  if remaining_ingredients == 0 
    return "Calculations complete: Make #{num_of_ingredients /ingredients_required} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients /ingredients_required} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Available additional baking items: #{number_of_extra_cakes} cakes and #{number_of_extra_cookies} cookies."
  end
    
end

p batch_calc("pie", 7)
p batch_calc("pie", 8)
p batch_calc("cake", 5)
p batch_calc("cake", 7)
p batch_calc("cookie", 1)
p batch_calc("cookie", 10)
# p batch_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?

#   I learned about the inmportance of good variable names.  Naming variables in a way that makes it obvious what they are for makes it much easier for an outsider
#   to understand what your code is doing. 

# Did you learn any new methods? What did you learn about them?

#   I did not learn any new methods

# What did you learn about accessing data in hashes? 

#   Nothing I didn't already know.

# What concepts were solidified when working through this challenge?
 
#   The main thing that was solidified was the process of refactoring. I've done a lot of refactoring before but never really had a specific process for it.  Our guide 
#   was really helpful in explaining the steps needed for good refactoring.  