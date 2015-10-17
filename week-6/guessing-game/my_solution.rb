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