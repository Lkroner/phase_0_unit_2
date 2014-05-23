# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# Initial Solution

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])
p create_word(boggle_board, [0,1], [0,2], [1,2])

#-------------------------------------------------------------------------------

# Part 1: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Input = The array you would like access in a specific row of your board
# Output = The array in the row you selected
# Steps = 

# define method called get_row that takes the parameter row and board
#    return the value of the key in index row of board
# close

# Initial Solution

def get_row(row, board)
	board[row]  
end

# Refactored Solution

# Can't really think of a way to make this any shorter or more concise than it already is.

# DRIVER TESTS GO BELOW THIS LINE
 
p get_row(1, boggle_board) #=>  ["i", "o", "d", "t"]

# Reflection 

# * What parts of your strategy worked? What problems did you face?
# Once I decided to take the liberty of adding another parameter to the methods things went smoothly.
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# No questions on this one. I just worked on a pair session where we discussed how to select a specific
# vlaue of a hash within a hash so I knew just how to use it here.
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't have much problem with this challenge.
# 
# * Did you learn any new skills or tricks?
# Splat operator!...Which you can use several ways:
# 1. To split an array into parameters to a function OR 
# 2. (As it's used in the create_word method) It's used to accept an arbitrary number of arguments. COOL.
#  
# * How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode (80%)
# Create, access, and traverse nested data structures(80%)
# Explain how data structures and classes can model a real-world object(80%)
# Explain how instance variables and methods represent the characteristics and actions of an object(85%)
# 
# * Which parts of the challenge did you enjoy?
# Solved it pretty quickly. Huzzah.
# 
# * Which parts of the challenge did you find tedious?
# Doing another reflection after this... BORING READ ALERT: Might be pretty similar.
# 

#-------------------------------------------------------------------------------

# Part 2: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Input = The column number you would like to retrieve from each array of board
# Output = The index value you would like to retrieve from each array of board
# Steps = 

# define method get_colum that takes the parameters col(the column number) and board
# 	Iterate through each array, 
#   take the value stored in the selected column number 
#   put into an array
# close

# Initial Solution

def get_col(col, board)
   board.map{ |board| board[col] } 
end

# Refactored Solution

# Again, can't really think of a way to make this any shorter or more concise than it already is.

# DRIVER TESTS GO BELOW THIS LINE

p get_col(1, boggle_board)  #=>  ["r", "o", "c", "a"]

# Reflection 

# * What parts of your strategy worked? What problems did you face?
# Same as previous, went smoothly once I decided to use two parameters and then which method to take and
# store my new array.
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# As mentioned above, fhad to decide which method to use to create my new array of indexed elements
# of the old arrays.
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't have much problem with this challenge.
# 
# * Did you learn any new skills or tricks?
# I decided on using .map but he's an old bud by now.
# 
# * How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode (80%)
# Create, access, and traverse nested data structures(80%)
# Explain how data structures and classes can model a real-world object(80%)
# Explain how instance variables and methods represent the characteristics and actions of an object(85%)
# 
# * Which parts of the challenge did you enjoy?
# Same.
# 
# * Which parts of the challenge did you find tedious?
# Yeah double reflections.
