
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var depth = "20 metres";
console.log("There's a turlte that hangs out at " + depth);

// simple food program 
// var food = prompt("What's your favorite food?")
// alert("Really " + food + " is my favorite too!!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping triangle 

var triangle = "#";

while (triangle.length < 8) {
	console.log(triangle);
	triangle += "#";
};

// FizzBuzz

var number = 1;

while (number <= 100) {
	if (number % 5 == 0 && number % 3 == 0)
		console.log("FizzBuzz");
	else if (number % 5 == 0)
		console.log("Fizz");
	else if (number % 3 == 0)
		console.log("Buzz");
	else
		console.log(number);
	number ++
};
  
// Chess Bord,  Unfinished (only creates first row)
number = 0 
row = ""

while (number < 8) {
  if (number % 2 == 0)
  	row += " ";
  else
  	row += "#";
  number ++
};
console.log(row);
// Functions

// Complete the `minimum` exercise.
 
function min(a,b) {
	if (a < b)
		return a;
	else
		return b;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Peter Lowe"
	age: 30
	favoriteFoods = ["Pizza", "Lasagna", "Burgers"]
	quirk: "I do not consider cucumbers to be food"
};