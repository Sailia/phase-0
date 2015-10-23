# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#
# errors.rb
#
# 2. What is the line number where the error occurs?
#
# Line 194
#
# 3. What is the type of error message?
#
# Its a syntax error
#
# 4. What additional information does the interpreter provide about this type of error?
#
# The interpreter points to the syntax thats upsetting it, saying there is a method that isn't closed, and needs the keyword "end".
#
# 5. Where is the error in the code?
#
# The error is on line 194, at the end of the commented expecting the keyword end to close the method.
#
# 6. Why did the interpreter give you this error?
#
# There should be a end of input to close a method. There is an open method but Ruby goes through the whole page to look for close on one of the methods until it reaches the bottom and says, "Hey, what the hell? No end?". But that was confusing because I thought the end was needed on line 194 for a while.


# --- error -------------------------------------------------------

#south_park

south_park = "They killed Kenny!"

# 1. What is the line number where the error occurs?
# 52
# 2. What is the type of error message?
#undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# its a name error in which needs to be defined either as a local variable or method.
# 4. Where is the error in the code?
# the name itself, south_park
# 5. Why did the interpreter give you this error?
# Because its format had an underscore in which ruby thinks needs to be a variable or method


# --- error -------------------------------------------------------

# cartman()

def cartman(kenny)

end

# 1. What is the line number where the error occurs?
# 70
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method
# 4. Where is the error in the code?
# cartman()
# 5. Why did the interpreter give you this error?
# There's a method name and argument. Ruby might be assuming that we are calling a method. But that method doesn't exist hence Ruby stating the NoMethodError.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

def cartmans_phrase(kyle)
  puts kyle
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 89
# 2. What is the type of error message?
# cartmans_phrase
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# on line 89 where there is a missing argument and on line 90 where there is a string plugged in
# 5. Why did the interpreter give you this error?
# The method was called without an argument, and therefore the string 'I hate Kyle' couldn't be plugged in anywhere


# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("screw you")


# 1. What is the line number where the error occurs?
# 115
# 2. What is the type of error message?
#wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# That it is an argument error, not the method itself or anything else.
# 4. Where is the error in the code?
# on line 119
# 5. Why did the interpreter give you this error?
#The method was called but there was no argument given to plug into the code block.

# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit', 'Wyoming!')

# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
#Wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter sees only one argument being called outside the method, where there were two arguments assigned in the method.
# 4. Where is the error in the code?
#line 145 in the argument, where there is only one string pertaining to the first argument in the method.
# 5. Why did the interpreter give you this error?
# You cannot prepare a method with two arguments and only assign one argument. Ruby will be confused as it will not know what to do with the empty argument.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"


"Respect my authoritay!" * 5


# 1. What is the line number where the error occurs?
#166
# 2. What is the type of error message?
#(TypeError)
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum. You can't multiply an integer to a string
# 4. Where is the error in the code?
# On the multiplication symbol
# 5. Why did the interpreter give you this error?
# Numbers cannot multiply to a string because they are different classes of objects.
# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0

amount_of_kfc_left = 0/20



# 1. What is the line number where the error occurs?
# 184
# 2. What is the type of error message?
#Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
#The digits cannot be divided mathematically
# 4. Where is the error in the code?
# In the division symbol
# 5. Why did the interpreter give you this error?
# Because 20 cannot be divisible by zero. The same answer could be said better according to the above correction.

# --- error -------------------------------------------------------

require_relative "cartmans_essay"

# 1. What is the line number where the error occurs?
#203
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
#'require_relative'
# 5. Why did the interpreter give you this error?
#The file doesn't exist in the file path


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?

#The syntax error for keyword end was hard because I kept wondering why the comment needed an end. I didn't think Ruby considered comments when checking for errors. Or that may be Rspec only.

#How did you figure out what the issue with the error was?

#Mostly from the line of code. It was either within the method scope if the line started on the first method line, or it was a direct link to a variable.

#Were you able to determine why each error message happened based on the code?

#Yeah after bashing your head long enough, the bruises help to find new ways to look around.

#When you encounter errors in your future code, what process will you follow to help you debug?

# Check the line, then the key word and lastly the description of error. Also to make small incremental changes and running your code each time to make sure what was added that screwed up the code.