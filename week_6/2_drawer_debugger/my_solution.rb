# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer
   attr_reader :contents, :open 
# Are there any more methods needed in this class? ???

	def initialize
	  @contents = []
	  @open = true
	end

	def open
      @open = true
	end 

	def close
      @open = false
	end 

	def add_item(item)
	  @contents << item
	  # puts "#{item} has been added to the drawer."
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? ==> Pop removes the last item in the array.
	  @contents.delete(item)
	  # puts "#{item} has been removed from the drawer."
	end

	def dump # what should this method return? It should clear the array @contents.
	  puts "Your drawer is empty."
	  @contents.clear
	end

	def view_contents	  
	  puts "The drawer contains:"

	  if @contents.empty?
	     puts "Nothing! HAHA!" 
	  else
	    @contents.each {|silverware| puts "- " + silverware.type }
	  end
	end
end 

class Silverware
  attr_reader :type, :clean
# Are there any more methods needed in this class? Yes, added clean_silverware method.

	def initialize(type, clean = true)
	  @type = type
	  @clean = clean
	end

	def eat
	  puts "eating with the #{type}"
	  @clean = false
	end

	def clean_silverware
		@clean = true
		puts "It is clean!"
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? Should return nothing. Going to see if I can get it to say 
# "Nothing!"

fork = Silverware.new("fork")
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents
removed_fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
removed_fork.eat
removed_fork.clean_silverware

silverware_drawer.view_contents
 

#BONUS SECTION

# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE


def assert
  raise "Assertion failed!" unless yield
end

assert { silverware_drawer.view_contents == "Nothing! HAHA!" }
assert { fork.eat == false }
# assert { fork == "fork"}
assert { removed_fork.clean_silverware == true }



# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# 

# * What questions did you have while coding? What resources did you find to help you answer them?
# Lots of questions here: What's pop? (http://rubydoc.info/stdlib/core/1.9.3/Array:pop)
# How do I entirely clear an array of it's elements? (http://apidock.com/ruby/Array/clear)
# What's a NoMethodError? (http://www.ruby-doc.org/core-2.1.2/NoMethodError.html)
# What's the empty array syntax again? (http://ruby-doc.org/core-2.0/Array.html#method-i-empty-3F)

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# I'm getting used to the assert method a bit more here but didn't use it until I had already passed most 
# of the tests. So obviously I need to implement to help me test and not wait till the end.

# * Did you learn any new skills or tricks?
# Got a good bruch up on a few methods and firguring out what ruby errors REALLY mean. Now to implement
# elsewhere...

# * How confident are you with each of the Learning Competencies?
# Use error messages to correct syntax mistakes and/or drive development(80%)
# Define a method's responsibility(90%)

# * Which parts of the challenge did you enjoy?
# I actually really enjoyed testing here. 

# * Which parts of the challenge did you find tedious?
# Writing tests and assertions still a bit annoying to me. 


