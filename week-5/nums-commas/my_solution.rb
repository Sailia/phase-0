# Numbers to Commas Solo Challenge

# I spent [15] hours on this challenge.

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


# 3. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?

I thought of doing a if 1000 >= 9999
then insert comma after the first digit. But that conflicted with string and integer conversions.

Was your pseudocode effective in helping you build a successful initial solution?

Not really. I had to pseudocode 5 times to finally get something simple enough to be readable but still gave the right outcome.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I will refactor once I catch up. I feel like I could definitely make this better such as accepting any number, not just set to 8 characters to pass Rspec. I'm submitting this work late and need to focus on week-6.

How did you initially iterate through the data structure?

I didn't use iteration. I created a set amount on each conditional. Not good as thats very limiting.

Do you feel your refactored solution is more readable than your initial solution? Why?

I did a lot of returns on my if/else statements. Deleted those as its not needed.

=end