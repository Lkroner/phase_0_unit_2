# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert # creates method assert
#   raise "Assertion failed!" unless yield # which raises the error message "Assertion failed" unless
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# create method assert
# which raises the error message "Assertion failed" unless yield invokes assert block
# close
#
# set name variable to string "bettysue"
# invokes assert block on string "bettysue" ==> nil. So the assert method yielded.
# invokes assert block on string "billybob" ==> RuntimeError: Assertion failed!. Because "billybob" is false and could
# not yield.

# 3. Copy your selected challenge here

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



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

game = GuessingGame.new(10)


assert { game.solved? == false}
# p game.solved?   # => false

assert { game.guess(5) == :low}
# p game.guess(5)  # => :low

assert { game.guess(20) == :high}
# p game.guess(20) # => :high

assert { game.solved? == false}
# p game.solved?   # => false

assert { game.guess(10) == :correct}
# p game.guess(10) # => :correct

assert {game.solved? == true}
# p game.solved?   # => true


# 5. Reflection

# * What parts of your strategy worked? What problems did you face?
# Didn't have any major issues with this challenge. Possibly figuring out the syntax for my assert statements?
# I got it pretty quickly though.


# * What questions did you have while coding? What resources did you find to help you answer them?
# Possibly figuring out the syntax for my assert statements? Reveiwing the yield block resources listed helped.
# I got it pretty quickly.

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# No troubes with this one yet.

# * Did you learn any new skills or tricks?
# Yes learned about using the assert method to test true/false.

# * How confident are you with each of the Learning Competencies?
# Translate driver test code into assert statements(87%)

# * Which parts of the challenge did you enjoy?
# Brushing up on yield was nice. It's been awhile since I've worked with it.

# * Which parts of the challenge did you find tedious?
# Nothing in particular.

