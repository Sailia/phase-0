# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# Create an array students with 5 Student objects (HINT: You'll need to create the student objects first). Each student should be assigned a first_name, and 5 test scores (scores are between 0 and 100) when it is created. The first Student should be named "Alex" with scores [100,100,100,0,100]. Once you've done this properly, the Release 0 tests should pass.

# Create 5 new Student objects with the name and scores as the argument
# create a method that calculates the average score and assigns a letter grade for each student. Letter grades are based on the average (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).

# Initial Solution
# the symbols scores and first_name prepare their methods.
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    # create instance variables for the methods first_name and scores
    @first_name = first_name
    @scores = scores
  end

  def average
    # this method adds all the scores, divides them by 5 as there are 5 scores per student and sets scores by the result. This is the mean (average)
    @scores = @scores.inject do |sum, int| sum + int
    end
    @scores = @scores / 5
  end

  def letter_grade
    # assigns the average of scores with a letter grade
    if @scores >= 90
      @scores = "A"
    elsif @scores >= 80
      @scores = "B"
    elsif @scores >= 70
      @scores = "C"
    elsif @scores >= 60
      @scores = "D"
    else @scores <= 60
      @scores = "F"
    end
  end
end

def linear_search(students, name)
  # gets each student in the array students, and checks to see if the first_name method is equal to the name being called as the argument. If first_name exists, it returns the index of that element.
  students.each do |x|
    if x.first_name != name
      return -1
    else # x.first_name == first_name
      return students.rindex(x)
    end
  end
end

def binary_search(students, name)
  # gets each student in the array students, and checks to see if the first_name method is equal to the name being called as the argument. If first_name exists, it returns the index of that element.
  students.each do |x|
    if x.first_name != name
      return -1
    else # x.first_name == first_name
      return students.rindex(x)
    end
  end
end


# Refactored Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    # create instance variables for the methods first_name and scores
    @first_name = first_name
    @scores = scores
  end

  def average
    # this method adds all the scores, divides them by 5 as there are 5 scores per student and sets scores by the result. This is the mean (average)
    @scores = @scores.inject do |sum, int| sum + int
    end
    @scores = @scores / 5
  end

  def letter_grade
    # assigns the average of scores with a letter grade
    case
    when @scores >= 90
      "A"
    when @scores >= 80
      "B"
    when @scores >= 70
      "C"
    when @scores >= 60
      "D"
    else @scores <= 60
      "F"
    end
  end
end

def linear_search(students, name)
  # gets each student in the array students, and checks to see if the first_name method is equal to the name being called as the argument. If first_name exists, it returns the index of that element.
  students.each do |x|
    if x.first_name != name
      return -1
    else # x.first_name == first_name
      return students.rindex(x)
    end
  end
end

def binary_search(students, name)
  # gets each student in the array students, and checks to see if the first_name method is equal to the name being called as the argument. If first_name exists, it returns the index of that element.
  students.each do |x|
    if x.first_name != name
      return -1
    else # x.first_name == first_name
      return students.rindex(x)
    end
  end
end

student1 = Student.new("Alex", [100, 100, 100, 0, 100])
student2 = Student.new("Syema", [100, 100, 100, 100, 92])
student3 = Student.new("Eric", [89, 69, 21, 55, 100])
student4 = Student.new("Joanna", [89, 78, 45, 87, 67])
student5 = Student.new("Bradley", [100, 100, 100, 100, 92])


# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:
students = [student1, student2, student3, student4, student5]

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection

# What concepts did you review or learn in this challenge?

# I learned a new Ruby concept. It was difficult trying to create methods based on the tests.

# What is still confusing to you about Ruby?

# The instructions in the assignments.

# What are you going to study to get more prepared for Phase 1?

# Everything.
