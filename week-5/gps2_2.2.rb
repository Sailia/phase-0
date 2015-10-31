def empty_list
  list = Hash.new
end

def add_item(list, item, quantity)
  list[item] = quantity
  list
  puts "#{quantity} #{item} were added"
  list
end

def remove_item(list, item)
  list.delete(item)#
  puts "#{item} was removed"
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  puts "#{item} was updated(#{quantity})"

end
  puts
 def print_list(list, item, quantity)
   list.each do |item, quantity|
    item quantity
     list
end
end

# Refactor

def empty_list
  list = Hash.new
end

def add_item(list, item, quantity)
  list[item] = quantity
  puts "#{quantity} #{item}(s) were added"
  list
end

def remove_item(list, item)
  list.delete(item)#
  puts "#{item}(s) was removed"
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  puts "#{item} was updated (#{quantity})"
end

 def print_list(list)
   list.each do |item, quantity|
     puts "#{quantity} #{item}" << "(s)" if quantity > 1
   end
end

shopping_list = empty_list
add_item(shopping_list, "blackjack", 1)
add_item(shopping_list, "pineapple", 6)
add_item(shopping_list, "strawberry", 4)
add_item(shopping_list, "apple", 3)
remove_item(shopping_list, "apple")
update_quantity(shopping_list, "pineapple", 3)
print_list(shopping_list)
# Reflection


# What did you learn about pseudocode from working on this challenge?

# We were pretty bad at pseudocoding as we initially misread the instructions and were pseudocoding it all wrong. Its quite hard pseudocoding when the instructions are a little vague.

# What are the tradeoffs of using Arrays and Hashes for this challenge?

# There aren't any tradeoffs as you can always convert the result in the end. Hashes are great if you want to add more information to an object. They just don't look as pretty when they are returned. Conversion or code blocks can fix that but its just an extra step.

# What does a method return?

# The instructions inside once called.

# What kind of things can you pass into methods as arguments?

# Arrays, hashes, integers, strings....

# How can you pass information between methods?

# By using arguments. They have access to other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?

# Everything makes sense. We'll see tomorrow. Practice makes perfect.