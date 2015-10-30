# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode(objects)
  frequencies = Hash.new

  objects.each do |object|
    if frequencies[object] == nil
      frequencies[object] = 1
    else
      frequencies[object] += 1
    end
  end

  result = []
  highest = 0
  frequencies.each do |object, frequency|
    if frequency == highest #the frequency is the same as the highest we have seen
      result.push(object)
    elsif frequency > highest #the most ticks we have seen
      highest = frequency
      result = [object]
    end
  end
  return result
end


# 3. Refactored Solution

def mode(objects)
  frequencies = Hash.new(0) #Makes a new hash, with the default value zero
  #inject takes the array one at a time, applies the block each time, using what you give it as the "memo" where the results are being injected to
  objects.inject(frequencies) { |freq, object| freq[object] += 1; freq }
  highest = frequencies.values.max
  output = frequencies.keys.select { |key| frequencies[key] == highest }
end




# 4. Reflection


# Which data structure did you and your pair decide to implement and why?

# I told my pair that I needed to learn the basics of logic in Ruby as I only am familiar with using built in methods. So he helped with the if else steps.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# My pair understood the steps needed to be taken whereas I was stumped on trying to figure out how to store key value pairs that occurred the most in an array.

# What issues/successes did you run into when translating your pseudocode to code?

 # I couldn't decipher whether the iteration was happening to a hash or an array. Sometimes pseudocode can only get you so far. There are rules to your pseudocode steps. Will be pairing on this again with another and hopefully understand his perspective.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used .each for the initial solution and .inject for the refactored. .each threw me off a little. But I understand now that it can work for hashes.