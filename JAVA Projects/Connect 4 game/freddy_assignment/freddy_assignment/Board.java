/**
 * This class simulates a NibbleNabble game board.
 * @author Your name here
 * @version 1.0
 * @since 1.8
 *
 */
public class Board {
	
	/** Number of rows on the board */
	private final static int NUM_ROWS = 6;
	
	/** Number of columns on the board */
	private final static int NUM_COLS = 7;
	
	/** Array of Column objects, which contain token values */
	//private Column[] board = new Column[NUM_COLS];
	private Column[] board[NUM_COLS];
	
	/**
	 * Loop through the board array, to instantiate and initialize each element as a new Column.
	 */
	public Board() {
		// loop and make new instance for each column of board[i]		
		for (int i = 0; i<NUM_COLS-1; i++) {
			board[i] = new Column();
		}
	}
	
	/**
	 * Validate the column number, output an error message and return false if its invalid.
	 * Try to put the token in the specified column of the board. Output an error message and return false if it does not work.
	 * 
	 * @param column The column in which to place the token, valid values are 1 - 7.
	 * @param token Token character to place on the board, an X or an O.
	 * @return True if putting the token on the column is successful, else false.
	 */
	public boolean makeMove(int column, char token) {
		// invalid column -> prompt and return false
		if (column < 1 || column > 7) {
			System.Out.Println("Error: Invalid Column index");
			return false;
		}
		
		// try to add the token in the empty row
		// you can use the column height to add token
		// OR  you can loop from row 0 and check for successful put
		boolean isSuccessful = this.board[column-1].put(token);
		
		if (isSuccessful){
			return true;
		}
		System.Out.Println("Error: Column is full");
		return false;
	}
	
	/**
	 * Checks for Computer's victory by looking for complete vertical and horizontal nibbles.
	 * 
	 * @return True if any nibbles of O's are found on the board, otherwise false.
	 */
	public boolean checkVictory(char token) { 
	               // please add (char token) as parameter
			       // change the call in the NibbleNabble class 
		
		// TODO Loop through each column to check for victory.
		// hint: as soon as any column has a nibble, you can return true and stop checking futher.
		
		// Vertical 
		//*************
		// you may use column.checkVictory 
		// or use nested loops two times
		//*************
			// loop for the rows/columns
			// increase counter if:			
			// First: board[row].get(column)==token
	    	// Second: board[row].get(column)==board[row+1].get(column))			

/*	 *  1 2 3 4 5 6 7 
	 * ---------------
	 * | | | | | | | |
	 * | |X| | | | | |
	 * | |X| | | | | |
	 * | |X| | | | | |
	 * | |X|O|O| |O|X|
	 * |O|O|X|X|X|O| |	 
	 * ---------------
	 *  1 2 3 4 5 6 7 
*/		
						
		
			// Horizontal
			// loop for the rows/columns
			// increase counter if:
			// First: board[row].get(column)==token
	    	// Second: board[row].get(column)==board[row].get(column+1))			
/*	 *  1 2 3 4 5 6 7 
	 * ---------------
	 * | | | | | | | |
	 * | | | | | | | |
	 * | |X| | | | | |
	 * | |X| | | | | |
	 * | |X|O|O|O|O| |
	 * |O|O|X|X|X|O| |	 
	 * ---------------
	 *  1 2 3 4 5 6 7 
*/		
		
		
		return false;
	}
	
	/**
	 * Checks each column to see if there is room enough for at least 4 more O values.
	 * Checks final row to see if there is room enough for at least 4 O (non-X) values.
	 * @return True if the computer has no more safe moves, else false.
	 */
	public boolean isFull() {
		// it is enough to check if the whole board is full or not
		// at least one ' ' => not full
	}
	
	/**
	 * Displays each column number, divided by spaces.
	 * Displays, in a grid, the contained in each column of each row.
	 * Displays the column numbers again at the bottom.
	 * Example:
	 *
	 *  1 2 3 4 5 6 7 
	 * ---------------
	 * | | | | | | | |
	 * | | | | | | | |
	 * | | | | | | | |
	 * | | | | | | | |
	 * | |X| | | |O| |
	 * |O|O|X| |X|O| |	 
	 * ---------------
	 *  1 2 3 4 5 6 7 
	 *
	 *
	 */
	public void display() {
		
	}
	
}
