 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

//Pseudocode
// Take in array of athletes
// Each athlet



// Bulk Up


var hash1 = { sarah: { name: "Sarah", event:"Line"},
               darius: {name: "Darius", event: "j"}
}

console.log(hash1.sarah.name + " won " + hash1.sarah.event + "!")

for (var key in hash1) {
    console.log(hash1[key].name + " won " + hash1[key].event + "!")
}


// Jumble your words

var s = "banana"
function reverse(s){
  return s.split("").reverse().join("")
}

console.log(reverse(s))

// 2,4,6,8

var arrayOfNumbers = [1,2,3,4,5,6,7,8]

function isEven(value) {
  return value % 2 == 0;
}

console.log(arrayOfNumbers.filter(isEven))


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection


// What JavaScript knowledge did you solidify in this challenge?

// I think the syntax is what I'm getting familiar with more as I try to think of ways to solve the problem in Ruby and translate it into JS.

// What are constructor functions?

// I need a lot more practice and reading to perform to understand everything I've done. But from what I've learned so far, I see that a constructor function includes a function then a new object, followed by instance like variables compared to Ruby called this. For e.g. :

// function myObject(){
//   this.iAm = 'an object';
//   this.whatAmI = function(){
//     alert('I am ' + this.iAm);
//   };
// };


// How are constructors different from Ruby classes (in your research)?

// In classes you usually have a method in the class that performs instructions to the variables given, and in order to call those methods, you must run the class. For example, if you have a class called Simple, and a @name = "Adam" inside an initialize method inside the class, and an attr_accessor :name, you just need to run the the class by calling the class to get the name by typing simple = Simple.new

// In a function however, I've learnt that you can create a function called Simple() and create the method inside the function with the keyword "this". this can refer to as "this.name" or "this.colour"
// To call the the object, you would create a new object and set it to a variable. Then you would put in the name after this. They are also different by putting an empty parentheses in front of the new object. Ruby would give an error if there is not argument. But if there is an empty argument in JS, there is no error.

function Simple() {
  this.name = "Adam";
}

Simple.prototype.sayHi = function() {
  return this.name + " says hi!";
}

var simple = new Simple();
simple.sayHi();
=> "Adam says Hi!"