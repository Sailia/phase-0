
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def your_name
    @name = "Syema"
  end
end


class Greetings
  def initialize
    @hi = NameData.new
  end

  def hello
    puts "Hello #{@hi.your_name}! It's wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello

# Reflection

# Release 1
=begin
What are these methods doing?

Each method displays the age, occupation, and name with the potential of changing those attributes

How are they modifying or returning the value of instance variables?

by assigning the instance variable to a new instance variable in another method that changes the previous information on the old instance variables.

Release 2

What changed between the last release and this release?

The method for age has left the building

What was replaced?

the method age has been replaced with attr_reader :age

Is this code simpler than the last?

yes as it does the same thing but with one line

Release 3

What changed between the last release and this release?

The attr writer replaced the assigning of age to new age

What was replaced?

The attr writer replaced the assigning of age to new age

Is this code simpler than the last?

yes as it does the same thing but with one line


Release 6: Reflect

What is a reader method?

Creates a new method with the same instance variable name

What is a writer method?

It creates a new method with the same instance variable name and assigns it to the argument in that method

What do the attr methods do for you?

They can save you writing the same method over and over and help you make adjustments to the attr methods easily instead of looking for the method in the code

Should you always use an accessor to cover your bases? Why or why not?

Yes if you are only modifying the method in one class but it shouldn't be used for multiple classes as the attributes are different.

What is confusing to you about these methods?

being able to remember what they can be used for....

=end