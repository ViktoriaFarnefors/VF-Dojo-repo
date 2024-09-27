


Testing without requriment is just a guessing game, so I'm using the link in the assignment as requriments for the game.
I also had to make some of my own assumptions regarding requriments, since the game is created as a bot-to-bot console application.
https://en.wikipedia.org/wiki/Tic-tac-toe


Rule - Player X starts the game

Scenario: Player X starts the first sturn
	Given that the game has not ended
	Given that no marker has been placed
	When the game starts
	Then Player X  starts the turns

Rule - Players take turn placing markers

Scenario: It's player O's turn
	Given that the game has not ended
	Given that Player X placed the last marker
	When the turn starts
	Then Player O starts the turn
	
Scenario: It's player X's turn
	Given that the game has not ended
	Given that Player O placed the last marker
	When the turn starts
	Then Player X starts the turn

Rule - Player can only place markings of their own type

Scenario: Player X can only place X-markers
	Given that the game has not ended
	When Player X place a marker
	Then the marker is an X-marker

Scenario: Player O can only place X-markers
	Given that the game has not ended
	When Player O place a marker
	Then the marker is an O-marker
	
Rule - Players can only place markings on the board

Scenario: The marker is always placed on the board
	Given that the game has not ended
	When a player places a marker
	Then the marker is shown on the board
	
Scenario: A marker can only be placed on a empty spot on the board
	Given that the game has not ended
	When a player tries to place a marker
	Then only empty spots are available to choose

Rule - Players have to place a mark when it is their turn

	Scenario: Playes X places a markers on it's turn
	Given that the game has not ended
	When it's Player X's turn
	Then Player X places a marker
	
	Scenario: Playes O places a markers on it's turn
	Given that the game has not ended
	When it's Player O's turn
	Then Player O places a marker
	
Rule: When a player has placed a marker, the turn ends

Scenario: The turn ends after Player X has placed a marker
	Given that the game has not ended
	When Player X has placed a marker
	The Player X's turn ends
	
Scenario: The turn ends after Player O has placed a marker
	Given that the game has not ended
	When Player O has placed a marker
	The Player O's turn ends

Rule - After a player places a marker, there is a 2 second paus before the next players turn

Scenario: Their is a 2 second paus after Playser X places it's marker
	Given that the game has not ended
	When Player X has placed a marker
	Then there is a 2 second paus before the next turn
	
Scenario: Their is a 2 second paus after Playser O places it's marker
	Given that the game has not ended
	When Player O has placed a marker
	Then there is a 2 second paus before the next turn

Rule - As soon as a player get's three of it's own markings in a row, the player wins the game
	
//Scenario is based on a board with places numbered from 1-9

Scenario: Three markings in a row results in a win
	Given that the game has not ended
	And that Player X has placed a marker
	And that the markings is placed in the boardspaces <space1>, <space2> and <space3>	
	When the result is checked
	Then that player has won
	
	Examples:
	|space1|space2|space3|
	|   1  |   2  |   3  | 
	|   4  |   5  |   6  | 
	|   7  |   8  |   9  | 
	|   1  |   4  |   7  | 
	|   2  |   5  |   8  | 
	|   3  |   6  |   9  | 
	|   1  |   5  |   9  | 
	|   3  |   5  |   7  | 

	

	Rule - Vertical rows can give a win
		Test that all three vertical rows can result in a win
	Rule - Horizonal rows can give a win
	Rule - Diagonal rows can give a win

Rule - When a player wins the game, the game ends

Rule - If all spots on the board is full & no player has won the game - the game ends in a draw


UI-rules

Rule - When a player chooses a spot for a marking, a marking of the correct symbol is shown on the board
	Rule - When player X chooses a place for a marking, an X is shown on that spot
	Rule - When player O chooses a place for a marking, an O is shown on that spot

Rule - Markings have the correct colors
	Rule - X have the color blue
	Rule - O have the color red
	
Rule - When a player gets three of their own markins in a row - that row is highlighted

Rule - When a player wins the game, a message is shown on the screen
	Rule - The message contains the text "Player [name], you win the game!"
	
Rule - All plays is printed in chronological order, ascending, beside the board
	Rule - Each play is printed in the format "Move [number]: [name][placement]"
	Example: "Move 1: X1"

