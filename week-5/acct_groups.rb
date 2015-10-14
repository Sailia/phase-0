=begin

pseudocode:

Group the names four at a time. If there are remainders easily divisible by three, group those arrays three at a time. If there are remainders of two, add each name to each of the groups of three.


=end


array = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do" "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeff George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "JAMES KIRKPATRICK", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]


def group(copperheads)
 if copperheads.length % 4 == 0
   p copperheads.each_slice(4).to_a
 elsif copperheads.length % 5 == 0
   p copperheads.each_slice(5).to_a
 else
   array = copperheads.each_slice(3).to_a
   remainder = array.pop
   remainder.each_with_index {|name,index| array[index] << name }
   p array
 end
end

group(array)

=begin


What was the most interesting and most difficult part of this challenge?

The interesting part was deciding what to do with the remainders of two, and how to distribute them to other arrays less than 4. Difficult part was finding a way to separate the strings as there are different ways to do that but don't work with certain methods.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

I think that being more specific and logical is proving to be the best way to predict what should be done. I was initially being vague/presumptuous as I didn't know what to expect from Ruby. Baby steps...

Was your approach for automating this task a good solution? What could have made it even better?

I don't feel very confident in making things better at this point, I would like to practice more in the future, and I think when looking back at this, I would love to say, omg, I need to fix this pronto.

What data structure did you decide to store the accountability groups in and why?

I chose an array as it was most easy for me to find the index as well as to separate the names.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Can I please please please get back to you on that?


=end