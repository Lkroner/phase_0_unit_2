# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: 
# Number of sides of the die
# Output:
# sides output = number of die sides
# roll output = a number 1 through the number of die sides
#
# Steps:
# define class Die
#  give it four methods
#        1. use attribute accessor method to be able to read/write sides input
#        2. define method initialize that takes the parameter labels
#      			create instance variable labels that stores the labels parameter array.
#               unless the labels array is empty
#					then puts "List of labels is empty"
# 		    close
#        3. define sides method
# 				return the number length of the labels array
#        4. define roll method
#               return a random index value of sides
#  close all


# 3. Initial Solution

# class Die
#   attr_accessor :labels

#   def initialize(labels)
#   	  @labels = labels
#   		raise ArgumentError if labels.empty? 
#   end

#   def sides
#   	return labels.length
#   end
    
#   def roll
#   	return labels[rand(sides)]
#   end
# end



# 4. Refactored Solution

class Die
  attr_accessor :labels

  def initialize(labels)
    @labels = labels
      raise ArgumentError if labels.empty? 
  end
  def sides
    labels.length
  end 
  def roll
    labels[rand(sides)]
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(["dog", "cat", "bird", "unicorn", "elephant"])
p die.sides 
p die.roll

die = Die.new(["a", "b", "c", "d", "e"])
p die.sides 
p die.roll


# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# Most parts of my strategy worked! The only thing that I ran into is that I was overcomplicating
# printing the roll and sides modes. I just needed to have them to return!
# 

# * What questions did you have while coding? What resources did you find to help you answer them?
# How to randomize an array of strings. I used this stack overflow response: 
# http://stackoverflow.com/questions/3482149/how-do-i-pick-randomly-from-an-array
# However I kind of ended up doing it my own way. Cool.


# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't have much problem with this challenge.


# * Did you learn any new skills or tricks?
# Just had some more practice with the class attributes method.


# * How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode(80%)
# Implement a basic Ruby class and identify when to use instance variables(75%)
# Use if/else statements, string methods, while/until loops, Enumerable#each methods(80%)
# Find and use built-in Ruby methods to solve challenges(80%)


# * Which parts of the challenge did you enjoy?
# I enjoyed finding a pretty clean way to execute this problem!
# 

# * Which parts of the challenge did you find tedious?
# Nothing super tedious here... The pseudocoding helped me set this up right actually. I still hate it though.
