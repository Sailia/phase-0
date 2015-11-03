# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings.
# Output: returns one random string. If Die.new is passed an empty array, it should raise an ArgumentError.new
# Steps:


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if labels == []
#       raise ArgumentError.new
#   end
# end

#   def sides
#     @sides = @labels.length
#   end

#   def roll
#    return @labels.sample
#   end
# end




# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new
  end
end

  def sides
    @sides = @labels.length
  end

  def roll
   return @labels.sample
  end
end






# Reflection