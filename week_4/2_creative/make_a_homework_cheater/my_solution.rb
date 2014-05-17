# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# define method essay_writer
#        essay_writer will take parameters: title, topic, date, thesis, pronoun
#           if pronoun = male use "he" template
#           else use "she" template
#        insert title, topic, date and thesis parameters as strings into template.
#        print out output essay
#        end

# Input: Parameters: title, topic, date, thesis, pronoun
# Output: Essay string.
# Steps: 

# Take parameters
# Choose between "he" or "she" template
# Insert parameters
# Print finished essay


# 3. Initial Solution

def essay_writer(title, topic, date, thesis, pronoun)
    if pronoun == "female"
       return "#{title}. #{topic} was born in #{date}. She changed the world and is someone we should all learn about further. 
               #{thesis}. #{topic} is important to the world."
    elsif pronoun == "male"
       return "#{title}. #{topic} was born in #{date}. He changed the world and is someone we should all learn about further. 
              #{thesis}. #{topic} is important to the world."
    else 
       return "#{title}. #{topic} was important since #{date}. It changed the world and is something we should all learn about further. 
               #{thesis}. #{topic} is important to the world."
    end 
end


# 4. Refactored Solution

# For my refactored solution it would be good to figure out a way to insert the different pronouns and not repeat the sentence, however
# I couldn't figure it out in the time I alloted. 


# 1. DRIVER TESTS GO BELOW THIS LINE

p essay_writer("The Modern Astronomer", "Neil deGrasse Tyson", "1958", "He is an American astrophysicist, author, and science communicator.
 He is currently the Frederick P. Rose Director of the Hayden Planetarium at the Rose Center for Earth and Space and a research associate in
  the department of astrophysics at the American Museum of Natural History", "male")
p essay_writer("The Modern Astronomer", "France Córdova", "1947", "She is an American astrophysicist, researcher and university administrator.
 As of March 2014, she is the director of the National Science Foundation. Previously, she was the eleventh President of Purdue University", "female")
p essay_writer("Earth's Comet", "Halley's Comet", "240 BC, when it was first observed", "It is the best-known of the short-period comets and 
	is visible from Earth every 75–76 years. Halley is the only short-period comet that is clearly visible to the naked eye from Earth, and the 
	only naked-eye comet that might appear twice in a human lifetime.", "thing")


# 5. Reflection 
# 
# * What parts of your strategy worked? What problems did you face?
# Well what took me the longest, even though it was a relatively simple task was making the tests, I actually tried to make my own spec sheet
# instead of just writing driver test code. That took longer to figure out but I'm glad I gave it a shot.
#
# * What questions did you have while coding? What resources did you find to help you answer them?
# Nothing specific.

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Definitely feel more confident with testing after getting through this challenge.
#

# * Did you learn any new skills or tricks?
# How to write driver test code. 

# * How confident are you with each of the Learning Competencies?
# Translate a user story into driver code and solutions (80%)
# Create methods that take arguments to modify the output (80%)
# Use if/else statements, string methods, while/until loops, Enumerable#each methods (80%)
# Differentiate between and produce destructive and non-destructive methods (70%)

# * Which parts of the challenge did you enjoy?
# This wasn't my favorite challenge. 
# 

