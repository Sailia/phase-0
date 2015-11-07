# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: takes an integer called guess as input
# Output: should return symbol :high if guess is larger than the answer, :correct if guess is equal to the answer and :low if the guess is lower than the answer

# Your GuessingGame class should be initialized with an integer called answer.
# Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if the guess is lower than the answer.

# Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

# In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.


# Steps:
# Initialize with argument answer
# input first guess
# if guess is equal to answer
#   return :correct
# elsif guess is less than answer
#   return :low
# else guess is more than answer
#   return :high


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess == @answer
#       return :correct
#     elsif @guess < @answer
#       return :low
#     else @guess > @answer
#       return :high
#     end
#   end

#   def solved?
#     @guess == @answer ? true : false
#   end
# end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
      if @guess == @answer
        return :correct
      end
      @guess < @answer ? :low : :high
  end

  def solved?
    @guess == @answer ? true : false
  end
end


# Reflection


# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# An instance variable are the attributes of the class and the methods have the actions of the class. For e.g:
# class Person
#   def initialize(name)
#     @name = name
#   end

#   def eat
#     puts "#{@name} says yummy"
#   end
# end

# eric = Person.new("Eric")
# eric.eat

# When should you use instance variables? What do they do for you?

# They give you the freedom to modify the instance variable throughout multiple methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# When refactoring I had difficulty expressing a ternary operator on a if else statement that has three conditions. So I tried using a case statement but it didn't shorten the code by much. So I used a ternary operator only for the condition for :high and :low but started with if == to and return if true as that would end the conditional statement.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# symbols are identifiers, and the most important characteristic in symbols are that they are immutable. This means that their value can never be changed. Symbols are like strings except when using a string each time, it is being stored in a different memory location even though the string value contents are the same. Because of this, symbols are instantiated faster than strings and some operations such as comparing two symbols is also a lot faster. Symbols also take up less memory as they have a unique object_id. Its best to use symbols when you only choose to have one identifier and plan to never change it.