# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

#
# class PezDispenser
#
# 	  define method initialize takes 1 parameter: pez array
#        initialize instance variable @ pez equals pez
#     close

#     define method pez_count
#      	puts counts the number of elements in flavors 
#     close

#     define method get_pez 
#       extract element from pez array
#       return extracted element
#     close

#     define method add_pez takes 1 parameter: pez_flavor 
#       add pez_flavor to pez array
#     close
#
#     define method see_all_pez
#     	iterate through pez array and return each element
#     close
#
# close
#
#

# 3. Initial Solution

class PezDispenser
 attr_accessor :pez 

	def initialize(pez)
		@pez = pez 
	end

	def pez_count
		pez.length
	end

	def add_pez(pez_flavor)
		pez << pez_flavor
	end

	def get_pez
		pez.shift
    end

	def see_all_pez
	    pez.each do |i|
          puts i
	    end
 	end
 
end
 


# 4. Refactored Solution

# I really could not find another way to get this any more efficient than it already is. This was a
# relatively easy challenge for me(A first!) and I'm proud that I got my logic succinct and sweet.
# Open to feedback as always!


# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
	if yield
		puts "true"
	else
		raise "Assert failed!"
	end
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)


puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"


assert { super_mario.pez_count == 9 }
assert { super_mario.see_all_pez == flavors }


# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# My strategy worked! I got through this pretty swiftly and never felt seriously hindered by
# anything in particular.

# * What questions did you have while coding? What resources did you find to help you answer them?
# I didn't know what the %w() thing was about, although I could kind of tell by looking at it. It's
# an array shortcut! Also used Ruby docs on Arrays to figure exactly what methods I wanted to use when and 
# where. Other than that, no other resources were used.

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# None here! 

# * Did you learn any new skills or tricks?
# That %w() is handy.

# * How confident are you with each of the Learning Competencies?
# Implement a basic Ruby class and identify when to use instance variables()
# Translate a user story into driver code and solutions()
# Translate driver test code into a class structure using object-oriented design()

# * Which parts of the challenge did you enjoy?
# * Which parts of the challenge did you find tedious?
# I still am not seeing how the assert method is anymore helpful than just the inital driver code.
# for figuring out your code errors. Maybe this will come to me later. For now I'll just keep 
# practicing it. Sigh.

