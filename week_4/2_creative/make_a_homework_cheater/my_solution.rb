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
    if pronoun == female
       puts "#{title}
    	     #{topic} was born in #{date}. She changed the world and is someone we should all learn about further. 
    	     #{thesis}. #{topic} is important to the world."
    if pronoun == male
       puts "#{title}
    	     #{topic} was born in #{date}. He changed the world and is someone we should all learn about further. 
    	     #{thesis}. #{topic} is important to the world."
    else 
       puts "#{title}
    	     #{topic} was important since #{date}. It changed the world and is something we should all learn about further. 
    	     #{thesis}. #{topic} is important to the world."
end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 


