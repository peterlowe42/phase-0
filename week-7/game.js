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
	bow:["a",1],
	stern:["a",2],
	hit_count:0,
	sunk: false,
}

var big_ship = {
	bow:["b",3],
	mid:["c",3],
	stern:["d",3],
}

function print_board(board){
  console.log(board)
}

print_board(board)

function guess(guess){
	if (guess == small_ship["bow"] || guess == small_ship["stern"]);{
		console.log("Hit!");
		small_ship["hit_count"] ++;
	    board[guess[0]][guess[1]] = "X";
	    console.log(board);
      if (small_ship["hit_count"] == 2){
    	small_ship["sunk"] = true;
    	console.log("You sunk a battle ship!!")}

    }  
    if (guess == big_ship["bow"] || guess == big_ship["mid"]|| guess == big_ship["stern"]){
    	
    }

}

guess(["a",1])
guess(["a",2])





// Refactored Code






// Reflection
//
//
//
//
//
//
//
//