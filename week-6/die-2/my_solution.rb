# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Takes an array of strings as its input. Empty array raises an ArgumentError
# Output: When Die#roll is called, one random string should return.
# Steps: create an instance variable that refers to the argument labels
#create a sides instance variable to accept amount of sides
#let roll pick a random string from an array


# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new if labels == []
    @labels = labels
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end


# Refactored Solution

=begin


# Reflection


What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

Not really, just needed to find a Ruby method that worked on two methods in the class. Labels and sides amount to the same number of sides.

What does this exercise teach you about making code that is easily changeable or modifiable?

That you must be really logical in terms of what is being asked. Its not even the language that throws me off, but thinking outside the box, outside of code.

What new methods did you learn when working on this challenge, if any?

To literally imagine a die and ask random questions on how to achieve it.

What concepts about classes were you able to solidify in this challenge?

That multiple defined methods can have the same instance variable do different things.

=end