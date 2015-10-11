# Pad an Array

# I worked on this challenge [by myself, with: JP Chaufan ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array, min_size and value
# What is the output? (i.e. What should the code return?)
# a new array with an appended value
# What are the steps needed to solve the problem?

# method that accepts an array, size and possibly padding
         # add padding to reach the min size
         # if theres a specified padding type
             # make padding be the value specified

         # output the padded array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
array_length = array.length
if min_size <= array_length || min_size == 0
  return array
else
  array_difference = min_size - array_length
  array_difference.times {array << value}
  return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # non destructive array means we should first copy the array to prevent changing the original array
  #(initially had new_array = array but that led to the same object_id. They need to be unique, so a new variable "new_array" was created and we added the object value from array to new_array)
  new_array = []
  array.each do |x|
    new_array << x
  end
  # assign length of new_array to new variable array_length to reference the length of the array
  array_length = new_array.length
  # check to see if min_size is less than/equal to array_length or if min_size is equal to 0
  if min_size <= array_length || min_size == 0
  # return new array if true
   return new_array
  else
    # subtract array_length from min_size and have the result assigned to a new variable
    array_difference = min_size - array_length
    # array_difference is the amount of times needed to append value to new_array
    array_difference.times {new_array << value}
    return new_array
  end
end


# 3. Refactored Solution

# I'm not sure how to refactor this one. Please let me know about this.

# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Not really, I know what steps I need to take, but I don't know how to translate those steps to code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

It was all difficulties. I need to be more confident in what is allowed when writing up methods and code blocks. I don't know where to place enumberables.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

I did receive countless errors but I had issues with my Terminal and had to close the window. I cannot recall the exact errors.

When you refactored, did you find any existing methods in Ruby to clean up your code?

Currently struggling to remember how I even solved the current code. Not sure if I can refactor what I don't know.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think the code is pretty readable to me. Let me know if that can be improved.

What is the difference between destructive and non-destructive methods in your own words?

One of the examples is destructive methods can have permanent changes made to the actual argument once the method has been run. Non-destructive methods will not have changes made to an argument but place changes temporarily to an argument when the method has run... I hope that makes sense. You said to put it in our own words.

=end