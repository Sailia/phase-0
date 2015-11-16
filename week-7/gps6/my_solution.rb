# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

class VirusPredictor

  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end
  #   create instance variables to use throughout the class. Those instance variables are the arguments in initialize.

  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end
  #   create a method that accepts the following arguments and calls those methods

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
    #     check to see if population density is higher, then number of deaths is higher

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end
  # calculate the speed of the disease spreading
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  VirusPredictor.new(state).virus_effects
end
alabama = VirusPredictor.new("Alabama")
alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

STATE_DATA is a global variable, and a nested hash has been assigned to each state. Each state is a key, and the value contains two key/value pairs.

What does require_relative do? How is it different from require?

It retrieves data from another file within the same folder. Require is different as you would have to specify which folder to go into to retrieve the data if it wasn't saved into the same folder.

What are some ways to iterate through a hash?

To make it easier for nested hashes, you can use an each method.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The virus effects method had unnecessary instance variables for the following methods. virus_effects just needed to call the methods that contained the information it needed.

What concept did you most solidify in this challenge?

Accessing hashes and using less instance variables. Lastly implementing DRY methods as much as possible.

=end
