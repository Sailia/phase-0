# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# The following method sets the serving size as the value and the item to make as the key
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

 raise ArgumentError.new("#{item_to_make} is not a valid input") if library.include? item_to_make == false




# check if the key in library is not equal to the value, if not equal then print error_counter -1 and set that as the new value

# raise argument error if key (food) is added when calling the following method

# set serving_size to library and get the value of the key, and set that value in a new array at the index number
# serving_size_mod is a modified version of serving size in which finds the remainder of serving size
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

# if there is no remainder, return the order_quantity divided by serving size of the key (food item)
# if there is a remainder divide order_quantity by serving size of the food item, and return the modified serving size as the leftovers

    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" if serving_size_mod == 0
    case
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


# What did you learn about making code readable by working on this challenge?

# Putting in smarter logic that can shorten code and still return the same answer. Also, in if statements, they do not have to be in the beginning. They can be placed like this: return blah blah blah if blah = blah.

# Did you learn any new methods? What did you learn about them?

# I learned about values_at but that actually didn't help the code in this instance, and simple logic only applied here.

# What did you learn about accessing data in hashes?

# It was a refresher to access a hash because I forgot that you can access the value through its key, and I was stumped on trying to access just the value.

# What concepts were solidified when working through this challenge?

# Accessing hashes and ArgumentError(s).