#ruby
#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "What\'s your first name?"
first_name = gets.chomp

puts "What\'s your last name?"
last_name = gets.chomp

puts "Hello " + first_name + " " + last_name + "!"


puts "What\'s your favourite number?"
number_better = gets.chomp.to_i + 1

puts number_better.to_s + " " + "is bigger and better anyway ;)"
