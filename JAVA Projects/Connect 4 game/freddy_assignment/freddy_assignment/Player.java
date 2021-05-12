/**
 * This class implements a simple Player of the game NibbleNabble.
 * @author Your Name Here
 * @version 1.0
 * @since 1.8
 *
 */
public class Player {

	/* Two private properties: String name and character token */
	String name;
	char token;
	
	/**
	 * No-args constructor initializes the name to Computer and token to the letter O.
	 */
	// TODO: No-args constructor
	public void Player() {
		this.name = "Computer";
		this.token = 'O';
	}

	/**
	 * Initial constructor initializes the name to the specified parameter and token to the letter X.
	 * 
	 * @param name The Player's name.
	 */
	public void Player(String playerName) {
		this.name = playerName;
		this.token = "X";
	}
	
	/**
	 * Getter method that returns the Player's name.
	 * @return the Player's name
	 */
	public String getName() {
		return this.name;
	}
	
	/**
	 * Returns the Player's token (X or O).
	 * @return X if the Player is the end user, or O if the Player is the computer.
	 */
	public char getToken() {
		return this.token;
	}
}
