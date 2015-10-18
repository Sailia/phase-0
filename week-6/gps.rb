# Your Names
# 1) Syema Ailia
# 2) Armani Saldana

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.
def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make)

  serving_size = menu[item_to_make]
  remainder = order_quantity % serving_size

  if remainder == 0
   "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{remainder} leftover ingredients."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

That the DRY concept makes shorter code more readable by not having to refer to multiple conditions given to one variable throughout multiple methods as that can make it difficult to find the variable that equalled to something in one method to equal to another. Also, different methods that apply the same conditional to two variables can be shortened to apply to both variables in one line.

Did you learn any new methods? What did you learn about them?

I learned about values_at which returns an array containing the values associated with the given keys. Hash.select is the equivalent.

What did you learn about accessing data in hashes?

That when performing a code block on a hash, each.do will not work on a hash. It will refer to the pair as a whole if one variable between the pipes in the code block is used.

What concepts were solidified when working through this challenge?

I learned that an unless statement can join as a sentence after the conditional like this:

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless menu.has_key?(item_to_make)

=end