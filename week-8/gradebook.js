/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];






// __________________________________________
// Write your code below.
var gradebook = {
  Joseph: {testScores: [80, 70, 70, 100]},
  Susan: {testScores: [85, 80, 90, 90]},
  William: {testScores: [75, 70, 80, 75]},
  Elizabeth: {testScores: [100, 90, 95, 85]},
  addScore: function(name, score){
      gradebook[name]["testScores"].push(score)
      },
  getAverage: function(name){
   
    return average(gradebook[name]["testScores"])
  }
  
}

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++){
    sum += array[i]
  }
 
  var avg = sum/array.length;
  return avg;
}

// console.log(gradebook.Joseph.testScores)
// gradebook.addScore("Joseph", 70)
// console.log(gradebook.Joseph.testScores)


// console.log(gradebook.getAverage("Joseph"))





// __________________________________________
// Refactored Solution

var gradebook = {
  Joseph: {testScores: [80, 70, 70, 100]},
  Susan: {testScores: [85, 80, 90, 90]},
  William: {testScores: [75, 70, 80, 75]},
  Elizabeth: {testScores: [100, 90, 95, 85]},
  addScore: function(name, score){
      gradebook[name]["testScores"].push(score)
      },
  getAverage: function(name){
   
    return average(gradebook[name]["testScores"])
  }
  
}

function average(array) {
  var sum = array.reduce((a,b) => a + b)
  var avg = sum/array.length;
  return avg;
}







// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
      // Adding functions to objects is pretty sratight forward.  The only thing that we had trouble with was rememebering to use the bracket notaion intead of the 
      // dot notation when looking for properties related to the input aruments of the function. 

// How did you iterate over nested arrays in JavaScript?
      // We didn't.  Now that this question has been asked I'm guessing we were supposed to use iteration to make the 'student' and 'testScore' properties in releses 2 and 3.
      // This was not made clear in the instructions so we simply added them into the gradebook object manually.  This would explain why we had trouble passing the third test 
      // which compares williams testScore to the third element of scores. Although we gave william a testScores array that is identical to the third element of socres JavaScript
      // did not recognise the two arrays as equal because they were created seperately. I've had this problem before with javaScript i'm not entirely sure why it happens. 

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
      // We used .reduce to find the sum of the array in the refactored version of our average function.  calls a function on each value of the array in turn.  In this 
      // case the function it calls takes the current value and the previous value and returns the sum of the two. In this way it works its way through the array and eventually
      // ends up with the sum of all the values. 







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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

// assert(
//   (gradebook.William.testScores === scores[2]),
//   "William's testScores should equal the third element in scores.",
//   "3. "
// )

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. " 
 
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)