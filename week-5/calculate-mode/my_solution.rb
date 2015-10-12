# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? List of numbers or strings
# What is the output? The most common number(s) or string(s) in the list
# What are the steps needed to solve the problem?
# MODE accepts a list of numbers or strings
# Compare first value of the list to next value
# Save value if the two that are being compared are the same, throughout the list
#
#We need to have the array accept a list of numbers or strings
#if two or more objects in the array/hash exist, collect the object with the most instances
#if more than one object occurs the most, then return all

=begin
# 1. Initial Solution
def mode(array)
  # go through all the numbers in the array
  hash_1 = Hash.new
  #with each object in the array, store the object in the hash and count them
  array.each do |hash_1, key| hash_1[key] == value += 1
  end

  array.delete_if {|k, v| v < 2}



 # hash_1.max_by {|key| key.store}
 # if hash_1 > key
  #  return hash_1.key
 # else
  #  return hash_1
  #end

  Couldn't figure out, used my pairs work:
=end

def mode(array)
 counter = Hash.new(0)
 array.each do |i|
   counter[i] += 1
 end
 mode_list = []
 counter.each do |k, v|
   if v == counter.values.max
   mode_list << k
   end
 end
 mode_list
end




  # keep the same numbers in one pile
  # name the hash, the key will hold the object, the value will hold the occurences hash_1["key"] = "value"
  # go through each value
  # get the value with the highest number
  # return array stating the key with the value of the highest number

end

# 3. Refactored Solution




# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?

I tried to help figure things out with my pair but he seemed to know more of what was going on, and had sorted it out himself. I tried doing it on my own to understand how to write it, but as you can see, I couldn't figure it out. I will keep working on this but for now, heres my submission.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I guess my pseudocode was better this round only because I was really sure of what I wanted to accomplish.

What issues/successes did you run into when translating your pseudocode to code?

I wasn't able to translate that pseudocode as well as the previous pairing session.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

Used .each.


=end