# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin

# Your Solution Below

def smallest_integer(list_of_nums)
  list_of_nums = list_of_nums.sort
  if list_of_nums == []
    puts nil
  else
    return list_of_nums.first
  end
end

=end

# Refactor


def smallest_integer(list_of_nums)
  return list_of_nums == [] ? nil : list_of_nums.min
end


