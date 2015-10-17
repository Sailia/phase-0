# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.
=begin
# Pseudocode
1) create a class called GuessingGame
2) class should be initialised with answer

3) create an instance method called guess that takes an integer called guess
4) guess should return the symbol :high if guess is larger than the answer
5) return :correct if the answer is equal
6) return :low if the answer is lower than the answer

7) Def an instance method GuessingGame_solved?
8)if the most recent guess is correct return true else false


# Input: an integer
# Output: a symbol
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess == @answer
      @recent_guess = :correct
      solved?
      return :correct
    elsif @guess < @answer
      @recent_guess = :low
      solved?
      return :low
    else @guess > @answer
      @recent_guess = :high
      solved?
      return :high
    end
  end

  def solved?
    if @recent_guess == :correct
      true
    else
      false
    end
  end
end

=end

# Refactored Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    if guess == @answer
      @recent_guess = :correct
      solved?
     :correct
    elsif guess < @answer
      @recent_guess = :low
      solved?
     :low
    else guess > @answer
      @recent_guess = :high
      solved?
      :high
    end
  end

  def solved?
    if @recent_guess == :correct
      true
    else
      false
    end
  end
end




# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

The best way I could think of that'd can best explain instance variables and methods is this: There's a class called Cat. All cats miow, so theres an instance variable called miow. But the methods are what give each miow a personality trait.

When should you use instance variables? What do they do for you?

Instance variables help you use the same variable in multiple methods. Each method contains instructions that you can use on the same instance variable throughout the class. They are like steps for the instance variable but in a more organised setting and to promote readability and prevent conflicts with object types.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I had no issues with flow control other than the part where I had to add the recent guess information. I had no idea how to link the two together. I found out that you can refer to other methods in the class just by calling the method.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols take up less memory, have one object ID so they cannot be changed and are easy to refer to. They can also point to another object.

=end