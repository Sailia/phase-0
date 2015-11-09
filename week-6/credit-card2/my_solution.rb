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

# class CreditCard
#   def initialize(integer)
#     @integer = integer
#     if integer.to_s.length != 16
#       raise ArgumentError.new "This isn't a 16 digit number."
#     end
#   end

#   def split_add
#     nums = @integer
#     nums = nums.to_s.split('')
#     @new_array = []
#     (0..15).each do |x|
#       if x.even?
#         @new_array << (nums[x].to_i * 2)
#       else
#         @new_array << nums[x].to_i
#       end
#     end
#   end

#   def total
#     split_add
#     add_array = []
#     @new_array = @new_array.join
#     @new_array = @new_array.split('')
#     @new_array.map do |x|
#       add_array << x.to_i
#     end
#     @sum = add_array.inject do |sum, x|
#       sum = sum + x
#     end
#   end

#     def check_card
#       total
#       if @sum % 10 == 0
#         true
#       else
#         false
#       end
#    end
# end



# Refactored Solution

class CreditCard
  def initialize(integer)
    @integer = integer
      raise ArgumentError.new "This isn't a 16 digit number." if integer.to_s.length != 16
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
    @new_array = @new_array.join.split('')
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






# Reflection

# What was the most difficult part of this challenge for you and your pair?

# We struggled with going through each index in the array and modifying the element by multiplying it by two. My pair used his own solution by interating with the method scanf. He understood it but I struggled getting past that method as I wasn't familiar or found it readable. So I went and approached it by using a range.

# What new methods did you find to help you when you refactored?

# I conversed with Katy in office hours and she told me there isn't much to refactor other than to not repeat the assigning of the new_array with two methods such as the .join and the .split

# What concepts or learnings were you able to solidify in this challenge?

# accessing other methods within a method doesn't have to have an instance variable if you want to just run the method.
