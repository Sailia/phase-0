// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// PSUEDOCODE -- Tally the votes in voteCount.
// 1. Go through each property in in votes
// 2. Go into each subproperty in votes access position
// 3. Assign position a value of 0 (so that it isn't undefined)
// 4. Iterate through each subproperty and increment value by 1 each time
// 5. Assign the integer value to candidate property in position property in voteCount

// PSUEDOCODE -- Assign officer positions.
// 1. For each property in voteCount, obtain the value of the subproperty
// 2. Create variable to compare subproperties
// 3. Compare each subproperty's value to variable and assign variable to higher value
// 4. Assign officer position to the variable (which should be the highest)
// 5. Print officers


// __________________________________________
// Initial Solution

for(var voter in votes) {
  voteCount["president"][votes[voter]["president"]] = 0;
  voteCount["vicePresident"][votes[voter]["vicePresident"]] = 0;
  voteCount["secretary"][votes[voter]["secretary"]] = 0;
  voteCount["treasurer"][votes[voter]["treasurer"]] = 0;
};

for(var voter in votes) {
  voteCount["president"][votes[voter]["president"]]++;
  voteCount["vicePresident"][votes[voter]["vicePresident"]]++;
  voteCount["secretary"][votes[voter]["secretary"]]++;
  voteCount["treasurer"][votes[voter]["treasurer"]]++;
};
// variablename = (condition) ? value1:value2

for(var position in voteCount) {
  var winner = 0;
  for(var candidate in voteCount[position])  {
    if(voteCount[position][candidate] > winner)  {
      winner = voteCount[position][candidate];
      officers[position] = candidate;
    };
  };
};

console.log(voteCount);
console.log(officers);

// __________________________________________
// Initial Solution


for(var voter in votes) {
  voteCount[president][votes[voter][president]] = 0;
  voteCount[vicePresident][votes[voter][vicePresident]] = 0;
  voteCount[secretary][votes[voter][secretary]] = 0;
  voteCount[treasurer][votes[voter][treasurer]] = 0;
};

console.log(voteCount);





// __________________________________________
// Refactored Solution

 for(var voter in votes) {
  for(var position in votes[voter]) {
  voteCount[position][votes[voter][position]] = 0;
  };
};

for(var voter in votes) {
  for(var position in votes[voter]) {
  voteCount[position][votes[voter][position]]++;
  };
};


// __________________________________________
// Reflection


// What did you learn about iterating over nested objects in JavaScript?

// That using bracket notation is the best way forward in creating property values and accessing them.

// Were you able to find useful methods to help you with this?

// My pair was familiar with bracket notation and her explaination was great when it came to the methods.

// What concepts were solidified in the process of working through this challenge?

// Using bracket notation compared to dot notation.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)