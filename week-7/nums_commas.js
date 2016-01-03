// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Jordan Fox .

// Pseudocode
// input: a large number
// output: a string representing the number with commas.
// seperate number into an array
// Reverse that array
// Push each element from the reversed array into a new array inserting a comma after each 3.
// reverse new array and convert it to a string. 
  


// Initial Solution
function seperateComma(num){
 var num_str = num.toString();
  var num_arr = num_str.split("");
   var arr_reverse = num_arr.reverse();
 var result = []
 for (var i=0 ; i < arr_reverse.length ; i++) {
   if (i % 3 == 0){
     result.push(",");
   result.push(arr_reverse[i]);}
   else
     result.push(arr_reverse[i]);
   
 }
  result = result.reverse();
  result.pop();
 // result.join("");
  return(result.join(""))
}

console.log(seperateComma(1000000573475300000))



// Refactored Solution

function seperateComma(num){

  var num_arr = num.toString().split("").reverse();
   
 var result = []
 for (var i=0 ; i < num_arr.length ; i++) {
   if (i % 3 == 0){
     result.push(",");
     result.push(num_arr[i]);
   }
   else
     result.push(num_arr[i]);
   
 }
  result.reverse().pop();
 
  return(result.join(""));
}

console.log(seperateComma(324681625461))



// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//   It was interesting to solve the same problem in a new language. We had to use a different approach to the one I used in ruby beacause in my ruby version i used
//   the string method '.insert' and i'm not aware of any equivalent in java script. 

// What did you learn about iterating over arrays in JavaScript?
//   I was still not comfortable with the syntax for iterating over arrays in javaScript but now that i have implemented it myself i'm mush more confident and actually 
//   quite like the for loop syntax. Its nice that I can define my 'i' variable, it's limit and how much it increaeses with each iteration all in the same line. 

// What was different about solving this problem in JavaScript?
//    I could not use the insert method that I used in ruby so had to convert the number to an array and push each element into a new result array. The main differences are just in syntax.

// What built-in methods did you find to incorporate in your refactored solution?
//    We didn't find any built-in methods in refactoring.  We were happy with just refining our origional solution for readability and DRYness. 
