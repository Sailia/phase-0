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
     puts "#{item}(s) #{quantity}"
   end
end