[basic-math](https://github.com/Sailia/phase-0/blob/master/week-4/basic-math.rb)

[defining-variables](https://github.com/Sailia/phase-0/blob/master/week-4/defining-variables.rb)

[simple-string](https://github.com/Sailia/phase-0/blob/master/week-4/simple-string.rb)

#What does puts do?

puts returns the a nil value, but prints the output to the console with a new line. In other words, puts will not be run but the solution will be printed on the next line. puts will also not print nil from an array.

#What is an integer? What is a float?

An integer is a whole number be it positive or negative. A float is a decimal number.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Dividing an integer expecting to print a float will not happen, the integer will round down. This kind of equation is good if you want to know what you can get the most out of something. For example, I want to buy two puppies that cost 500 each. I have 750. I can't buy a puppy and a half, only one. So I round down to what I can afford. I just imagined a half puppy. Anyone seen catdog?

```ruby
hours in a year:

irb(main):001:0> 24 * 365
=> 8760

Minutes in a decade:

irb(main):003:0> 365 * 10
=> 3650
irb(main):004:0> 3650 * 24
=> 87600
irb(main):005:0> 87600 * 60
=> 5256000
irb(main):006:0> 5256000 * 60

Authors age:

irb(main):010:0> 1160000000 / 60
=> 19333333
irb(main):011:0> 19333333 / 60
=> 322222
irb(main):012:0> 322222 / 24
=> 13425
irb(main):013:0> 13425 / 365
=> 36
```

#Reflect


##How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby does addition, subtraction and multiplication like a regular calculator, division however tends to drop the remainder when dividing with integers, not with floats.

##What is the difference between integers and floats?

Integers are whole numbers and floats are decimals.

##What is the difference between integer and float division?

When dividing integers, ruby drops the remainder. But with floats, Ruby sticks to precision.

##What are strings? Why and when would you use them?

A string can have a number of characters between single or double quotes. You can use them to output words using p, print or puts as well as plug in equations and variables.

##What are local variables? Why and when would you use them?

Local variables start with a lower case letter or an underscore character. They are not objects but they reference objects.

##How was this challenge? Did you get a good review of some of the basics?

Yeah, I think so. I was not very good at understanding the instructions too well and got a little confused for the simple strings methods chapter. I later found out that I was meant to have the sentence written backwards. It just said to modify. Maybe I just take things too literally.