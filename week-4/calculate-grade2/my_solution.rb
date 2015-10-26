# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(grade)
  if grade >= 90
   "A"
  elsif grade >= 80 && grade <= 89
   "B"
  elsif grade >= 70 && grade <= 79
   "C"
  elsif grade >= 60 && grade <= 69
   "D"
  else grade >= 50 && grade <= 59
   "F"
  end
end

