# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16-digt integer
# Output: Boolean
# Steps:

# create class CreditCard

# create initialize method that takes 1 argument (an integer)

# IF credit card number is not equal to 16 digits, you should receive an argument error.

# END

# Split up 16-digit integer into individual digits.

# Starting at 1st integer, double every other integer.

# Split this new list of numbers into individual digits to account for double digits in list.

# Add up all the digits.

# Divide results by 10.

# If no remainder, output true.

# If there is a remainder, output false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(integer)
    @integer = integer
    if integer.to_s.length != 16
      raise ArgumentError.new "This isn't a 16 digit number."
    end
  end

  def split_add
    nums = @integer
    nums = nums.to_s.split('')
    @new_array = []
    (0..15).each do |x|
      if x.even?
        @new_array << (nums[x].to_i * 2)
      else
        @new_array << nums[x].to_i
      end
    end
  end

  def total
    split_add
    add_array = []
    @new_array = @new_array.join
    @new_array = @new_array.split('')
    @new_array.map do |x|
      add_array << x.to_i
    end
    @sum = add_array.inject do |sum, x|
      sum = sum + x
    end
  end

    def check_card
      total
      if @sum % 10 == 0
        true
      else
        false
      end
   end
end



# Refactored Solution








# Reflection

=begin
class CreditCard
  def initialize(integer)
    @integer = integer

    if integer.to_s.size != 16
      raise ArgumentError.new "Please enter a 16 digit number"
    end
  end

  def check_card
    require 'scanf'
    new_num = @integer.to_s.scanf("%1d" * @integer.to_s.size)
#     p new_num
    new_num = new_num.reverse
    new_num.each_with_index do |x, i| i.odd?
      if true
        x.length * 2
      else
        x.next
      end
    end
    p new_num
  end
end

test = CreditCard.new(1234567891234567)

p test.check_card

=end