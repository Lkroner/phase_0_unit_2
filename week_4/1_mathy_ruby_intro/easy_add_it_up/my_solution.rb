# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

#Total Method

# 1. Pseudocode

# What is the input?
# Input = Array of Numbers

# What is the output? (i.e. What should the code return?)
# Output = Sum of Array

#What are the steps needed to solve the problem?
#Input 1 array 
#Iterate through array
#Add up all iterated indices 
#Return sum of indices

# 2. Initial Solution

#def total(array)
#   array.inject(0) |x, a| 
#    	x + a 
#    	return sum
#end


# 3. Refactored Solution

def total(array)
	array.inject {|x, a| x + a}
end


# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# The hardest part with this challenge was setting all the tools I needed to run the 
# specifications: rvm and rspec. Then figuring out I need to comment out everything
# except the specs I'd like to test for them to run properly. Writing the code was 
# the lesser of the challenge here.

# What questions did you have while coding? What resources did you find to help you answer them?

# Question:
# How do I install rspec? Why is my computer throwing an error when I do try to install it?
# Answer:
# *DO NOT* use the sudo command to install rspec if you computer is giving you a permissions error.
# This will alter your computers built in Ruby version. You will need to install rvm so that you don't create some
# serious problems for yourself down the development road. 
# This link explains why: http://stackoverflow.com/questions/14607193/installing-gem-or-updating-rubygems-fails-with-permissions-error
# This codeschool tut was helpful: http://rspec.codeschool.com/levels/1 for seeing how rspec should be installed
# and works once you tackkle rvm.

# Question:
# Oh, I'll need to install rvm(a ruby version control system) before I can install rspec. Great how 
# do I do that?
# Answer: # I used this site to install rvm: https://rvm.io/rvm/install.

# Did you learn any new skills or tricks?
# I learned about the ruby inject method here: http://blog.jayfields.com/2008/03/ruby-inject.html.
# This helped my to refactor my code quite a bit.

# How confident are you with each of the Learning Competencies?
# Feel moderately confident with the competencies. Been doing HTML, CSS, and JS for so long I need
# to brush up on my ruby conditionals.

# Which parts of the challenge did you enjoy?
# When my code passed! And when I successfully found ways to refactor my solution.

# Which parts of the challenge did you find tedious?
# Ugh. Installing everything just so I could get rolling on this challenge!


#Sentence Maker Method

# 1. Pseudocode

# What is the input?
# Input = An array of words.

# What is the output? (i.e. What should the code return?)
# Output = A string of words.

# What are the steps needed to solve the problem?

# Input 1 array of words
# Make words variable 
#		Turn all array elements into strings
# Make sentence variable 
#       Add words stings together and inject with a " "
# Capitalize and add "." to sentence variable

# 2. Initial Solution

def sentence_maker(array)
	words = array.collect{|i| i.to_s}
	sentence = words.inject {|x, a| x + " " + a}
	sentence.capitalize + "."
end	


# 3. Refactored Solution

# def sentence_maker(array)
#	words = array.collect{|i| i.to_s}
#	sentence = words.inject {|x, a| x + " " + a}
#	sentence.capitalize + "."
# end	

# 4. Reflection

# What parts of your strategy worked? What problems did you face?
# My pseudocode was all wrong on this one. But looking at the testing errors did guide me to a 
# solution, and made me rethink my pseudocode which was great.

# What questions did you have while coding? What resources did you find to help you answer them?
# Question: How to convert a whole array into a strings?
# Resource: http://stackoverflow.com/questions/781054/convert-an-array-of-integers-into-an-array-of-strings-in-ruby

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# I was unsure if I was going to be able to use the inject method again here, since the initial arrays
# had both strings and numbers. Once I realized I needed to convert them all to strings I was happy
# I could recycle the inject method I used for the first variable.

# Did you learn any new skills or tricks?
# I successfully learned how to change an array into a sentence! YES!

# How confident are you with each of the Learning Competencies?
# Feel even better about using the testing tool to guide me through my code.

# Which parts of the challenge did you enjoy?
# Succeeding!

# Which parts of the challenge did you find tedious?
# Nothing not already mentioned.


