# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# a positive integer
# What is the output? (i.e. What should the code return?)
# comma separated integer as a string
# What are the steps needed to solve the problem?

# have a variable accept any positive integer as an array
# reverse array
# insert comma every three indices if string.length > 4


# 1. Initial Solution

# def separate_comma(int)
#   int = (999...int)
#   # int = int.to_s.reverse
#   if int.length >= 4
#     int.each do |x| x.split(',', 2)
#       return int.reverse
#     end
#   end
# end

# What is the input?
# a positive integer
# What is the output? (i.e. What should the code return?)
# comma separated integer as a string
# What are the steps needed to solve the problem?
# reverse string




def separate_comma(num)
  num = num.to_s
  index = num.length - 1
  if index < 3
    return num
  end

  index = index - 3

  while index > -1
    num.insert(index.next, ",")
    index = index - 3
  end
  num
end



# 2. Refactored Solution




# 3. Reflection


# What was your process for breaking the problem down? What different approaches did you consider?

# I tried reversing the number and counting backwards but no code block worked for me. I'm pretty bad with loops so I didn't know I had to use one in this case. I will need study loops more to be more confident with them and to know of their potential.

# Was your pseudocode effective in helping you build a successful initial solution?

# Pseudocode can only get you so far when you know what you want to do but cannot translate. So in this case it did not help me as much. I just need to study loops more.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# I couldn't find a way to refactor a while loop.

# How did you initially iterate through the data structure?

# num.each {|x| x.insert(2, ",")}

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Haven't refactored. Struggled for three days on this assignment. Seriously.