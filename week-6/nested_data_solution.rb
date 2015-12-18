# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array [1] [1] [2] [0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash [outer] [inner] ["almost"] [3]
p hash [:outer] [:inner] ["almost"] [3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data [:array] [1] [:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def add(array)
  array.map! {|i| i +=5 } # refactor: we turned a 3-line section into 1

  return array
end

number_array.map! do |i|
  if i.kind_of? Array
    add(i)
  else
     i += 5
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


def ad_ly (array)
 array.each do |i|
   if i.kind_of? (Array)
     ad_ly (i)
   else
    i << "ly"
  end
 end
end
# nested_array.each do |element|
#   if element.kind_of?(Array)
#     element.each {|inner| p inner}
#   end
# end

# Reflection
# What are some general rules you can apply to nested arrays?

#   Think carfully about what index numbers alply to each array within the outer array.  When looking up a specific element start with the index for the outer array 
#   and work inwards. Eg array[1][2] will return the element at index 2 of the array at index 1 of array. 

# What are some ways you can iterate over nested arrays?

#   You can use .kind_of? (Array) to establish weather an element is an array and if it is itereate over it. 

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
 
#   I didn't find any new methods but this was the first time I had used .kind_of?.  The bonus challenge was also the first time i had succesfully used recursion. 
