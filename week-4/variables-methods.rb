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