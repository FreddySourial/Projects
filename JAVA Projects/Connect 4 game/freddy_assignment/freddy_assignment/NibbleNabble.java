import java.util.Scanner;
import java.util.Random;

/**
 * This class implements a simple version of Connect Four, called NibbleNabble.
 * @author Your name here
 * @version 1.0
 * @since 1.8
 */
public class NibbleNabble {

	private Player currentPlayer;
	private Player computer;
	private Player user;
	private Board board;
	private Scanner input;
	
	/** Outputs a welcome message. Prompts the user for their name, and instantiates a new Player with the name.
	 *  Initializes the Scanner, Board, user and computer variables.
	 */
	public NibbleNabble() {
		
		// prompt and read player name (include Scanner)
		// intialize user and computer of type player
		// also, board of type board
		// and, current player equal user or computer


		input = new Scanner(System.in);
		computer = new Player();
		board = new Board();
		System.out.print("\n Welcome to the game! what is your name? \n");	//sending welcome message and getting player name 
		user = new Player(input.nextLine());	//assigning name to new player
		System.out.println("Hello and welcome " + user + "!" );
	
	}
	
	public boolean playGame() {
		
		while (true) {
			board.display();
			int column = 0;
			currentPlayer = togglePlayer();
			
			System.out.print(currentPlayer.getName() + " > ");
			
			while (column == 0) {
				
				if (currentPlayer == computer) {
					column = new Random().nextInt(7) + 1;
					System.out.println(column);
				} else {
					String move = input.next();
					if (move.toUpperCase().charAt(0) == 'Q')
						return false;
					
					column = Integer.parseInt(move);
				}
				
				if (!board.makeMove(column, currentPlayer.getToken())) {
					column = 0;
				}
				
			}
			
/***/		if (currentPlayer == computer && board.checkVictory()) { // you may add 'O'
				System.out.println("Oh no! The computer won!");	
				board.display();
				break;
/***/		} else if (currentPlayer == user && board.isFull()) { //you may add checkVictory with 'X'
				System.out.println("You are victorious!!!");
				board.display();
				break;
			}
		}	
		
		return quit(); 
		// modify this to return quit(); 
		// where you ask the user if he want to play again or not
		
		
	}
	
	/**
	 * Re-initializes the board variable with a new Board object.
	 * Outputs prompt to user: Enter Q to quit, or any key to keep playing:
	 * If the user enters any variation of Q, q, Quit, quit, quits the game.
	 * @return True if the user wants to quit, false otherwise.
	 */
	public boolean quit() {
		// should be easy
		// read string and check the cases above
		System.out.println ( "please write quit if you would like to stop playing the game");
		input = new Scanner (system.in); 
		String quit = input.nextLine();
	
		if (quit == "quit" ||quit == "Q" || quit == "q" || quit == "Quit"  ){
			return true;
		}
		board = new Board(); // re-setting board but it will get called in constructor anyways
		return false; 
	}

	/**
	 * If the currentPlayer is the user, returns computer. Otherwise, returns the user.
	 *
	 * @return computer if currentPlayer is user, otherwise user.
	 */
	private Player togglePlayer() {
		// currentPlayer:  user<->computer
		if (currentPlayer == user) { //if current player is the user 
			currentPlayer = computer; // switch it to the computer 
		}else{ //if current player is not the user 
			currentPlayer = user;  // switch it to the user 
		}
		return currentPlayer; // return whoever has the turn 
	}
}
