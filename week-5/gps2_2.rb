# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: create new hash called grocery_list with defult value 1
  # split input into array
  # add each item of array to the hash as a key value
  # 
  # print the list to the console [can you use one of your other methods here?]
# output: grocery_list hash

def make_list(items)
	grocery_list = Hash.new(1)
	item_array = items.split
	item_array.each do |item|
		grocery_list[item] = 1
	end
	return grocery_list
end

grocery_list = make_list("")

# Method to add an item to a list
# input: item name and optional quantity
# steps: if quantity not specified set value to 1
#  Otherwise set value to quantity
# output: grocery_list
def add_item(grocery_list,item,quantity = nil)
	if quantity == nil 
		grocery_list[item] = 1
	else
	    grocery_list[item] = quantity
	end
	return grocery_list
	print_list(grocery_list)
end

add_item(grocery_list, "cheese", 3)	
# Method to remove an item from the list
# input: grocery_list, item we want to delete
# steps: if the item isn't on the grocery list, return error message
# otherwise remove item from grocery_list
# return grocery_list
# output: updated grocery_list

def remove_item (grocery_list, item)
 if grocery_list[item] == nil
 	puts "Item not on list."
 else
 	grocery_list.delete(item)
 end
 return grocery_list
 print_list(grocery_list)
end



# Method to update the quantity of an item
# input: grocery_list, item_name, new_quantity
# steps: check if the item is on grocery list
# if not on grocery_list, print an error message
# if on grocery_list, assign new quantity to the key by adding new quantity to previous quantity
# output: updated grocery_list

def update_quantity (grocery_list, item, quantity)
 if grocery_list[item] == nil
 	puts "Item not on list."
 else
 	add_item(grocery_list,item,quantity)
 end
 return grocery_list
 print_list(grocery_list)
end



# Method to print a list and make it look pretty
# input: grocery_list
# steps: print grocery_list to screen with item: quantity on each line
# output: prettified grocery list

def print_list(grocery_list)
 grocery_list.each do | key, value |
 	puts "#{key}: #{value.to_s}"
 end
end

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)

remove_item(grocery_list, "lemonade")

update_quantity(grocery_list, "ice cream", 1)

print_list(grocery_list)

=begin
	
What did you learn about pseudocode from working on this challenge?
  
  I don't think I learned anything new about pseudocode but the practice was very useful.

What are the tradeoffs of using Arrays and Hashes for this challenge?
   
  We knew from the begining that we wanted to use a hash. A Hash was the only logical way to store the item names and thier quantities in one object. 

What does a method return?
  
  A method returns whatever you tell it to return.  If you don't specify anything it will return the last item that was 'touched' in the method. 

What kind of things can you pass into methods as arguments?

 Any ruby object

How can you pass information between methods?
 
 By defining a variable outside of the methods and updating it within the methods. 

What concepts were solidified in this challenge, and what concepts are still confusing?
	
	All the concepts of how to create and update hashes where solidified.   I'm still not totally clear on the best approach to refactoring but I think this
	will come with experience. 
=end