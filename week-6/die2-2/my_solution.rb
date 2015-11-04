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
  attr_reader :sides
  def initialize(labels)
    @labels = labels
    @sides = labels.length
    if labels == []
      raise ArgumentError.new
  end
end

  def roll
   return @labels.sample
  end
end


# Reflection


# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# Using rand completely failed, as it only works on Integers. At first I thought I'd need to randomize the index of the array, output the string of that index, but I couldn't figure that out. In the end I figured I needed to use an equivalent of rand for String which was .sample.

# What does this exercise teach you about making code that is easily changeable or modifiable?

# That it is easily changeable and modifiable? Nah, sometimes to try to get the same outcome with different formats such as a string to an array, is quite difficult. Sometimes its more about the logic rather than the conversion. There's a fine line on what's better. Either find a way that requires less code/execution but will take some time to figure out logically, or write a ton of code full of conversions which looks messy but reaches completion at a faster rate.

# What new methods did you learn when working on this challenge, if any?

# I learned about .sample

# What concepts about classes were you able to solidify in this challenge?

# attr_reader and Symbols