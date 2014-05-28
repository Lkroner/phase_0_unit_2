# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
  attr_accessor :board, :coords

  def initialize(board)
  	@board = board
  	@coords = coords
  end

  def create_word(*coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
 
  def get_col(col)
    board.map{ |board| board[col] } 
  end

  def get_row(row)
	board[row]  
  end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
boggle_board.create_word([1,2], [1,1], [1,2], [0,3])


# 4. Refactored Solution

# 3. Initial Solution
class BoggleBoard
  attr_accessor :board, :coords

  def initialize(board)
  	@board = board
  	# @coords = coords Note: I only refactored this one line. Open to any ideas how to refactor here!
  end

  def create_word(*coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
 
  def get_col(col)
    board.map{ |board| board[col] } 
  end

  def get_row(row)
	board[row]  
  end

end


# 1. DRIVER TESTS GO BELOW THIS LINE
# Create driver test code to retrieve a value at a coordinate here:

# Write out a test with it's expectation in a comment:
p boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) #==> "code"
p boggle_board.create_word([0,1], [0,2], [1,2]) #==> "rad"
p boggle_board.get_row(1) #=>  ["i", "o", "d", "t"]
p boggle_board.get_col(1)  #=>  ["r", "o", "c", "a"]

# Now print out all the rows and columns of the board as strings. 
# You should end up with 8 four letter words. Are there any real words shown? 
# There is one real word "take".
p boggle_board.get_row(0).join
p boggle_board.get_row(1).join
p boggle_board.get_row(2).join
p boggle_board.get_row(3).join
p boggle_board.get_col(0).join 
p boggle_board.get_col(1).join 
p boggle_board.get_col(2).join 
p boggle_board.get_col(3).join 

# Now write some driver code to access an individual coordinate in your 
# boggle_board object. Can you access the "k" character at row 3 column 2?
p boggle_board.create_word([3,2])

# implement tests for each of the methods here:

def assert
	if yield
		puts "true"
	else
		raise "Assert failed!"
	end
end
 
assert { boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" } 
assert { boggle_board.create_word([0,1], [0,2], [1,2]) == "rad" }
assert { boggle_board.get_row(0).join == "brae" }
assert { boggle_board.get_col(1).join  == "roca" }
assert { boggle_board.create_word([3,2]) == "k"}


# 5. Reflection 
#
# * You just made a transition from procedural programming to object-oriented programming! How is the 
# implementation different? What are the benefits to using the Object Oriented approach (even if it
# is a bit more code?)
# It seems to me that procedural programming starts with first listing steps where as the OO approach focuses
# on making sure the object first meets a certain criteria of characteristics tests and developing your
# steps around the code testing true for these predetermined characteristics. 
#
# * What parts of your strategy worked? What problems did you face?
# Didn't have any serious issues with this one. I think looking at some other solutions last challenge
# after I found I was still struggling a bit with the assert method helped me out. I passed all of
# my method tests easily this time!
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# Nothing I had to use resources for. Just finding a way to implement my existing code into the 
# BoggleBoard class.
#
# Oh! I did have to remind myself with method to use to join an array into a string. The answer was
# in the question!(http://stackoverflow.com/questions/3500814/ruby-array-to-string-conversion)
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Liked I discussed above.
#
# * Did you learn any new skills or tricks?
# Starting to wrap my brain a bit more around what Object Oriented means.
#
# * How confident are you with each of the Learning Competencies?
# Create, access, and traverse nested data structures. (80% - Felt more solid with this after this exersize.)
# Implement a basic Ruby class and identify when to use instance variables (80% - Same.)
#
# * Which parts of the challenge did you enjoy?
# I enjoyed creating the tests for this code and bringing all of my prior code together for a class.
# 
# * Which parts of the challenge did you find tedious?
# Nothing I found extremely tedious.


