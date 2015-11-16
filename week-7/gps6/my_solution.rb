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