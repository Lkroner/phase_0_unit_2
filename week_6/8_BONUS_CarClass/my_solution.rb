# U2.W6: Create a Car Class from User Stories


# I worked on this challenge by myself and with: Albert

# 1. User Stories

# * As a video game player, I want to be able to create a new car and set it's model and color so I 
# can customize it in the video game.
# * As a video game player, I need to be able to define a distance to drive so I can follow directions 
# appropriately.
# * As a video game player, I'd like to be able to see the speed I am traveling, so I can properly 
# accelerate or decelerate.
# * As a video game player, I want to be able to turn left or right so I can navigate a city and follow 
# directions.
# * As a video game player, I want to be able to accelerate and decelerate the car to a defined speed 
# so I can drive following the rules of the road.
# * As a video game player, I want to keep track of the total distance I have travelled, so I can get 
# paid for mileage.
# * As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# * As a video game player, I would like to see output reflecting the latest action of my car so I can 
# see a play-by-play of the pizza delivery.
# 
# What are the characteristics associated with the car? These are your attributes. What are the actions 
# associated with your car? These are your methods.

# 2. Pseudocode

#  create class Car 

#  	define initialize method that takes 3 parameters: car_model, car_color, distance, speed
#  		initialize the parameters
#  	close
 	
#  	define move(miles)
#  	  @distance += miles
#  	  writes "Your #{car_color}#{car_model} traveled #{miles} at #{@speed}mph's."
#  	close
 	
#  	define left
#  	 writes "You're going left!"
#  	close
 	
#  	define right
#  	 writes "You're going right!"
#  	close

#  	define set_speed method(new_speed)
#  	  @speed = (new_speed)
#  	close

# 	define distance_traveled method
# 	  @distance
#  	close

# 	define stop_car method
# 	  @speed = 0
#  	close

# close 	


# 3. Initial Solution
 
 # class Car 

 # 	  def initialize( car_color, car_model )
 # 	    @car_color = car_color
 # 	    @car_model = car_model
 # 	    @distance = 0
 # 	    @speed = 0
 # 	  end
 	
 # 	def move(miles)
 # 	  @distance += miles
 # 	    puts "You traveled #{miles} at #{@speed}mph's in your #{@car_model}."
 # 	  end
 	
 # 	  def left
 # 	    if @speed <= 0
 # 	      puts "You have to be moving!"
 # 	    else
 # 	      puts "You're going left!"
 # 	    end
 # 	  end
 	
 # 	  def right
 # 	    if @speed <= 0
 # 	      puts "You have to be moving!"
 # 	    else
 # 	      puts "You're going right!"
 # 	    end
 # 	  end

 # 	  def set_speed(new_speed)
 # 	    @speed = new_speed
 # 	  end
 	  
 # 	  def current_speed
 # 	    @speed
 # 	  end

	#   def distance_traveled 
	#     @distance
 #  	  end

	#   def stop_car 
	#     @speed = 0
 # 	  end

 #  end 




# 4. Refactored Solution


  class Car 

 	  def initialize( car_color, car_model )
 	    @car_color = car_color
 	    @car_model = car_model
 	    @distance = 0
 	    @speed = 0
 	    p "That's one cool #{@car_color} #{@car_model}!"
 	  end
 	
 	def move(miles)
 	  @distance += miles
 	    "You traveled #{miles} miles at #{@speed} mph's in your sweet #{@car_model}."
 	  end
 	
 	  def left
 	    if @speed <= 0
 	      "You have to be moving! Hurry or the pizza will get cold."
 	    else
 	      "You're going left!"
 	    end
 	  end
 	
 	  def right
 	    if @speed <= 0
 	      "You have to be moving!"
 	    else
 	      "You're going right!"
 	    end
 	  end

 	  def set_speed(new_speed)
 	    @speed = new_speed
 	    "Your new speed is #{new_speed}."
 	  end
 	  
 	  def current_speed
 	    @speed
 	    "Your current is #{@speed}."
 	  end

	  def distance_traveled 
	    @distance
	    "You've traveled #{@distance} miles."
  	  end

	  def stop 
	    @speed = 0
	    "Nice stop. No California rolls here."
 	  end

  end


# 1. DRIVER TESTS GO BELOW THIS LINE

p "== BEGIN PIZZA DELIVERY =="

p "Dude what's your ride?"
miata = Car.new("red", "Miata")

# Ok let's get going! Here are your instructions:

# * Create a new car of your desired model and type
# * Drive .25 miles (speed limit is 25 mph)
# * At the stop sign, turn right
# * Drive 1.5 miles (speed limit is 35 mph)
# * At the school zone, check your speed
# * Slow down to speed limit 15 mph
# * Drive .25 miles more miles
# * At the stop sign, turn left
# * Drive 1.4 miles (speed limit is 35 mph)
# * Stop at your destination
# * Log your total distance travelled.

p miata.set_speed(25) 
p miata.move(0.25)
p miata.stop
p miata.right
p miata.set_speed(35)
p miata.right
p miata.move(1.5)
p "School Zone! Check your speed! Speed limit is 15 mph."
p miata.current_speed
p miata.set_speed(15)
p miata.move(0.25)
p miata.stop
p miata.left
p miata.set_speed(35)
p miata.left
p miata.move(1.4)
p "You made it! How many miles did you travel?"
p miata.distance_traveled
p "Pizza delivery SUCCESS!"

p "== END PIZZA DELIVERY =="

# 5. Reflection 

# * What parts of your strategy worked? What problems did you face?
# Our strategy worked pretty well once we figured out what were attributes and methods. 
# Make the driver tests definitely helped with this process. Everything else fell into
# place once we had an action plan. This was a fun assignment actually!

# * What questions did you have while coding? What resources did you find to help you answer them?
# Didn't need any resources on this one.

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Didn't struggle with anything serious here.

# * Did you learn any new skills or tricks?
# I learned that having a question mark at the end of a method name returns a boolean. I knew this
# used elsewhere in Ruby code but I thought that was a cool/tricky way to make it return true/false
# without having to use comparing operators.

# * How confident are you with each of the Learning Competencies?
# Identify the attributes and methods of a class based on user stories(80% - This was good practice!)
# Translate a user story into driver code and solutions(85% - Yup!)
# Explain how data structures and classes can model real-world objects(85% - Feeling better about this one as well.)

# * Which parts of the challenge did you enjoy?
# All of it! Albert and I made a good team and jammed through this one. Lots of fun.

# * Which parts of the challenge did you find tedious?
# Not even the pseudocode was THAT hard to deal with this time around.  

