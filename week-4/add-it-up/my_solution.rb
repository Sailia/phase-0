# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:
# begin a method with the argument that contains numbers to be added in the array

# Output:
# array should result in total numbers added
# Steps to solve the problem.


# 1. total initial solution

def total (array)
 array.inject {|m, v| m += v}
end

# 3. total refactored solution



# 4. sentence_maker pseudocode

# Input:
# to create a method called sentence_maker that accepts the argument called array containing multiple strings

# Output:
# when the method sentence_maker is called, the multiple strings in the array will join and form one string


# 5. sentence_maker initial solution

def sentence_maker(array)
  array.join(" ").capitalize + "."
end



# 6. sentence_maker refactored solution