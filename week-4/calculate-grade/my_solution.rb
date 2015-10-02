# Calculate a Grade

# I worked on this challenge by myself, with: Syema Aillia


# Your Solution Below
puts "What is your grade?"
grade = gets.chomp.to_i


def get_grade grade

    if grade >= 90 && grade <= 100
      puts "Your grade is A"
    elsif grade >= 80 && grade <= 89
      puts "Your grade is B"
    elsif grade >= 70 && grade <= 79
      puts "Your grade is C"
    elsif grade >= 69 && grade <= 60
      puts "Your grade is D"
    else
      puts "You FAILED"
    end
  end

get_grade(grade)


