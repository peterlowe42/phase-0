# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home." 
# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb 
# 2. What is the line number where the error occurs?
#   169
# 3. What is the type of error message?
#   syntax error
# 4. What additional information does the interpreter provide about this type of error?
#   The error message tells us that the input ended unexpectedly. It was expecting the keyword end.
# 5. Where is the error in the code?
#   The inperpreter says the error occurs at the end of line 169 which is the very end of the file.
# 6. Why did the interpreter give you this error?
#   Because there is an 'end' missing from the 'def' operation. (the 'end' on line 15 is interpreted as the end of the 'while' statement)
#   It says the error is on line 169 because it checked every line in the file looking for the 'end' and didn't find it. 
#   Line 169 was the last line it checked.
#
# --- error -------------------------------------------------------

# south_park = 'Awesome'

# 1. What is the line number where the error occurs?
#    Line 37
# 2. What is the type of error message?
#    an error in <main>
# 3. What additional information does the interpreter provide about this type of error?
#    It tells us the variabe 'south-park' is unidentified.
# 4. Where is the error in the code?
#    in the main object 
# 5. Why did the interpreter give you this error?
#    the variable has not been defined anywhere in the file

# --- error -------------------------------------------------------

 #def cartman()
 #end

# 1. What is the line number where the error occurs?
#     line 52
# 2. What is the type of error message?
#     an error executing method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
#     the method 'cartman' is undefined
# 4. Where is the error in the code?
#     in the main object
# 5. Why did the interpreter give you this error?
#     The mthod has not been defined anywhere so cannot be called.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase
=end
# 1. What is the line number where the error occurs?
#    Line 69
# 2. What is the type of error message?
#    an error executing method 'cartmans_phrase'
# 3. What additional information does the interpreter provide about this type of error?
#    the method 'cartmans_phrase' has been fed 1 argument but it expects 0 arguments
# 4. Where is the error in the code?
#    in Line 72 of main (where the method is called)
# 5. Why did the interpreter give you this error?
#    The method is not set up to accept an argument but one has been given to it. 

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('God damn it I hate you Kyle!...I hate you so much!')
=end
# 1. What is the line number where the error occurs?
#    Line 87
# 2. What is the type of error message?
#    an error executing method 'cartman_says'
# 3. What additional information does the interpreter provide about this type of error?
#    cartman_says has been given 0 arguments but expects 1
# 4. Where is the error in the code?
#    Line 91 (where the method is called)
# 5. Why did the interpreter give you this error?
#    An argument 'offensive_message' should be included when calling 'cartman_says'



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Butters')
=end
# 1. What is the line number where the error occurs?
#    Line 108
# 2. What is the type of error message?
#    an error executing method 'cartmans_lie'
# 3. What additional information does the interpreter provide about this type of error?
#    cartman_lie was expecting 2 arguments but only got 1
# 4. Where is the error in the code?
#    line 112
# 5. Why did the interpreter give you this error?
#    cartman_lie should be fed a lie AND a name but was only given a lie.

# --- error -------------------------------------------------------

#5.times { puts "Respect my authoritor!"}

# 1. What is the line number where the error occurs?
#    Line 127
# 2. What is the type of error message?
#    an error executing method '*'
# 3. What additional information does the interpreter provide about this type of error?
#    A string cannot be converted into a number (Fixnum)
# 4. Where is the error in the code?
#    line 127
# 5. Why did the interpreter give you this error?
#    You cannot multipy a string by an integer. 

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    Line 142
# 2. What is the type of error message?
#    an error executing '/'
# 3. What additional information does the interpreter provide about this type of error?
#    the code is attempting to devide something by zero.
# 4. Where is the error in the code?
#    line 142
# 5. Why did the interpreter give you this error?
#    you cannot devide by zero

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    Line 158
# 2. What is the type of error message?
#    an error executing 'require_relative'
# 3. What additional information does the interpreter provide about this type of error?
#    ruby cannot load the file cartmans_essay.md
# 4. Where is the error in the code?
#    line 158 of main
# 5. Why did the interpreter give you this error?
#    The file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
Which error was the most difficult to read?

  I didn't have trouble with any of the errors.

How did you figure out what the issue with the error was?

  I read the error messages and checked the code in the relevent lines.

Were you able to determine why each error message happened based on the code? 

  Yes

When you encounter errors in your future code, what process will you follow to help you debug?
  
  I'll read the error message and check the lines it references. If I don't understand the message I'll look it up online.
=end