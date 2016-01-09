# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# input: a multidimentional ingo board array
# output: "BINGO! Your a winner" if one of the win conditions is met else output 'Sorry your not a winner yet'. 
# 
#If number of 'x' on whole board is less than 5 output lose message. 
# else call methods for each of the win cases (Horizontal, vertical, diagonal.). If any method returns true output win message
# else output lose message. 
# 
# Check horizontal: Iterate through row arrays to see if any of them contain only 'x' values. return 'true' else 'false'
#
# Check vertical: iterate through the first row array to find an 'x' value. If no 'x' value exists in this array then none of the other win conditions can be met so 
# end process and return 'false'. 
# if 'x' exists in row 1 
# check same index of rows 2-5 
# if they all contain 'x' return true.

# Check diagonal. 
# If the 'x' in row 1 is not at index 0 or 4 false. 
# If 'x' at index 0 of row 1 
# check index 1 of row 2
	# 		  2 of row 3
	# 		  3 of row 4
	# 		  4 of row 5
	# if all of these are 'x' return true.		  
# If 'x' at index 4 of row 1 
# check index 3 of row 2
# 			  2 of row 3
# 			  1 of row 4
# 			  0 of row 5 
# if all are 'x' return true.




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

loser_one = [[46, 43, 'x', 43, 12],
			 [23,'x', 'x', 13,'x'],
			 [23, 56, 'x', 53, 12],
			 [43,'x', 'x', 43, 23],
			 [32, 21, 23, 12, 43]]                  

diamond = [[46, 43, 23, 43, 12],
		    [23, 35, 'x', 13, 65],
			[23, 'x','x', 'x', 12],
		    [43, 23, 'x', 43, 23],
		    [32, 21, 23, 12, 43]]               


inside_corners = [[46, 43, 23, 43, 12],
		    [23, 'x', 41,'x', 65],
			[23, 24, 'x', 63, 12],
		    [43, 'x', 23, 'x', 23],
		    [32, 21, 23, 12, 43]]

outside_corners = [['x', 43, 23, 43, 'x'],
		    	[23, 36, 41, 12, 65],
				[23, 24, 'x', 63, 12],
		    	[43, 25, 23, 64, 23],
		    	['x', 21, 23, 12, 'x']]


postage_stamp = [[31, 43, 23, 43, 14],
		    	[23, 36, 41, 12, 65],
				[23, 24, 'x', 63, 12],
		    	['x','x', 23, 64, 23],
		    	['x','x', 23, 12, 42]]


# Initial Solution
# class BingoScorer

#   def initialize(board)
#    @board = board
#   end

# # check total number of 'x' in whole borad
#   def x_count 
#    x_count = 0
#    @board.each do |row|
#    row_count = row.count('x')
#    x_count += row_count
#    end
#  	return x_count
#   end

# # check for win by calling methods
#   def win_check
# 	if x_count < 5 
# 		return "You need at least 5 numbers to win"
# 	elsif horizontal_check == true || vertical_check == true || diagonal_check == true
# 		return "BINGO!! Your a winner"
# 	else
# 		return "Sorry you're a loser"
# 	end
#   end

# # check for horizontal win
#   def horizontal_check 
# 	@board.each do |row|
# 		if row.count('x') == 5
# 			return true
# 		end
# 	end
# 	return false
#   end

# #check for vertical win
#   def vertical_check
#   	i = 0
#     @board[0].each_with_index do |item, index|
#   		if item == 'x'
#   		  i = index
#   	    end
#   	end	

#   	@board.each do |row|
#   	   if row[i] != 'x'
#   	     return false
#   	   end
#   	end
#   	  return true
#   end

# #check for diagonal win 
#   def diagonal_check
#   	if @board[0][0] == 'x'
#   		i=0
#   		@board.each do |row|
#   			if row[i] != 'x'
#   				return false
#   			end
#   			i += 1
#   		end	
#   	  return true
#   	elsif @board[0][4] == 'x'  
#   		i=4
#   		@board.each do |row|
#   			if row[i] != 'x'
#   				return false
#   			end
#   			i -= 1
#   		end	
#   		return true
#   	end
#   	return false
#   end

# end

# Refactored Solution

class BingoScorer

  def initialize(board)
   @board = board
  end

# check for win by calling methods
  def win_check
  	checks = [horizontal_check, vertical_check, diagonal_check, diamond_check,
  			  inside_check, outside_check, postage_check]
	
	if checks.include?(true)
		return "BINGO!! Your a winner"
	else
		return "Sorry you have not won"
	end
  end

private
# check for horizontal win
  def horizontal_check 
	@board.each do |row|
		return true if row.count('x') == 5
	end
	return false
  end

#check for vertical win

   def vertical_check
  	i = 0
    if @board[0].include?('x')
  	i = @board[0].find_index('x')
    end 
    @board.each {|row| return false if row[i] != 'x'}
    return true
  end

#check for diagonal win 
  def diagonal_check
  	
  	def diagonal_iteration(index)
  		i = index
  		@board.each do |row|
  		   return false if row[i] != 'x'
  		   i += 1 if index == 0
  		   i -= 1 if index == 4
  		end
  		return true
  	end

  	if @board[0][0] == 'x'
  		return diagonal_iteration(0)
    elsif @board[0][4] == 'x'  
  		return diagonal_iteration(4)
    end
  	return false
  end
  
  #checks shape where a,b,c,d,e are two digit coordinate arrays
  def shape_check(a,b,c,d,e)
    shape = [@board[a[0]][a[1]],
			@board[b[0]][b[1]],
			@board[c[0]][c[1]],
			@board[d[0]][d[1]],
			@board[e[0]][e[1]],] 
	return shape.count('x') == 5		
  end

  def diamond_check
  	return shape_check([1,2],[2,1],[2,2],[2,3],[3,2])  
  end

  def inside_check
  	return shape_check([1,1],[1,3],[2,2],[3,1],[3,3])
  end
  
  def outside_check
  	return shape_check([0,0],[0,4],[2,2],[4,0],[4,4])
  end

  def postage_check
  	return shape_check([2,2],[3,0],[3,1],[4,0],[4,1])
  end


end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
horizontal_board = BingoScorer.new(horizontal)
vertical_board = BingoScorer.new(vertical)
left_board = BingoScorer.new(right_to_left)
right_board = BingoScorer.new(left_to_right)
loser_board = BingoScorer.new(loser_one)
diamond_board = BingoScorer.new(diamond)
inside_board = BingoScorer.new(inside_corners)
outside_board = BingoScorer.new(outside_corners)
postage_board = BingoScorer.new(postage_stamp)

puts horizontal_board.win_check 
puts vertical_board.win_check 
puts left_board.win_check 
puts right_board.win_check 
puts diamond_board.win_check 
puts inside_board.win_check 
puts outside_board.win_check 
puts loser_board.win_check 
puts postage_board.win_check 
# Reflection

# What concepts did you review or learn in this challenge?

#   This was a good review of designing and working with classes and multi dimentional arrays

# What is still confusing to you about Ruby?
  
#   There is nothing I find very confusing in the ruby material we have done so far. I still have vary little idea of hoe rspec works
#   which id why i stuck with simple driver code to test my solution. 

# What are you going to study to get more prepared for Phase 1?
    
#   I'm going to go through as many of the ruby review exercises as I can especially the ones that cover new concepts. I'd also like to do some
#   more research into rspec if i have time. 
