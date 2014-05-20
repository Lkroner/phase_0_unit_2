# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# Input = An array of numbers

# What is the output? (i.e. What should the code return?)


# What are the steps needed to solve the problem?

# Make method get grade make array the input in parens
#       Take sum of all elements in array and divide by array length
#       when average falls between 90 and 100, give grade "A"
#       when average falls between 80 and 89, give grade "B"
#       when average falls between 70 and 79, give grade "C"
#       when average falls between 60 and 69, give grade "D"
#       when average falls between 0 and 59, give grade "F"
#       otherwise give "Error"
#       close method and case

# 2. Initial Solution

def get_grade(array)
	average = (array.inject{ |x, a| x + a}.to_f)
	average/array.length
	if average >= 90 
        puts "A"
    elsif average >= 80 
        puts "B"
    elsif average >= 70 
	    puts "C"
	elsif average >= 60 
	    puts "D"
	else average < 60  
	    puts "F"    
    end
end


# 3. Refactored Solution

p get_grade([100,90,100,99,99])
p get_grade([80,90,80,89,98])
p get_grade([70,80,70,79])
p get_grade([60,67,70,63])
p get_grade([50,40,0,99,9])

# None

# 4. Reflection 

# What parts of your strategy worked? What problems did you face?
# Had to change my pseudo code for this one and still couldn't find a way to make it work. Still not 
# sure why it won't run :/.

# What questions did you have while coding? What resources did you find to help you answer them?
# Question: 
# 

# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Having trouble with this problem is a bit disappointing because I have worked on methods to
# get grades and also take the average, so blending the two should be easy enough! I am moving on
# as I spent as much time on this as I can. Hopefully I'll have to time to return to this and make
# it work.

# How confident are you with each of the Learning Competencies?
# Was feeling confident as of last challenge, but the errors from testing did not help point me in the
# right direction like the last challenge. I kept getting all the letter grade equaling "nil". I'll have
# to revisit.

# Which parts of the challenge did you find tedious?
# Not being able to figure this out!
