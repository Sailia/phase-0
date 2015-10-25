# Factorial

# I worked on this challenge [by myself, with: Bernice].
=begin

input: a non negative integer
output: the factorial of the input

Step 1
Get input that accepts an integer
Step 2
if input is 0 return 1
Step 3
if the number is not yet equal to 1, subtract 1 from itself and multiply itself with this result
Step 4
Return result

=end



# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  end

  number = (1..number)
  number.inject do |memo, n|
    memo = memo * n
  end
end
