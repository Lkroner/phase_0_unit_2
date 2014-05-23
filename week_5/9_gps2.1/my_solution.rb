# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Sam Clement

# Our Refactored Solution

def bakery_num(num_of_people, fav_food) # defines method bakery_num that takes the quantity of people and type of food
      my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # my_list # of people each item can feed
      pie_qty = 0 # sets all quantities to be baked to 0.
      cake_qty = 0
      cookie_qty = 0
    
    raise ArgumentError.new("You can't make that food") if my_list.include?(fav_food) != true

      fav_food_qty = my_list[fav_food] # returning the 0 position of the array taken from the my_list hash
       if num_of_people % fav_food_qty == 0 # if there's no remainder,
          num_of_food = num_of_people / fav_food_qty
          return "You need to make #{num_of_food} #{fav_food}(s)."
       else num_of_people % fav_food_qty != 0
            while num_of_people > 0
              if num_of_people / my_list["pie"] > 0
                pie_qty = num_of_people / my_list["pie"]
                num_of_people = num_of_people % my_list["pie"]
              elsif num_of_people / my_list["cake"] > 0
                cake_qty = num_of_people / my_list["cake"]
                num_of_people = num_of_people % my_list["cake"]
              else
                cookie_qty = num_of_people
                num_of_people = 0
              end
            end
         return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
       end
    end  

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!


#  Reflection 

# * What parts of your strategy worked? What problems did you face?
# Most parts of our strategy worked! The only thing we struggled with was trying to find a way
# to use a case/when method that our guide, Dominic, reccommended to us. I felt we communicated our ideas
# well about the code we were reading and seemed to grasp it pretty well.
#
# * What questions did you have while coding? What resources did you find to help you answer them?
# We had questions about how to use the include? method and used the Ruby docs to make sure we understood 
# the output for this method.
# 
# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Like I mentioned, we couldn't quite figure out how to use the case/when although some one had
# previously figured out a way to do it.
#
# * Did you learn any new skills or tricks?
# Nothing brand new, but had some good practice in writing more sofisticated syntax.
#
# * How confident are you with each of the Learning Competencies?
# Identify and explain what code is doing (90%)
# Identify and rewrite repetitive code
# Use if/else statements, string methods, while/until loops, Enumerable#each methods
#
# * Which parts of the challenge did you enjoy?
# I enjoyed finding a pretty clean way to execute this problem!
# 
# * Which parts of the challenge did you find tedious?
# Nothing super tedious this challenge.

