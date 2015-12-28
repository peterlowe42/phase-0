// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up
// Bulk Up
/*Pseudocode:
Define a function that takes an array of athlete names, an event.
Create or edit the object with the parameters
Define function that adds win or lose to the athlete
Print [name] [won] [event]
*/
var athletes = [{name:"Bob", event:"Long Jump"},{name:"Jane", event:"100m Sprint"}, {name:"Tom", event:"200m Dash"}]

function win(athletes) {
  for (var count = 0; count < athletes.length; count++)
    console.log(athletes[count]["name"] + " won the " + athletes[count]["event"])
};

win(athletes)
// Jumble your words
/*Pseudocode:
Convert string to array
reverse array
print array
*/
var string = "Jumbled words"

function reverse(string){
  var arr = string.split("");
  arr.reverse();
  var str = arr.join("")
  console.log(str)
}

reverse(string)
// 2,4,6,8

var nums = [1,2,3,4,5,6,7,8,9]

function even(num_array){
  var nums_new = []
  for (var count = 0; count < num_array.length; count++)
    if (num_array[count] % 2 == 0)
      nums_new.push(num_array[count])
      console.log(nums_new)
}


even(nums)

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name,
  this.age = age,
  this.sport = sport,
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?

  I mostly solidified the knowlwedge that I really hate Java Script. On a more serious note I think i'm much clearer on the syntax for defining functions and looping throiugh arrays.

What are constructor functions?

  Constructor functions are functions that construct an object based on input argumants.

How are constructors different from Ruby classes (in your research)?
  
   With constructor functions there is no need for the attr functions because attributes can automatically be accesed by object_name.arribute_name. 
   There does not seem to be an equivenlent to the @variable_name syntax for defining instance variables in java script. 

*/