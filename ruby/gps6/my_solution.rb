# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Release 1: require_relative allows us to access the linked file in the location relative to the current file
require_relative 'state_data'

class VirusPredictor

  attr_reader :population_density, :population, :state
  # Release 3: Initializes an instance requiring 3 arguments (state, population and population density) which are then stored as attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Release 3: runs the predicted_deaths and speed_of_spread methods for the given arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Release 3: returns the number_of_deaths based on population and population_density and prints out information for the associated state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
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

  # Release 3: returns the speed based on population_density and prints out information
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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
=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end
# Release 4: Implement report for all 50 states
STATE_DATA.each do |k, v|
  states = VirusPredictor.new(k,v[:population_density], v[:population])
  states.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One difference is the way the code is written to assign a key to a value. The state data are assigned to the state names using a hash rocket whereas the data is assigned to the data labels using a colon, an approach unique to using symbols as the key of a hash. The second difference is the data types of the keys. The state names uses a String vs. the data labels uses a symble. This means the values are stored differently. A symbol is an immutable string, which means every time it is called, it references the same location. A String, however, if changed, will create a new instance instead of simply overriding the existing String.

# What does require_relative do? How is it different from require?
# require_relative links an external file to the current file and allows code from the external file to be called locally. It is different from require in that the link provided will be a directory relative to the location of the file you are in, as opposed to an absolute location.

# What are some ways to iterate through a hash?
# You can do it manually (painfully) by using a while or until loop. You can also us enumberables such as .each, .each_key, .each_pair, .each_value

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It was strange that we were calling the attributes as arguments for a method given that attributes should be accessible throughout class methods so we wouldn't need it as an argument and can simply call it within the methods. That is one of the things we ended up refactoring.

# What concept did you most solidify in this challenge?
# We discussed with our guides the benefits of avoiding calling the attributes directly as the intention is to "protect" the true value/integrity of the initial input into the attribute. As such, we refactored our code to include attr_reader for the attributes and be able to access the value of the attributes throughout the class without changing the existing value of it.