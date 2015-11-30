# I worked on this challenge [by myself, with: Mia Lehrer].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)

array.map! do |e|
    if e % 15 == 0
      e = "FizzBuzz"
    elsif e % 3 == 0
      e = "Fizz"
    elsif e % 5 == 0
      e = "Buzz"
    else
      e
    end
  end
p array

end
super_fizzbuzz([15, 5, 3, 1])



# Refactored Solution

def super_fizzbuzz(array)

array.map! do |e|
  case
when e % 15 == 0 then e = "FizzBuzz"
when e % 3  == 0 then e = "Fizz"
when e % 5  == 0 then e = "Buzz"
else e
    end
  end
p array

end
super_fizzbuzz([15, 5, 3, 1])




# Reflection


# What concepts did you review in this challenge?

# We reviewed if else statements and case statements

# What is still confusing to you about Ruby?

# I haven't found this assignment particularly confusing...

# What are you going to study to get more prepared for Phase 1?

# JavaScript.