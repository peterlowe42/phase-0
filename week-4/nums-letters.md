#Release 1

##What does puts do?
 
  The puts command returns nil and prints the output of a method to the console on a new line. 
  It is the most commonly used command for printing results in ruby.

##What is an integer? What is a float?

  An interger is any whole number i.e. a number without a decimal point.  A float is short for 'floating point number' and is any number with a decimal point.  

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
   
  Ineger devision will only return an integer e.g. 7/2 == 3.  Float devision will return a float as an answer e.g. 7.0/2.0 == 7.5.  An easy way to think of it is to imagine that integer devision is like deviding items that are indivisble.  For example if a Plane ticket to San Francisco costs $200 and you have $500 you can buy 2 tickets NOT 2.5 (no-one will sell you half a plane ticket.)

#Release 2

Hours in a year:

```ruby

  puts 24*365  

```
Minutes in a decade 

```ruby

   puts 60*24*365*10

```   
 
(this does not take into account leap years)

# Reflection


##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

  Ruby has simple built in methods to handle basic maths functions.  The code for these is very intuative as it corresponds with ordinary mathmatical notation i.e + for addition - for subtraction / for division and * for multiplication. e.g.

  1 + 2 => 3
  4 - 1 => 3
  5 * 2 => 10 
  8 / 2 => 4

What is the difference between integers and floats?

 Integers are whole numbers with no decimal points.  Floats have decimal points.

What is the difference between integer and float division?
 
 Integer division will only return integers (any non integer result will be rounded down e.g. 9/2 => 4).  Float division will return the exact decimal value (e.g 9.0/2.0 => 4.5)
 
What are strings? Why and when would you use them?

 Strings are groups of letters (they can also contain symbols).  Strings are used to to hold any information that does not have a specific value.  For example if you wanted your program to remember the users name the name would be stored as a string. 

What are local variables? Why and when would you use them?

 A local variable is any variable that is defined and used localy within your program.  They are used to hold any data that you may want to use or alter later in the program. 

How was this challenge? Did you get a good review of some of the basics?

 The challenge was very simple. I think I spent more time making the files and going through git workflow to get them online than i did writing or researching the code. The only thing I needed to look up was how to convert an integer to a float and because ruby is so intuative I could have guessed and got the same result.

