# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # each letter in the word bingo will be a string
  # the numbers will be a range of (1..100)

# Check the called column for the number called.
  #fill in the outline here
  # check if index 0 ("B") is equal to the element in index 1

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # set the index of the array with the string X

# Display a column to the console
  #fill in the outline here
  # p new_game.call

# Display the board to the console (prettily)
  #fill in the outline here
  # print element with changes on a new line else print element in each method on a new line

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ["B", "I", "N", "G", "O"]
    number = (1..100).to_a
    @lettnum = letter.sample, number.sample
  end

  def check
    case @lettnum[0]
    when "B"
      @bingo_board.each do |row|
        if row[0] == @lettnum[1]
          row[0] = "X"
          p row
        else
          p row
        end
      end
    when "I"
        @bingo_board.each do |row|
        if row[1] == @lettnum[1]
          row[1] = "X"
          p row
        else
          p row
        end
      end
    when "N"
      @bingo_board.each do |row|
        if row[2] == @lettnum[1]
          row[2] = "X"
          p row
        else
          p row
        end
      end
    when "G"
      @bingo_board.each do |row|
        if row[3] == @lettnum[1]
          row[3] = "X"
          p row
        else
          p row
        end
      end
    else "O"
      @bingo_board.each do |row|
        if row[4] == @lettnum[1]
          row[4] = "X"
          p row
        else
          p row
        end
      end
    end
  end
end
=end
# Refactored Solution
# I need help on refactoring this...
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ["B", "I", "N", "G", "O"]
    number = (1..100).to_a
    @lettnum = letter.sample, number.sample
  end

  def check
    case @lettnum[0]
    when "B"
      @bingo_board.each do |row|
        if row[0] == @lettnum[1]
          row[0] = "X"
          p row
        else
          p row
        end
      end
    when "I"
        @bingo_board.each do |row|
        if row[1] == @lettnum[1]
          row[1] = "X"
          p row
        else
          p row
        end
      end
    when "N"
      @bingo_board.each do |row|
        if row[2] == @lettnum[1]
          row[2] = "X"
          p row
        else
          p row
        end
      end
    when "G"
      @bingo_board.each do |row|
        if row[3] == @lettnum[1]
          row[3] = "X"
          p row
        else
          p row
        end
      end
    else "O"
      @bingo_board.each do |row|
        if row[4] == @lettnum[1]
          row[4] = "X"
          p row
        else
          p row
        end
      end
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
new_game.check


#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was too difficult to the point that I needed to change my pseudocode as it wasn't applying well to my code.

What are the benefits of using a class for this challenge?

That you can use instance variables and call multiple instance methods outside of the class.

How can you access coordinates in a nested array?
What methods did you use to access and modify the array?

By accessing the elements through their indices. I modified the array by assigning X to the index of that array.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I haven't learned a new method in this assignment.

How did you determine what should be an instance variable versus a local variable?

When I needed the information assigned in one method to be passed down to another method.

What do you feel is most improved in your refactored solution?

I wish I had the time to refactor this....

=end