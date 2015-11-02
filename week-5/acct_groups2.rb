array = ["Syema Ailia", "Alan Alcesto" "Daniel Andersen" "James Artz" "Darius Atmar" "Brian Bensch" "Nicola Beuscher" "Kris Bies" "Logan Bresnahan" "William Brinkert" "Scott Chou" "Bernice Anne W Chua" "Abraham Clark" "Jon Clayton" "Kevin Corso" "Jacob Crofts" "Amaar Fazlani" "Solomon Fernandez" "Edward Gemson" "Jamar Gibbs" "Chris Gomes" "Will Granger" "Christopher M. Guard" "Ryan Ho" "Igor Kazimirov" "Walter Kerr" "Karla King" "Becky Lehmann" "Malia Lehrer" "Carolina Medellin" "Timothy Meixell" "Chris Miklius" "Joshua Monzon" "Shea Munion" "Bryan Munroe" "Trevor Newcomb" "Aleksandra Nowak" "Fatma Ocal" "Van Phan" "Luis Fernando Plaz" "Natalie Polen" "Alicia Quezada" "Jessie Richardson" "Nimi Samocha" "Zach Schatz" "Tal Schwartz" "Pratik Shah" "Josh Shin" "Shawn Spears" "Sasha Tailor" "Nil Thacker" "Natasha Thapliyal" "Sabrina Unrein" "Brian Wagner" "Clinton Weber" "Gregory Wehmeier" "Michael Whelpley" "Alexander Williams" "Peter N Wood" "Ryan Zell"]


def cohort(foxes)

  if foxes.length % 4 == 0
   p foxes.each_slice(4).to_a
  elsif foxes.length % 5 == 0
   p foxes.each_slice(5).to_a
  else
    array = foxes.each_slice(3).to_a
    left_over = array.pop
    left_over.each_with_index {|name, index| array[index] << name}
    p array
  end
end

p cohort(array)


# What was the most interesting and most difficult part of this challenge?

# Finding a way to get the left over person added to different arrays.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I wrote pseudocode in my book as for some reason writing it down helps me more

# Was your approach for automating this task a good solution? What could have made it even better?

# If the cohort names were easier to implement in the code. I had to delete a bunch of stuff which took ages.

# What data structure did you decide to store the accountability groups in and why?

# I used an array as it was easier to grab the names with their name by slicing the array and by the index by using the built in method .each_with_index

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned about each_with_index and slice.