/**
 * 
 * This class is a single Column on the board, containing vertically stacked X and O tokens.
 * 
 * @author Your name here
 * @version 1.0
 * @since 1.8
 *
 */
public class Column {

	private static final int MAX_HEIGHT = 6;
	private int height = 0;
	private char[] column;
	
	/**
	 * Default constructor - initialize the column array and each element of the column array to contain a blank space.
	 */
	public Column() {
		// create new char array
		// loop and fill ' '
		for (int i = 0; i<MAX_HEIGHT; i++){
				this.column[i] = ' ';
		}
	}
	
	/**
	 * Return the value in the specified row.
	 * 
	 * @param row The specified row. Valid values are 1 - 6. 
	 * @return The character in the specified row, or blank if an invalid row was requested.
	 */
	public char get(int row) {
		//simple
		if (row >= 1 || row <= 6 || row != null){
			row--;
			return this.column[row];
		}
		else {
			return ' ';
		}
	}
	
	/** Put the specified token character at the top of the column, increments the height, and returns true.
	 * 
	 * @param token Token character to place on the board, an X or an O.
	 * @return True if there is room in the column for the token, else false.
	 */
	public boolean put(char token) {
		if (this.height >= MAX_HEIGHT){
			return false;
		}
		column[this.height] = token;
		this.height++;
		return true;
	}
	
//	' ' <- 5		height = 3;
//	' ' <- 4
//	' '	<- 3
//	'O' <- 2
//	'O' <- 1
//	'O' <- 0
	
	
	/**
	 * Check if the column contains a Nibble.
	 * 
	 * @return True if the column contains 4 or more consecutive 'O' tokens, else false.
	 */
	public boolean checkVictory() {
		int count = 0;
		for (int i = 0; i < MAX_HEIGHT; i++) {
			if (column[i] != 'O' && i >= 2) {
				return false;
			}
			else if (column[i] != 'O' && i < 2) {
				count = 0;
			}
			else {
				count++;
			}
		}
		return true;
	}
	
	/**
	 * Returns the current height of the Column.
	 * @return the height of the column
	 */
	public int getHeight() {
		return this.height;
	}
}
