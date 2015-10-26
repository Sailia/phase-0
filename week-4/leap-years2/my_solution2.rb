# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(year)
  if year % 100 != 0 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 && year % 400 != 0
    false
  else year % 4 != 0
    false
  end
end


#refactored


