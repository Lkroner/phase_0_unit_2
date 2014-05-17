# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself. 


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)  # defines the method translate_to_cipher, takes parameter sentence
    alphabet = ('a'..'z').to_a     # takes letters a - z and puts them in an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # takes the alphabet array and zips it together with alphabet array that's had it's elements 
                                                    # shift 4 spaces, takes all of this and stores it in a hash instead of an array. 
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # creates a variable spaces that contains an array of characters
    
    original_sentence = sentence.downcase # takes the original input and downcases all the letters in it.
    encoded_sentence = [] # creates an empty where the encoded sentence will go
    original_sentence.each_char do |element| # iterates through all the letters of the original_sentence
      if cipher.include?(element) # if one of the letters is contained with the cipher hash,
        encoded_sentence << cipher[element] # push the cipher element into the empty encoded_sentence array
      elsif element == ' ' # if one of the elements is a " ", 
        encoded_sentence << spaces.sample # then insert push a random character of spaces into it's spot in the encoded_sentence array
      else 
        encoded_sentence << element # push all left over letters into the array
      end
     end
    
    return encoded_sentence.join # joins all the separated letters and spaces back into one string
end


# Questions:
# 1. What is the .to_a method doing? It takes the elements and puts them in an array.
# 2. How does the rotate method work? What does it work on? Rotate is an array method that takes a count parameter: rotate(count). 
#      It returns a new array by rotating self so that the element at count is the first element of the new array. It belongs to the array
#      class and can only be used on arrays.
# 3. What is `each_char` doing? It is splitting every character in the string and putting it into a block "element" which
#      then allows the characters to be manipulated individually henceforth.
# 4. What does `sample` do? Sample chooses a random element from a given array, in this instance the spaces array.
# 5. Are there any other methods you want to understand better? I feel fairly comfortable with the ones used, will have to practice using zip soon.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? It looks pretty close actually! I didn't store the spaces characters, which 
#      looking at it now seems like a great idea. So I'd say this original code is a little more clean.
# 7. Is this good code? What makes it good? What makes it bad? I would consider this good code, it's succinct and easily read.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? # Nope!...But that's ookay, it's what it's supposed to do. 
# Sample randomizes which character will be used to occupy the " " in the senetence so it should be different every time.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# 
# * What parts of your strategy worked? What problems did you face? 
# I did not employ much strategy here, just tried to adequately describe the steps of the code.
#
# * What questions did you have while coding? What resources did you find to help you answer them?
# I did not know the methods .zip or .sample and used RubyDocs to clarify their usage and definitions.
#
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# No trouble this time around. That I could see anyway.
#
# * Did you learn any new skills or tricks?
# Learning new method tricks is always fun! Can't wait to bust out zip and sample.
#
# * How confident are you with each of the Learning Competencies?
# Identify and explain what code is doing(80%)
# Research and explain how methods work(80%)
# Determine whether code follows good practices(65%)
#
# * Which parts of the challenge did you enjoy?
# I enjoyed this one, learned a bit and it was interesting to cross compare against my refactored code.
#
# * Which parts of the challenge did you find tedious?
# Nothing here.
# 

