#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
 attr_reader :name
 def initialize (name)
 	@name = name
 end

end


class Greetings

   def greeting
   	name_data = NameData.new("Skywalker")
   	return "Greetings young #{name_data.name}, i've been expecting you."
   end
end

emperor = Greetings.new
p emperor.greeting

# Reflection
=begin 
Release_1

What are these methods doing?

  The print_info method prints all the instance variables with blank lines in between.  All the what_is methods simply return one of the instance variables
  they do not print anything.  The change_my methods all change the value of one of the instance variables. 

How are they modifying or returning the value of instance variables?

  by using return to return and @variable = argument to change the value.  The = syntax in the change_my methods allow the user to input new values
  using = rather than (). 

  Release_2 

What changed between the last release and this release?

  The way the age variable is returned.

What was replaced?
  
   The what_is_age method has been removed and 'attr_reader :age'  added.  This means that rather than using p instance_of_profile.what_is_age to print
   the value of age we can simply use p instance_of_profile.age


Is this code simpler than the last?

yes


  Release_3

What changed between the last release and this release?

  The way the age variable is changed.

What was replaced?
  
   The change_my_age method has been removed and 'attr_writer :age'  added.  This means that rather than using instance_of_profile.change_my_age = 28
   to change the value of age we can just use instance_of_profile.age = 28

Is this code simpler than the last?

yes


Release_5 

What is a reader method?

  A reader method allows a class variable to be read by instance_name.variable_name

What is a writer method?
  
  A writer method allows a class variable to be changed with instance_name.variable_name = new_value

What do the attr methods do for you?

 Allow class variables to be read or written or both. 

Should you always use an accessor to cover your bases? Why or why not?
 
 No because if you don't want a varaible to be changable using accessor could leave you open to acidental changes. 

What is confusing to you about these methods?

 Nothing




=end