# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# a method total which takes an Array of numbers and calculates the sum of all the numbers.

# Input: array of numbers
# Output: total of numbers in that array
# Steps to solve the problem.
# create a method that accepts an argument as an array
# have that array add a number to the next in the array
# return the total



# 1. total initial solution

def total (array)
 array.inject {|m, v| m += v}
end



# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings
# Output: strings concatenated
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(string)
  string.join(" ").capitalize << "."
end

# 6. sentence_maker refactored solution

