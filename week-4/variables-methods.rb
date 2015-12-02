# Release 2 Fullname greeting
puts "What is your first name"
first = gets.chomp
puts "What is your middle name"
middle = gets.chomp 
puts "What is your last name"
last = gets.chomp
puts "Hello #{first} #{middle} #{last}"
# Bigger better number
puts "What is your favorite number"
num = gets.chomp.to_i
puts (num + 1).to_s + " is a bigger better number"

=begin
##How do you define a local variable?

	You define a local variable by simply writing the name of the variable followed by an '=' followed by 
	whatever you want to assign to that variable. for example

	```ruby
      age = 30
    ```
    defines a variable 'age' and gives it a value of 30.

##How do you define a method?

	Methods are defined by using 'def method_name(perameters)' followed by the code you want the method to execute
    followed by 'end'. for example

	```ruby
      def greet(name)
         puts "Hello #{name}"
      end	
	```
	defines a method called greet that takes a perameter 'name' and prints 'Hello' follwed by 'name'

##What is the difference between a local variable and a method?
    
    A local variable is simply a container for data. Data can be read from it or assigned to it but on it's own it doesn't 
    "do" anything.

    A method is a container for code. You define what peramerters it takes in and what it 'does' with those perameters
    the method can then be called at any time later in the program and it will run your code on whatever perameters you give it
    without the need to write out all the code again.

##How do you run a ruby program from the command line?
    
     type ruby 'program_name.rb'
     e.g $ ruby address.rb 
     will run the ruby program saved in address.rb

How do you run an RSpec file from the command line?

	rspec "file_name"

What was confusing about this material? What made sense?

   I rememberd all of this material pretty well from the ruby exercises I did in preparation for my DBC application so nothing was confusing.

Links:

 https://github.com/peterlowe42/phase-0/blob/master/week-4/define-method/my_solution.rb

 https://github.com/peterlowe42/phase-0/blob/master/week-4/address/my_solution.rb

 https://github.com/peterlowe42/phase-0/blob/master/week-4/math/my_solution.rb
=end
