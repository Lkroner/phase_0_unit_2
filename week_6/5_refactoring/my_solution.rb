# U2.W6: Refactoring for Code Readability


# I worked on this challenge with Puru Dahal.


# Original Solution

# class CreditCard
  
#   def initialize(num)
#     num_digits = num.to_s.split("").length #
#     raise ArgumentError.new("Please enter exactly 16 digits for the credit card number.") if num_digits != 16
#     #raise ArgumentError.new("Please enter exactly 16 digits for the credit card number.") if num.to_s.length != 16
#     @num = num
#   end
  
#   def check_card 
#     arr = @num.to_s.split("") #
#     multiplied = []
#     i = 0 
#     while i < arr.length
#       if i % 2 == 0 # He has selected wrong numbers to multiply by 2. This could be solved by
#         # reversing and then i.odd?. 
#         ans = (arr[i].to_i * 2)
#           if ans > 9
#             #ans = ans.to_s.split('') #split num to an array of strings
#             #ans = ans.map(&:to_i) #interate through the array, and convert them to integer
#             #ans = ans.inject(:+) # add those numbers within in the array
            
#             tens = ans / 10 # 1.5
#             ones = ans % 10 # 5
#             ans = tens + ones
#           end
#       else
#         ans = arr[i].to_i
#       end
#       multiplied << ans
#       i += 1
#     end
#     sum = multiplied.reduce(:+) #inject(:+)

# #     sum % 10 == 0 
#     if sum % 10 == 0 
#       return true
#     else
#      return false
#     end
#   end

# end


# Refactored Solution

class CreditCard
  
  def initialize(num)
     raise ArgumentError.new("Please enter exactly 16 digits for the credit card number.") if num.to_s.length != 16
     @num = num
  end

  def check_card 
    arr = @num.to_s.split("").reverse #
    luhn_array = []
    arr.each_with_index do|num, i|
      if i.odd?
        ans = num.to_i * 2
        if ans > 9
           luhn_array << ans.to_s.split('').map(&:to_i).inject(:+) #split num to an array of strings
        else
         luhn_array << ans
        end
      else
       luhn_array << num.to_i
      end     
    end
    luhn_array.inject(:+) % 10 == 0
  end
end


# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Invalid Credit Card" unless yield
end

card_1 = CreditCard.new(4563960122001999)
assert{card_1.check_card == true}

card_2 = CreditCard.new(4563960122001991)
assert{card_2.check_card == false}

card_3 = CreditCard.new(456396012201)
assert{card_3.check_card}

# card_1 = CreditCard.new(4563960122001999)
# card_2 = CreditCard.new(4563960122001991)
# card_3 = CreditCard.new(456396012201)
# p card_1.check_card == true
# p card_2.check_card == false
# p card_3p card_2.check_card == false.check_card 

# 5. Reflection 


# * What parts of your strategy worked? What problems did you face?
# Our strategy worked pretty well! The only error we had was where we forgot to convert num on line 75 back
# into an integer(converted it to a string line 64) so we could perform an implicit inject method on it.
# Otherwise went smoothly.
# 
# * What questions did you have while coding? What resources did you find to help you answer them?
# No serious questions that we couldn't answer ourselves.
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Doing alright with refactoring.
#
# * Did you learn any new skills or tricks?
# I learned about Nirtious.io! It's like Stypi except it has a console you can run irb or ruby commands
# through to check your code.
# 
# * How confident are you with each of the Learning Competencies?
# Explain what code is doing (85%)
# Refactor for clarity and readability(85%)
#
# * Which parts of the challenge did you enjoy?
# This exercise was not my favorite but was really good practice and I had fun workng with Puru. I think we 
# ended up with code that makes more semantic sense and is concise as well.
# 
# * Which parts of the challenge did you find tedious?
# Didn't have anything tedious here.





