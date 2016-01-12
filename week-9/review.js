// Vaidate CreditCard 

//Pseudocode
// 
//Create function checkCard that akes a num as input.
///(In seperte function)
// IF num length != 16 digits return error message.
// ELSE call next function
// (num_split function)
// Convert num to string, 
// Split num_string into an array, convert elements back to integers.

// iterate through num_array and double each number up the second to last.
// Slit any two digit numbers into two single digits. 
// Sum the array and return true if sum % 10 == 0 ELSE false


//Initial Solution

// function numLengthCheck (num){
// 	var numString = num.toString();
// 	return numString.length == 16;
// }

// function numSplit (num){
// 	var numArray= num.toString().split('');
// 	for (var i = 0; i < numArray.length; i++){
// 		numArray[i] = parseInt(numArray[i]);
// 	}
// 	return numArray
// }

// function checkCard(card){
// 	if (numLengthCheck(card) == false)
// 		return "Please input a 16 digit number";
// 	else
// 	   var numArray = numSplit(card);
    
//     for (i = 0 ; i < numArray.length -1 ; i ++){
//     	if (i % 2 == 0){ 
//     	numArray[i] *= 2;
//     	if (numArray[i].toString().length == 2){
//     		numArray[i] = numSplit(numArray[i]);
//     	}
//     }
//     }
//   var flattened = []
//     for (i = 0 ; i < numArray.length ; i++){
//     	if (numArray[i] instanceof Array){
//     		flattened.push(numArray[i][0])
//     		flattened.push(numArray[i][1])
//     	}
//     	else
//     		flattened.push(numArray[i])
//     }
    
//     sum = flattened.reduce((a,b) => a + b)

//    return sum % 10 == 0
      
// }

// console.log(checkCard(4408041234567901))
// console.log(checkCard(4408041234567906))

//Refactored Solution 

function numLengthCheck (num){
	var numString = num.toString();
	return numString.length == 16;
}

function numSplit (num){
	var numArray= num.toString().split('');
	numArray = numArray.map(function(num){return (parseInt(num))});
	return numArray
}

function checkCard(card){
	if (numLengthCheck(card) == false)
		return "Please input a 16 digit number";
	else
	   var cardArray = numSplit(card);
   
    for (i = 0 ; i < cardArray.length -1 ; i ++){
    	if (i % 2 == 0){ 
    	cardArray[i] *= 2;
    	if (cardArray[i].toString().length == 2)
    		cardArray[i] = numSplit(cardArray[i]);
    	}
    
    }

   var flattened = [].concat.apply([], cardArray)
     
   var sum = flattened.reduce((a,b) => a + b)

   return sum % 10 == 0
    
}

console.log(checkCard(4408041234567901))
console.log(checkCard(4408041234567906))

//Reflection
// What concepts did you solidify in working on this challenge? 
//   This really helped solidify basic javaScript syntax.  Working with JavaScript has mostly been an uphill battle so far but this went
//   suprsingly smoothly.  I was able to identify and correct errors much more quickly than I have in the past.

// What was the most difficult part of this challenge?
//   It's hard to say. No part was particularly difficult.

// Did you solve the problem in a new way this time?
//   The basic logic is the same but the method is a little diferent. In the ruby version all the methods were contained within a Card class whereas
//   I just used stright up methods in the JavaScript version.  I considered using a javaScript object but I'm still not very comfortable with objects
//   in javaScript. Also using a class in Ruby helped to simplify the code a little but I felt like using a javaScript object for the card would
//   introduce problems and make the code less readable. 

// Was your pseudocode different from the Ruby version? What was the same and what was different?
//    I think the pseudocode i wrote for this version was a bit more in depth. I explained each step in more detail but the basic logic is the same. 