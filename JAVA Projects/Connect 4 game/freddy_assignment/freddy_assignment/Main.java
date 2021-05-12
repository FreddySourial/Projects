/**
 * This class kicks off the game NibbleNabble, and continues playing until the user quits.
 * 
 * @author Your Name Here
 * @version 1.0
 * @since 1.8
 *
 */
public class Main {

	/**
	 * The main method declares a new instance of the game NibbleNabble.
	 * Execute the playGame method while the quit method continues to return false.
	 * If the playGame method returns false, exit the loop.
	 * 
	 * @param args UNUSED
	 */
	 
	public static void main(String[] args) {
		//loop until return value 
		//create instance  of the game NibbleNabble
		// call playGame method
		
		NibbleNabble game; 
        boolean quitGame = false;
        while (!quitGame){
            game = new NibbleNabble();
            quitGame = game.playGame();   // playgame() returns true if the user wants to qwuit and false if they want to continue playing 
        }
	}
	
}
