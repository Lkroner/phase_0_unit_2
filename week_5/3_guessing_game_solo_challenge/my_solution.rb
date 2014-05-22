# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: 
# class input = answer to guessing game
# guess method input = guess to guessing game
# solved? method input = most current guess
# 
# Output:
# output guess method = if the guess is too high, low or correct
# output solved? method = true or false
# 
# Steps:
# define GuessingGame class
#  give it four methods
#        1. use attribute accessor method to be able to read/write input answer and correct
#        2. define method initialize that takes the parameter answer
#      			create instance variable answer that equals answer
#               create instance variable guess that equals nil
#					if answer is less than 0 raise argurment error "Must use number larger than 0"
# 		    close
#        3. define guess method that takes the parameter guess
# 				create instance variable guess that equals guess
# 				if guess is less than answer return symbol low
#				if guess is more than answer return symbol high
# 				if guess is equal to answer return symbol correct
#           close
#        4. define solved? method, takes no argument
#               return instance variable guess equals to answer
#           close
#  close 
# 
# 
 
# 3. Initial Solution

# class GuessingGame	
#   attr_accessor :answer, :correct
# 
#   def initialize(answer)
#     @answer = answer
#     @guess = nil
#     if answer < 0
# 	    raise ArgumentError.new("Must use number larger than 0")
# 	end    
#   end
# 
#   def guess(guess)
#   	@guess = guess
#   	if guess > answer 
#   		return :high
#   	elsif guess < answer 
#   		return :low
#   	else
#   	    return :correct	
#   	end		
#   end
# 
#   def solved?
# 	return @guess == answer
#   end 
# 
# end


# 4. Refactored Solution

class GuessingGame	
  attr_accessor :answer, :correct

  def initialize(answer)
    @answer = answer
    @guess = nil
    raise ArgumentError.new("Must use number larger than 0") if answer < 0   
  end

  def guess(guess)
  	@guess = guess
  	return :high if guess > answer 
  	return :low if guess < answer 
  	return :correct	if guess == answer  	    	
  end

  def solved?
	  @guess == answer
  end 

end

# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)
p game.solved?   # => false
p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false
p game.guess(10) # => :correct
p game.solved?   # => true

# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# Most parts of my strategy worked! However, you had to be careful when to use the attributes
# method on this one. That threw me for a bit because I needed to collect the most current version of guess
# and thus it could not be automated through the attribute method.
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# I didn't have to use any resources on this one except my driver tests and the rspec. I got it sorted
# out between the two.
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't have much problem with this challenge.
# 
# * Did you learn any new skills or tricks?
# I actually figured out a few ways to refactor my original code which was nice since this has not been 
# historically something that jumps out at me. 
# 
# * How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode(70%)
# Implement a basic Ruby class and identify when to use instance variables(80%)
# Use if/else statements, string methods, while/until loops, Enumerable#each methods(80%)
# Explain how instance variables and methods represent the characteristics and actions of an object(80%)
# 
# * Which parts of the challenge did you enjoy?
# Refactoring, for once, yay!
# 
# * Which parts of the challenge did you find tedious?
# Pseudocoding. I didn't originally pseudocode on this one because much of it was repeating concepts from the
# last challenges so I felt comfortable just diving in. I filled in the pseudocode after I finished 
# for the ceremony(and practice) of it.

