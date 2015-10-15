=begin

Your grocery list has the following minimum requirements. You will need to have separate methods for each of the following use cases:

Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

=end





def new_list
  @list = Hash.new
end

def add_item(item, quantity)
  @list[item] = quantity
end

def remove_item(item)
  @list.delete(item)
end

def update_quantity(item, quantity)
  @list[item] = quantity
end

def final_list
 puts @list
end

new_list
add_item("orange", 5)
add_item("cherry", 12)
add_item("cheese", 1)
remove_item("cheese")
update_quantity("cherry", 10)

puts final_list

#Test your solution


def new_list
  @list = Hash.new
end

def add_item(item, quantity)
  @list[item] = quantity
end

def remove_item(item)
  @list.delete(item)
end

def update_quantity(item, quantity)
  @list[item] = quantity
end

def final_list
 puts @list
end

new_list
add_item("Lemonade", 2)
add_item("Tomatoes", 3)
add_item("Onions", 1)
add_item("Ice Cream", 4)
remove_item("Lemonade")
update_quantity("Ice Cream", 1)

puts final_list

#Refactor

def new_list
  @list = Hash.new
end

def add_item(item, quantity)
  @list[item] = quantity
end

def remove_item(item)
  @list.delete(item)
end

def update_quantity(item, quantity)
  @list[item] = quantity
end

def final_list
 puts @list
end

new_list
add_item("orange", 5)
add_item("cherry", 12)
add_item("cheese", 1)
remove_item("cheese")
update_quantity("cherry", 10)

puts final_list

=begin

I wanted to refactor by adding the following to line 97:

def final_list
  @list.map ({|k, v| "#{k} => #{v}"}.sort)
end

I wanted the list to cascade. I couldn't get this to work.

Reflection

What did you learn about pseudocode from working on this challenge?

This pseudocode was precise in the steps and in plain english. It was easier to approach.

What are the tradeoffs of using Arrays and Hashes for this challenge?

Hashes you can't arrange them as well, as you're referring to two objects, the key value pair. With Arrays its harder to access two objects that coincides with what the value is for each object.

What does a method return?

Nil. JK.
In this case, it returns the last method with all the changes incorporated from previous methods.

What kind of things can you pass into methods as arguments?

You can pass arrays, hashes, and variables.

How can you pass information between methods?

By assigning an instance variable in the initialized method, then using that defined variable throughout the methods and applying methods.

What concepts were solidified in this challenge, and what concepts are still confusing?

I'm currently confused about how to turn a hash into a cascading list. My knowledge solidified on instance variables and their wider scope to reach other methods.


=end





