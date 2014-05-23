# U2.W5: Virus Predictor

# I worked on this challenge Patrick

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'


class VirusPredictor
  
  def initialize(state_of_origin, population_density, population, region, regional_spread) # The parameters that are passed when creating a virus predictor class
    @state = state_of_origin # instance variables that store the parameter data
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  # The instance variables are local to the VirusPredictor class.
  def virus_effects  #HINT: What is the SCOPE of instance variables? # Helper method used to call the methods down below
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end
  
  def virus_report
    STATE_DATA.each_key do |key|
      predicted_deaths(STATE_DATA[key][:population_density], STATE_DATA[key][:population], key)
      speed_of_spread(STATE_DATA[key][:population_density], key)
    end
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method
    # Private is a scope manager. It limits the scaope of the methods listed below to only other methods within VirusPredictor. 
    # So private is like the gate of the methods contained in it, and virus_effects is like the gatekeeper that gives access to them.
  def predicted_deaths(population_density, population, state)
    if population_density >= 200 # predicted_deaths passes in the population density and population and uses a ratio to determine the number effected by the virus
      number_of_deaths = (population * 0.4).floor
    elsif population_density >= 150
      number_of_deaths = (population * 0.3).floor
    elsif population_density >= 100
      number_of_deaths = (population * 0.2).floor
    elsif population_density >= 50
      number_of_deaths = (population * 0.1).floor
    else 
      number_of_deaths = (population * 0.05).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  # 
  def speed_of_spread(population_density, state) #in months
    speed = 0.0 # speed_of_spread determines how quickly the virus will spread

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
  
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_report
alabama.virus_effects



jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects