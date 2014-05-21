# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Number of sides of the die
# Output:
# sides output = 
# roll output = a number 1 through the number of sides

# Steps:

# define class Die
#  give it three methods
#        1. use attribute accessor method to be able to read/write sides input
#        2. define method initialize that takes the parameter sides
#      			create instance variable sides that stores the sides parameter.
#               unless the sides parameter is less than 1
#					then puts "Side number must an integer be more than 0."

#        3. define method roll


# 3. Initial Solution

class Die
  attr_accessor :sides	

  def initialize(sides)
    @sides = sides 
	    unless sides > 1
	    raise ArgumentError.new("Must use number more than 1")
	  end
  end
  
  def roll
	1 + rand(sides)
  end

end



# 4. Refactored Solution

# 
#   
#   
#  


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
p die.sides 
p die.roll

die = Die.new(2)
p die.sides 
p die.roll

# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# Most parts of my strategy worked! The only thing that tripped me up a bit was I had the "raise"
# argument in the wrong method. Once I looked over the tests I noticed that it had to be in the 
# initialize method and fixed that.

# * What questions did you have while coding? What resources did you find to help you answer them?
# How to randomize a number 1 through n. I used this stack overflow response: 
# http://stackoverflow.com/questions/198460/how-to-get-a-random-number-in-ruby


# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't have much problem with this challenge.


# * Did you learn any new skills or tricks?
# The attribute method! Fun one to use.


# * How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode(75%)
# Implement a basic Ruby class and identify when to use instance variables(75%)
# Use if/else statements, string methods, while/until loops, Enumerable#each methods(75%)
# Find and use built-in Ruby methods to solve challenges(75%)
# Explain how instance variables and methods represent the characteristics and actions of an object.(80%)


# * Which parts of the challenge did you enjoy?
# I enjoyed learning about the attribute method family. It's still a bit confusing to me but it's a very cool
# way to clean up my code.

# * Which parts of the challenge did you find tedious?
# Nothing super tedious here... except the pseudocode as usual.


