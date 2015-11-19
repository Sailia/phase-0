// Design Basic Game Solo Challenge

// This is a solo challenge

// What I want my game to do:
// I want SpongeBob to attack Starfish until Starfish dies.



// Your mission description:
// Overall mission: Kill Starfish
// Goals: Build up to special Hadouken after doing 5 hurricane kicks before Starfish kills SpongeBob after 9 hits
// Characters: SpongeBob, Starfish
// Objects: SpongeBob: attack, walk
// Functions:
// Function 1: Attack
// Function 2: Walk past starfish corpse

// Pseudocode
// Create a function called SpongeBob
// SpongeBob attack starfish 5 times
// Second function is called starfish corpse
// SpongeBob walks past Starfish corpse
//


// object 1 SpongeBob
// property: strength is 1
// function: attack
// object 2 Starfish
// property: hp is 5, status is alive
// function: die


// Initial Code
var SpongeBob = {};
var Starfish = {};
SpongeBob.strength = {};
SpongeBob.strength = 1;
Starfish.hp = {};
Starfish.hp = 5;
Starfish.status = {};
Starfish.status = "Alive";


function attack()  {
  while (Starfish.hp > 0) {
  Starfish.hp = Starfish.hp - SpongeBob.strength;
   console.log("SpongeBob has dealt 1 damage to Starfish, Starfish hp is " + Starfish.hp);
   if (Starfish.hp == 0) {
    die();
   }
  }
}

function die()  {
  Starfish.status = "Dead";
  console.log("Starfish has been defeated");
}

attack();




// Refactored Code






// Reflection
//
//
// What was the most difficult part of this challenge?

// Visualising the Objects and the Properties and the values of the properties.

// What did you learn about creating objects and functions that interact with one another?

// That you can call other functions within a function.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// Not so much a built in method but more of a difference when calling a variable in a string was new to me in JS. In Ruby, you'd call the variable inbetween curly braces and a hash, but in JS you just need the name of the variable without quotes and a plus sign.

// How can you access and manipulate properties of objects?
//By creating a new variable that is set to a new object, then you can add multiple properties to that object. To access the property in a object: Object.property.propertyname = "new name"
//
//
//
//
//