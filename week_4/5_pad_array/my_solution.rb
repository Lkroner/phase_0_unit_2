# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Morgan O'Leary and Kate La. 

# 1. Pseudocode

# What is the input? An array and a minimum pad amount and optional pad value
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#  define class Array
# 		define non destructive method pad that takes two parameters, min_num and pad_value
# 			create a new copy of array as to not destroy original
# 			if the length of the new array is more than the min_num
# 			   push the pad value into new array
#      		else 
#  				take difference of min-num and new array length, times by pad_value
# 				push pad_value(s) into new array
#           close if/else
#        close method
#       return array
#       close array return
       
#        define destructive method pad! that takes two arguments called min_num and pad_value, set pad_value equal to nil
#             if the length of self is more than the min_num
# 			     return self
#             else 
#                 have the array return the difference between min_num and the array's length, times the pad_value. 
#                 Then push the pad_value(s) into the array (into itself)
#           close if/else
#        close method
#       return the array
#       close array return
#  close class

# 2. Initial Solution

 class Array
 	def pad(min_num, pad_value=nil)
 		new_array = Array.new(self)
 		if new_array.length >= min_num
 			new_array
 		else 
 			(min_num - new_array.length).times do
             new_array << pad_value	
		end 
	 end
	 new_array     
    end
	def pad!(min_num, pad_value=nil)
		if self.length >= min_num
 			self
		else 
            (min_num - self.length).times do
             self << pad_value
        end       
    end
     self
   end
end 

# 3. Refactored Solution

# We couldn't find many ways to refactor this code. Our first refactor was to change the min_size variable to min_num
# since min_num is more descriptive that it needs to be a number. 
# We tried to refactor lines 21 and 22 by combining them into the statement "retrun new_array if new_array.length >= min_size" but
# the tests would not pass this way. I feel like this is appropriate syntax that would make our code shorter, but something is
# not working here. We did the same with lines 31 and 32.
# 

# 4. Reflection 
# 
# * What parts of your strategy worked? What problems did you face?
# We struggled for the first hour or two because we were focusing on a line of code that was not working. It helped to walk away
# and start relatively over, which is when we were able to come up with a more simple ssolution. 
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# At first I thought in order to make sure an array wasn't destroyed that we couldn't make a copy of it. Turns outs you NEED to 
# create a copy of it to make it non-destuctive. This way you leave the original intact.
#
# * Did you learn any new skills or tricks?
# I learned hw to properly syntax out an if/else with do's so that I could push things to arrays. Also that I still needed to 
# return the array after my if/else statements to create the array.
#
# * How confident are you with each of the Learning Competencies?
# Use tests to guide development (90%)
# Break down problems into implementable pseudocode (65%)
# Differentiate between and produce destructive and non-destructive methods (70%)
# Find and use built-in Ruby methods to solve challenges (70%)
#
# * Which parts of the challenge did you enjoy?
# Having other minds to bounce ideas of was really nice. 
#
# * Which parts of the challenge did you find tedious?
# Pseudo coding, still.
# 

