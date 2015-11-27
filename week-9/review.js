// Your GuessingGame class should be initialized with an integer called answer.

// Define an instance method GuessingGame#guess which takes an integer called guess as its input. guess should return the symbol :high if the guess is larger than the answer, :correct if the guess is equal to the answer, and :low if theguess is lower than the answer.

// Define an instance method GuessingGame#solved? which returns true if the most recent guess was correct and false otherwise.

// In this case, we're asking you to use symbols for :low, :high, and :correct. This is partly due to the way strings and symbols are stored in memory.


// Pseudocode:
// create an object called answer

// create a function called GuessingGame with the argument guess
// guess should take an integer as its input
// guess should return high if the guess is higher than the answer
// guess should return correct if the guess is equal to the answer
// guess should return low if the guess is lower than the answer

// create a function called solved that returns true if the guess is equal to the answer in the function guessingGame.

// Initial Solution


// function guessingGame(guess, answer)  {
//   if (guess == answer) {
//     console.log("Correct");
//     console.log(solved())
//    }  else if (guess > answer) {
//     console.log("Too high!");
//   } else {
//      console.log("Too low!");
//  };
// };

// function solved() {
//   return true
// }

// guessingGame(7, 7);


// Refactored

function guessingGame(guess, answer)  {
  if (guess == answer) {
    console.log("Correct");
    console.log(solved())
   } (guess > answer) ? "Too high!" : "Too low!";
};

function solved() {
  return true
}

guessingGame(9, 7);


// What concepts did you solidify in working on this challenge?

// I helped myself in accessing other functions from a function.

// What was the most difficult part of this challenge?

// Understanding why I needed to access another function to begin with. It seems counterintuitive.

// Did you solve the problem in a new way this time?

// It was a different way in terms of the second method not containing a true or false statement. It only resulted to true. Everything else was the same. Weird because I didn't look at my Ruby solution, just remembered how I solved it.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// It was a different way in terms of the second method not containing a true or false statement. It only resulted to true.
