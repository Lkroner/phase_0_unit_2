# U2.W4: Cipher Challenge-

# I worked on this challenge by myself.

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Takes the message, lowercases it and splits each letter into a seperate string.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # This is really big! And you basically have two identical arrays stored in one hash. It would 
            "h" => "d",   # probably be best to change this to an array that you then shift by 4 somehow. Going to have to
            "i" => "e",   # find an array method for this...
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # interates over each key letter into it's corresponding value letter. 
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? Then you would have the same number? 
    cipher.each_key do |y| # What is #each_key doing here? It's printing the key value of the hash for every x.
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? Breaking is a way to exit a loop without terminating the function. Since x has a value, found will equal true, so we need to exit this loop to check other values of x.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? It is inserting spaces anywhere it finds these characters in the code.
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a " do? It assigns a numbers 0 - 9 to an array and asks if there are any values of x that match it. 
        decoded_sentence << cipher[]
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? If there were no matches found for x. Which would be bad since nothing would be decoded.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. This is searching the array for any digits. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... Apparently, if any digits are found in the array, then they need to be divided by 100 because Kim Jong Un likes to exagerate his quantities.
  end  
  return decoded_sentence # What is this returning? Hopefully your fully decoded sentence.       
end

# Your Refactored Solution


def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Takes the message, lowercases it and splits each letter into a seperate string.
  decoded_sentence = []
  cipher = ('a'..'z').to_a # putting all values a - a into an array now called cipher
  input.each do |x| # iterating through all values of x
      if cipher.include?(x)
         decoded_sentence << cipher[cipher.index(x)-4] # if value x is present in cipher, then push the index of x - 4 into array decoded_sentence
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? It is inserting these characters anywhere there is a space in the message
        decoded_sentence << " "
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
      else
        decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection

# 
# * What parts of your strategy worked? What problems did you face?
# I am still not up to date with my Regex, but I definitely felt satisfied that knowing just a little bit I was able to sort out the 
# meaning of the regex at the bottom. I would like to get good at regex, it seems helpful. I got through most of the problem 
# alright in terms of understanding what the code was carrying out. The hash made the code very convaluted in the amount of steps it 
# needed. I was definitely ready to refactor this guy.

# * What questions did you have while coding? What resources did you find to help you answer them?
# So many functions to look up....to_a is new fun one I didn't know I had that capability of. I mostly used Rubydocs for looking up
# meanings and function for most questions.

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# ^See regex above. 
#
# * Did you learn any new skills or tricks?
# Honing my refactoring skills! Is tough, but very satisfying.
#
# * How confident are you with each of the Learning Competencies?
# Identify and explain what code is doing(90%)
# Automate repetitive tasks using loops(75%)
# Decompose a problem into smaller, easier to solve components(75%)
# Identify and rewrite repetitive code (75%)

# * Which parts of the challenge did you enjoy?
# Finishing, hah. Truth be told this was a very good exersize and I feel a lot better about my Ruby after getting through it.
#

# * Which parts of the challenge did you find tedious?
# Refactoring took awhile to pass everything true and also figure out all the parts that didn't need to be there.
# 
 