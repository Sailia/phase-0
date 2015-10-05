# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if upper_bound < lower_bound
    return 0
  end
  list_of_integers.each do |v|
    if v.between?(lower_bound, upper_bound) == false
      list_of_integers.delete(v)
    end
  end
  list_of_integers.length
end