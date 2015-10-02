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



#How do you define a local variable?

fruit = "apple"

#How do you define a method?

def fruit(name)
  'apples to ' + name
end

fruit(apples)

#What is the difference between a local variable and a method?

#A local variable when assigned to an object, is a reference to that object. A method can execute a code block when called.

#How do you run a ruby program from the command line?

#To launch a ruby program/file, you type in the following:

#ruby file_name.rb

#You can also type ruby commands in terminal once in the ruby shell. To do this, you type in the shell:

#irb

#How do you run an RSpec file from the command line?

#rspec file_name_rspec.rb

#What was confusing about this material? What made sense?

#The most confusing part of the material was the layout and questions to the assignment. They were extremely vague, and some of the links for reference were broken. The required chapters to be read before starting an assignment was useless as it had nothing to do with the actual assignment. When I actually understood what I had to do, it was just a matter of looking up syntax thats acceptable to what I wanted to accomplish.

#https://github.com/Sailia/phase-0/blob/master/week-4/add-it-up/my_solution.rb

#https://github.com/Sailia/phase-0/blob/master/week-4/address/my_solution.rb

#https://github.com/Sailia/phase-0/blob/master/week-4/define-method/my_solution.rb

#https://github.com/Sailia/phase-0/blob/master/week-4/math/my_solution.rb

