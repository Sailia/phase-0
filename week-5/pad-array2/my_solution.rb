# Pad an Array

# I worked on this challenge [by myself, with: Cguard90 ]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# array, the minimum size and what the array should be padded with.
# What is the output? (i.e. What should the code return?)
# array plus the padded value
# What are the steps needed to solve the problem?
# to use an if statement to determine the array size
# if it doesn't meet the padded size, add that value to the array
# else return array


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  array
end

def pad(array, min_size, value = nil)

  new_array = []
  array.each do |x|
    new_array << x
  end

  array_length = new_array.length
  if min_size <= array_length || min_size == 0
   return new_array
  else
    array_difference = min_size - array_length
    array_difference.times {new_array << value}
    return new_array
  end
end



# 3. Refactored Solution
def pad(array, min_size, value = nil)

  new_array = array.collect {|x| x }

  if min_size <= new_array.length || min_size == 0
    return new_array
  else
    while new_array.length < min_size
      new_array.push(value)
    end
    new_array
  end
end



# 4. Reflection


# Were you successful in breaking the problem down into small steps?

# Not entirely. We had the steps down but there were a few more steps that needed to be implemented.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# It was fairly easy in some parts and difficult in others. Working with my pair helped me understand when we need while loops even though this is something that I should be familiar with by now!

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# The initial solution was easier as it was a destructive method that didn't need extra steps in creating a new variable with a new object_id. We completed the initial solution fairly quickly.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# I initially suggested a ternary operator and I was transfixed with that method even though it wasn't working. I need to learn to move away from a certain approach instead of trying to make it work. My pair found the .collect which was a way better solution.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# We were both thinking for a minute or two just on the variable name itself, discussing the purpose of the variable. I hope he forgives me for asserting my definition.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods change the end result of a variable indefinitely compared to what the variable was initially.
# Non-destructive methods allow for changes to be made to a variable but temporarily.