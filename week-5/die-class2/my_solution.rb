# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Ordered number of 6 sides
# Output: 1 random number out of 6
# Steps:
# 1: The initialized class should contain an argument error if the die returns a number -1 and declare that there is a new die object that contains 6 sides
# 2: Method sides should reveal the amount of sides the die has... Don't know why it needs to be repeated but lets see.
# 3: Roll should print a random number from 1-6


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new "Must only be between 1-6"
    end
  end

  def sides
    @sides
  end

  def roll
    @roll = rand(1..@sides)
  end
end



# 3. Refactored Solution







# 4. Reflection

# What is an ArgumentError and why would you use one?
# You can implement ArgumentError in your class to pass an argument that is not acceptable or passes the wrong number of arguments.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I used rand with an instance variable. It was confusing at first when using instance variables as I had the habit of assigning local variables, and kept assigning a local variable to an instance variable and then using the local variable in rand.
# What is a Ruby class?
# Classes in Ruby are first-class objects. When you call the class, you are calling all methods within that class.
# Why would you use a Ruby class?
# To have multiple methods and conditions without having to create new variables for each class. You can use instance variables throughout the class.
# What is the difference between a local variable and an instance variable?
# Local variables have a limited scope and are only used in the method they are being called from. Instance methods can be used multiple times throughout different methods in one class.
# Where can an instance variable be used?
# Instance methods can be used multiple times throughout different methods in one class.