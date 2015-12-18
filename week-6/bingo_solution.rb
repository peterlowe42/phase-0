# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:Create Bingo Game

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array bingo_array containing the letter B,I,N,G,O 
  #assign i to a random number between 0 and 4 
  #assign n to a random number between 1 and 100 
  #return bingo_array[i] followed by n

# Check the called column for the number called.
  #iterate over the bord array and compare position [i] of each array to n
# If the number is in the column, replace with an 'x'
  #if numbers match replace number with an 'x'
# Display a column to the console
  #print the same index from each array in board to the screen on a new line.  

# Display the board to the console (prettily)
  #print all columns allog side eachother. 

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @bingo_array = ["B","I","N","G","O"]
  end

  def call
    i = rand(5)
    n = rand(1..100)
    @call = [i,n]
    return "#{@bingo_array[i]}#{@call[1]}"
  end
  
  def check
    @bingo_board.each do |row|
      if row[@call[0]] == @call[1]
        row[@call[0]] = "X"
      end
    end
    print_board
  end

  def print_board
   @bingo_board.each do |row|
      puts row.each {|p| p }.join(" ")
    end
  end
  
end

# Refactored Solution

# I'm happy with it as is

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

# new_game = BingoBoard.new(board)
# 50.times do
# p new_game.call
# new_game.check
# end

# Release 5 Optional challenge 
# pseudocode 
# Output: leagal bingo board. 
# create new array called leagal_board containing 5 arrays of length 5.
# populate first array with random numbers from 1-15
# populate second array with random numbers from 16-30
# populate third array with random numbers from 31-45 then replace the third element with "F" to represent the free space
# populate fourth array with random numbers from 46-60
# populate fifth array with random numbers from 61-75
# transpose the leagal_board array 

class LeagalBoard

  def initialize 
    @leagal_board = [[nil,nil,nil,nil,nil],
                     [nil,nil,nil,nil,nil],
                     [nil,nil,nil,nil,nil],
                     [nil,nil,nil,nil,nil],
                     [nil,nil,nil,nil,nil]]
    @leagal_board = populate(@leagal_board)

  end

  def populate(board)
    board[0].map! {|i| i = rand (1..15)}
    board[1].map! {|i| i = rand (16..30)}
    board[2].map! {|i| i = rand (31..45)}
    board[2][2] = "F"
    board[3].map! {|i| i = rand (46..60)}
    board[4].map! {|i| i = rand (61..75)}
    board = board.transpose
  end
  
  def print
 
   @leagal_board.each do |row|
      puts row.each {|p| p }.join(" ")
    end
  end

end

  # board = LeagalBoard.new
  # board.print


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

#   It was pretty easy. I think i've got my pseudocoding style worked out pretty well now. I'd like to think its pretty good.

# What are the benefits of using a class for this challenge?
  
#   By using a class you can create many differnt instances of the game using differet boards each time.  It also allowed us to practice making classes some more. 

# How can you access coordinates in a nested array?

#   outer_array[i][n] where i is the index of the inner array and n is the index of the element you want in the inner array. 

# What methods did you use to access and modify the array?
  
#   .each and .map 

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

#   I found .transpose while researching for the optional challenge.  It takes a new transposed array.  i.e the first element of the new array is made up of the first elements
#   from each of the arrays in the origional and so on.  if your representing your array as a matrix it swaps the rows and columns. 

# How did you determine what should be an instance variable versus a local variable?

#   If I needed to use the variable in another method i  made it an instance variable. 

# What do you feel is most improved in your refactored solution?

#   It's the same. I could probably have refactored the 'populate' method of the bonus challenge but it's ok how it is and i'd already spent enough time on this exercise. 
#   