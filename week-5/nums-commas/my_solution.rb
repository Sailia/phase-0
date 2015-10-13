# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.
=begin
# 0. Pseudocode

# What is the input?
A positive integer
# What is the output? (i.e. What should the code return?)
A comma-separated integer as a string.
# What are the steps needed to solve the problem?

1. Have the method accept a random number as an argument

2. Create a code block that count from the last object in the array.

3. After the third object, it places a comma and stops at the second index from the beginning of the array




# 1. Initial Solution
def separate_comma(random_num)
   if random_num < 0
puts "Must be a positive integer"
else
   random_num.each {|x| x.split.last - 3 }
=end

def separate_comma(random_num)
  if random_num < 0
    return "Must be positive"
  end

  random_num = random_num.to_s

  if random_num.length == 3
     random_num
  elsif random_num.size == 4
     random_num.insert(1, ",")
  elsif random_num.size == 5
     random_num.insert(2, ",")
  elsif random_num.size == 6
     random_num.insert(3, ",")
  elsif random_num.size == 7
     random_num.insert(1, ",")
     random_num.insert(5, ",")
  elsif random_num.size == 8
    random_num.insert(2, ",")
    random_num.insert(6, ",")
  end
end


# 2. Refactored Solution




# 3. Reflection
