#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.


class NameData

  attr_reader :name

  def initialize
    @name = "Syema"
  end
end


class Greetings

  def initialize
    @namedata = NameData.new
  end

  def hello
    print "Hello my name is #{@namedata.name}\n"
  end
end

greet = Greetings.new
greet.hello



# Reflection

=begin
Release 1

What are these methods doing?

The methods have separate empty puts for adding 0.8 more seconds to give the illusion of the information being processed

How are they modifying or returning the value of instance variables?

A new class Profile.new was created and was referred to the arguments in the set methods. The profile description were changed to a different name, job and profession.

Release 2

What changed between the last release and this release? What was replaced?

The attr_reader :age was added and had replaced a method called age without an argument:

def age
  @age
end

Is this code simpler than the last?

Yes because it removes more lines of code that does the same thing and doesn't compromise readability as you know where age is.

Release 3

What changed between the last release and this release? What was replaced?

attr_writer :age was also added and the following code was no longer needed:
  # def change_my_age=(new_age)
  #   @age = new_age
  # end

Is this code simpler than the last?

Yes because there are less lines of code, less memory is taken up and we did not need another method to assign @age to an argument when it can all be done so easily with the writer method.

=end





