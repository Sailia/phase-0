// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// Reflection


// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I tried to use my solution in Ruby. Was way wrong. Javascript is very different in terms of creating variables.

// What did you learn about iterating over arrays in JavaScript?

// I needed to use a code block similar to Ruby, but between curly braces.

// What was different about solving this problem in JavaScript?

// Theres a lot of reassigning variables in JavaScript.

// What built-in methods did you find to incorporate in your refactored solution?

// We used the .splice method

// I worked on this challenge with: Mia Lehrer.

// Pseudocode
//Make the number into a string
//Make the string into an array
//Set an index variable equal to the length of the array
//If the length is <4
//Return the number
//Else
//Subtract three from the index each loop While
//the index is greater than 0
//Add a comma each loop
//Join the array into a string
//Return the string


// Initial Solution


var num = 800000;

var numAsString = num.toString().split('');
var numIndex = numAsString.length;
if (numIndex < 4) {
  console.log(num);
}

var index = numIndex;
var numArray = numAsString;

index -= 3;

while (index > 0) {
numArray.splice(index, 0, ",");
index -= 3;
}
numArray = numArray.join('');
console.log(numArray);


// Refactored Solution


var num = 80000;

var numArray = num.toString().split('');
var numIndex = numArray.length;
if (numIndex < 4) {
 console.log(num);
}

numIndex -= 3;

while (numIndex > 0) {
numArray.splice(numIndex, 0, ",");
numIndex -= 3;
}
numArray = numArray.join('');
console.log(numArray);


// Your Own Tests (OPTIONAL)




