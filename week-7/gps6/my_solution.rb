# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#  Require relative references another .rb file in the same directory as the file in which it is called. It allows this file to use variables and methods defined in the referenced file.
# It differs from require in that it must reference a file in the same directory. 
require_relative 'state_data'

class VirusPredictor
# Initializes an instance of VirusPredictor with arguments (State_of_origin , Population_density and population)
# applies these arguments to instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# creates a public method that can be accessed outside of the VirusPredictor class.
# declares arguments for predicted_deaths, population, state) and also argument for speed_of_spread (population_density, state)

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private
# Calculates number of predicted deaths based on population density and population. Then prints a statement declaring the state name and the number of people who will die.  
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Calculates speed of spread based on population_density to determine speed. Prints a statement stating speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
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

STATE_DATA.each do |key, value|
  virus_predictor = VirusPredictor.new(key, value[:population_density], value[:population])
  virus_predictor.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   The two syntaxes do the same thing in slightly dirrernt ways.  The state name key points to it's value by using the '=>' syntax wheres within the nested hash 
# The keys are symbols seperated from their values by a : .  The second method can only be used with symbols as keys. 

# What does require_relative do? How is it different from require?
# Require relative references another .rb file in the same directory as the file in which it is called. It allows this file to use variables and methods defined in the referenced file.
# It differs from require in that it must reference a file in the same directory.

# What are some ways to iterate through a hash?
# the simplist way is to use .each but you could also use other methods such as map or a loop. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   The instance variables where repeated alot.  In some cases this repetition was not required so we removed them. 

# What concept did you most solidify in this challenge?
#  The biggest thing that was solidified was the use of classes and instance variables. It also provided a useful review of iterating over hashes. 
