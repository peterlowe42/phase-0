// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Solo battle ships
// Overall mission: Find and sink 2 battle ships
// Goals: guess coordinstes of ships
// Characters: player and ships 
// Objects: 2 ships of length 2 and 3
// Functions: Set up board and place ships randomly
//  Take input from user and return hit if ship is at that coordinate and miss if not.
//  Print game bord to screen.

// Pseudocode
// 1. Create game borad.  Borad is made up of 7 arrays each containing 7 0s. 
// 2. Create function that prints board to screen as a 7x7 grid with the letters A-G allong the left hand side and the number 1-7 along the top.
// 3. Define 2 ship objects one with 2 coordinate perameters and the other with 2.  They should also each have a hit counter that starts at 0 and a 'sunk?'
//     Perameter that starts at false and becomes true when hit count equals ship length.
// 4. To place ships randomly first select a random number between 1 and 2. 
//    1 indicates a horizontal ship 2 indicates a vertical ship.
//      If 1 select a random number 'n' between 1 and 7-ship.length. for a ship of length 3 the ships horizontal coordinates will be (n,n+1,n+2)
//      Now select a random letter 'L' between A and G and assign the coordinates L,n L,n+1 and n+2 to the ship object. 
//      
//      If 2 follow same process but with consecutive letters and a single number.
// 5. Define a function 'guess' that takes a coordinate input and returns 'Hit' if the coordinate matches that of either ship object and "Miss" if not.
//    if hit occurs the hit occures +1 to hit count if 'sunk?' then eqauls true print "You sunk a battle ship!!" to the screen. 
//    Function should then modify the game bord to replace misses with 'M' and hits with 'X' then print the board. 
//    The guess function should repeat until both ships are sunk.

// Initial Code

var board = { 
	n:["O",1,2,3,4,5,6,7],
	a:["A",0,0,0,0,0,0,0],
	b:["B",0,0,0,0,0,0,0],
	c:["C",0,0,0,0,0,0,0],
	d:["D",0,0,0,0,0,0,0],
	e:["E",0,0,0,0,0,0,0],
	f:["F",0,0,0,0,0,0,0],
	g:["G",0,0,0,0,0,0,0],

}

var small_ship = {
	pos:[["a",1],["a",2]],
	hit_count:0,
	sunk: false,
}

var big_ship = {
	pos:[["b",3],["c",3],["d",3]],
	hit_count: 0,
	sunk: false,
}

function print_board(board){
  console.log(board)
}

print_board(board)

function guess(guess){
	
	if ((guess[0] == small_ship["pos"][0][0] && guess[1] == small_ship["pos"][0][1]) || (guess[0] == small_ship["pos"][1][0] && guess[1] == small_ship["pos"][1][1])){
		console.log("Hit!");
		small_ship["hit_count"] ++;
	    board[guess[0]][guess[1]] = "X";
	    print_board(board)
      if (small_ship["hit_count"] == 2){
    	small_ship["sunk"] = true;
    	console.log("You sunk a battle ship!!")}
    } 
    else if ((guess[0] == big_ship["pos"][0][0] && guess[1] == big_ship["pos"][0][1]) || (guess[0] == big_ship["pos"][1][0] && guess[1] == big_ship["pos"][1][1]) 
    	|| (guess[0] == big_ship["pos"][2][0] && guess[1] == big_ship["pos"][2][1])){
    	console.log("Hit!");
		big_ship["hit_count"] ++;
	    board[guess[0]][guess[1]] = "X";
	    print_board(board)
	    if (big_ship["hit_count"] == 3){
	    	big_ship["sunk"] = true
	    	console.log("You sunk a battle ship!!")
	    }
    }
    else {
    	console.log("Miss!")
    	board[guess[0]][guess[1]] = "M";
	    print_board(board)
    }

    if (small_ship.sunk == true && big_ship.sunk == true) 
    	console.log("You Win!!!!")

}

guess(["a",1])
guess(["a",2])
guess(["e",6])
guess(["b",3])
guess(["c",3])
guess(["d",3])




// Refactored Code






// Reflection
//What was the most difficult part of this challenge?
//    Every part of this challenge was difficult for me. You'll notice that the solution is much more simple than what I envisoned at the Pseudocode stage.  I set out to 
//    create somthing that I thought would be relatively simple but ended up hitting walls at every stage. Firstly dispite hours of experimenting and researching I could not 
//    get javascript to agree that two arrays were equal which is why I ended up with the extemly cumbersome if statements that compare each individual element of 'guess'
//    with each element of 'pos'.  I then spent an hour trying to figure out why I was getting "unexpected token 'else'" only to discover it was because i'd inserted an extra ;. 
//    I then spent a very long time researching how to get javascript to accept user input from the command line but could not make it work.  Eventually i deceded that although it was 
//    not what I wanted the code I have here does at least work to some degree and I'd already spent FAR to long on this problem. 

// What did you learn about creating objects and functions that interact with one another?

//   At this point i'm really not sure. 

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

//   I tryied to use .includes to see if 'pos' included guess but I was repeatedly told that .includes is not a function. 

// How can you access and manipulate properties of objects?

//   Properties can be accesses by object_name["property_name"] or object_name.property_name.
//
//
//
//  I hope to come back to this exercise and complete my game at a later stage but for now I just can't take any more JavaScript. 
//
//
//