# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 16 digit credit card number
# Output: 
# Steps:

# define 3 methods wihtin class CreditCard 

# define method double_number that takes parameters(number)
#  double_number array equals:  
 	# reverse number array
 	# if digit in number array is in an index location number that is divisible by two then multiple the digit by 2
 	# reverse number array
 	# split all elements to be separate	

# define method sum that takes parameter()
    
    # sum: add all array elements together

# define method check_card that takes parameter
    
    # if number is a multiple of 10 then true
    # else false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	# attr_accessor :number, :double_number, :sum

	def initialize(number)
		raise ArgumentError.new("Card number must have 16 digits") if number.to_s.length != 16
		@number = number
	end
    
    def check_card
        validcard?(@sum)
	end


	private

	def double_number(number)
		@double = []
		number.to_s.split(" ").reverse.select.each_with_index do |num, index|
			index % 2 != 1 ? @double.push( number.to_i * 2 ) : @double.push( number.to_i )
		end	
	end

	def sum_number(double)
        @sum = double.inject{|sum, x| sum + x }
	end

	def validcard?(sum)
		@sum % 10 == 0 
		raise ArgumentError.new("This is not a valid card") if false
	end	

end


# 4. Refactored Solution

# I will refactor once I get this guy up an running.
#
#


# 1. DRIVER TESTS GO BELOW THIS LINE
 
card_1 = CreditCard.new(1111111111111111)
card_1.check_card == false
card_2 = CreditCard.new(4408041234567893)
card_2.check_card == true


# 5. Reflection 


# * What parts of your strategy worked? What problems did you face?
# I am having a tough time getting this to work and my tests are somewhat eluding to help me. I am running
# ruby tests through sublime and it doesn't throw any errors except when I put up the tests and it gives me 
# this error: /Users/laurenkroner/phase_0_unit_2/week_5/6_validate_credit_card/my_solution.rb:55:in `check_card': 
# undefined method `%' for nil:NilClass (NoMethodError)
#	from /Users/laurenkroner/phase_0_unit_2/week_5/6_validate_credit_card/my_solution.rb:72:in `<main>'
# and I am still testing negative for four rspec tests with this code. I've kind of hit a wall with where to go 
# next with my solution so I will take this problem into office hours to see if I can get some help as to what 
# I'm executing improperly here.

# * What questions did you have while coding? What resources did you find to help you answer them?
# Besides wondering why this isn't working? I had a few. I used a whole bunch of new methods: I used
# the Ruby docs to find and execute most of these.
# 

# * What concepts are you having trouble with, or did you just figure something out? If so, what?
# Geh. I can't figure this out! It's been a frustrating exersize for me.

# * Which parts of the challenge did you enjoy?
# Not many parts of this one.
# 

# * Which parts of the challenge did you find tedious?
# Getting this to run.


