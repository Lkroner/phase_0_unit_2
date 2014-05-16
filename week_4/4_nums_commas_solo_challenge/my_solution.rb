# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? A number
# What is the output? A number seperated by comma
# What are the steps needed to solve the problem?

# define method separate_comma takes parameter of one number
#              define variable that: converts the number to a string
# 									 split into separate digits
#			                         reverses string order
#  									 group sets of three starting from the back
# 									 map groupings into array, join them together and reverse grouping order
#   								 reverse mapped array and join with ","
#

# 2. Initial Solution

def separate_comma(number)
	separate = number.to_s.split("").reverse.each_slice(3).map {|y| y.join("").reverse}.reverse.join(",")
	puts separate
end 
           
# 3. Refactored Solution

# This is a pretty ugly way to create comma's in numbers but unfortunately I couldn't think of a way to get it
# any cleaner than this.


# 4. Reflection 
# 
# What parts of your strategy worked? What problems did you face?
# Well my code works! So that cool, even though I personally feel like there is probably a cleaner way to do this
# challenge. I was very heavy on the use of methods.  
#
# What questions did you have while coding? What resources did you find to help you answer them?
# My questions all revolved around finding methods that could help me implement the steps I had set out in my 
# pseudocode.  

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I really wanted to include more logic with if/else statements here but couldn't find a way to do. 

# Did you learn any new skills or tricks?
# I definitely got more familiar with a few methods on this one: .reverse, .join, .map, and .each_slice. It was
# good practicing with them.

# How confident are you with each of the Learning Competencies?
# Break down problems into implementable pseudocode
# Iterate through data structures and manipulate the content
# Use if/else statements, string methods, while/until loops, Enumerable#each methods
# Use strings, integers, arrays, and/or hashes

# Feeling a bit more mroe confident with each of these, even if I couldn't figure out how to use if/else statements
# this round.

# Which parts of the challenge did you enjoy?
# Being done.

# Which parts of the challenge did you find tedious?
# Still hate pseudocoding but it did help me map out a problem that would have otherwise been very hard to get
# straight. 