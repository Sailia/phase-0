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