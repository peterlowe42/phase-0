// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

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

// Pseudocode
// create a function called "tallyVotes" that iterates through the objects in "votes".
// it should add a property to each of the objects in "voteCount" that is equal to each person's name
// loop through everyone's votes and add one to namepresident each time it finds one and do that for every position.
// make a function that assigns the positions that finds the person with the highest vote count for each position and make them the winner.

// __________________________________________
// Initial Solution
//  function tallyVotes(votes){
//   for (var name in votes){
//     voteCount.president[name] = 0
//     voteCount.vicePresident[name] = 0
//     voteCount.secretary[name] = 0
//     voteCount.treasurer[name] = 0
//   }
//    for (var name in votes){
//     voteCount.president[votes[name]["president"]] += 1
//     voteCount.vicePresident[votes[name]["vicePresident"]] += 1
//     voteCount.secretary[votes[name]["secretary"]] += 1
//     voteCount.treasurer[votes[name]["treasurer"]] += 1
//    }
//  }

// tallyVotes(votes)

// console.log(voteCount)




// __________________________________________
// Refactored Solution
function tallyVotes(votes){
  for (var name in votes){
    voteCount.president[name] = 0
    voteCount.vicePresident[name] = 0
    voteCount.secretary[name] = 0
    voteCount.treasurer[name] = 0
  }
   for (var name in votes){
    voteCount.president[votes[name]["president"]] += 1
    voteCount.vicePresident[votes[name]["vicePresident"]] += 1
    voteCount.secretary[votes[name]["secretary"]] += 1
    voteCount.treasurer[votes[name]["treasurer"]] += 1
   }
 }


 function assign_officers(officers){
  for (var key in officers){
    var max = 0;
      for (var name in voteCount[key]){
      if (voteCount[key][name] > max){
        max = voteCount[key][name];
       officers[key] = name;
     }
  }
  }
}

tallyVotes(votes)
assign_officers(officers)

 










// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
//    It's a lot more tedious than in Ruby!! We eventually got it fiured out atfer a very long time of hitting error messages and strange unexpected outputs. I think the key to
//    getting it right is having all the property names clear in your head and making sure you use the bracket notation where approprite. The biggest problem we had was the problem 
//    that I keep running into in javaScript that the error messages are realy unhelpful. Alot of the time it won't even tell you what line the error is on!

// Were you able to find useful methods to help you with this?
//    By the time we got the loop working there wasn't time to look for new methods so we just left it as it was.  

// What concepts were solidified in the process of working through this challenge?
//    That JavaScript is a fickle creature. 






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
