
import java.util.Scanner;
import java.util.Random; 

/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Student Name: Freddy Sourial
 * Practical assesment #1
 */


public class Game {

    private String playerName; 
    private int player; 
    private Scanner input;
    private Random rand;
    private File pdf, docx, xlsx, java; 
	// intializing all the variables for player name, player the input and the random as well as the different file types
   
    public Game() {
       
        input = new Scanner(System.in);
        rand = new Random();
        player = 1;
        playerName = getName();
        int randNum = getNum();
	// creating the constructor and calling both getNum and getName
       
        pdf = new File(randNum);
        docx = new File(randNum + 2);
        xlsx = new File(randNum + 4);
        java = new File(randNum + 6);

        // Displaying the welcome message 
        welcomeUser();
    }

    //asking player for name 
    private String getName() {
        System.out.print("Hi! what is your name? ");
        String name = input.nextLine();
        return name;
    }

    // Generating the odd number
    private int getNum() {
        int randNumber = rand.nextInt(6) + 4;
        if (randNumber % 2 == 0) {
            randNumber++;
        }
        return randNumber;
    }

    //println messages to explain rules to player
    private void welcomeUser() {
        System.out.println("\nWelcome to the game " + playerName + "!");
        System.out.println("You'll need to first pick a file type");
        System.out.println("Then select how many files you wish to remove\n");
    }

    // Displays the numFiles property for each file
    private void displayGame() {
        System.out.println("PDF = " + pdf.getNumFiles());
        System.out.println("DOCX = " + docx.getNumFiles());
        System.out.println("XLSX = " + xlsx.getNumFiles());
        System.out.println("JAVA = " + java.getNumFiles());
    }
    
    private void playGame() {
        displayGame(); 
        File selectedFile = null;
        int numFilesToRemove = 0; 
	// playing the rules of the game
	
        // Conditional statements for turns of players
        if (player == 1) { 
            do { 
                System.out.println("\nPress 1 for PDF\nPress 2 for DOCX");
                System.out.println("Press 3 for XLSX\nPress 4 for JAVA\n");
                System.out.print(playerName + ", select a file type: ");
                int userInput = input.nextInt();
                switch (userInput) {
                case 1:
                    selectedFile = pdf;
                    break;
                case 2:
                    selectedFile = docx;
                    break;
                case 3:
                    selectedFile = xlsx;
                    break;
                case 4:
                    selectedFile = java;
                    break;
                default:
                    System.out.println("\n** Please enter a number from 1-4! **");
                    break;
                }
            } while (selectedFile.isEmpty());

            System.out.print("please enter the number of files to remove: ");
            numFilesToRemove = input.nextInt();
            // Ask user for number of files to remove
			
        } else if (player == 2) { //same thing for cpu turn
            System.out.print("Computer, select a file type: ");
            delaySecond();
            do { // randomize the selected file until a non-empty file is chosen
                int randFileType = rand.nextInt(4);
                switch (randFileType) {
                
				case 0:
                    selectedFile = pdf;
                    if (selectedFile.isEmpty()) {
                        continue;
                    } else {
                        System.out.println("PDF");
                        break;
                    }
               
			   case 1:
                    selectedFile = docx;
                    if (selectedFile.isEmpty()) {
                        continue;
                    } else {
                        System.out.println("DOCX");
                        break;
                    }
               
			   case 2:
                    selectedFile = xlsx;
                    if (selectedFile.isEmpty()) {
                        continue;
                    } else {
                        System.out.println("XLSX");
                        break;
                    }
               
			   case 3:
                    selectedFile = java;
                    if (selectedFile.isEmpty()) {
                        continue;
						
                    } else {
                        System.out.println("JAVA");
                        break;
                    }
                }
            } while (selectedFile.isEmpty());

            delaySecond();
            System.out.print("\nComputer, choose the number of files to remove: ");
            delaySecond();

            if (selectedFile.getNumFiles() == 1) {
                numFilesToRemove = 1;
				
            } else {
                numFilesToRemove = rand.nextInt(selectedFile.getNumFiles() / 2) + 1;
            }
            System.out.println(numFilesToRemove);
       
	   }
        Boolean itWorked = selectedFile.removeFiles(numFilesToRemove);
        if (!itWorked) {
            return;
        } // making sure the removal worked correctly 

        // switching the turns between user and cpu 
        if (player == 1) {
            player = 2;
        } else {
            player = 1;
        }
    }

    //to determine the winner of the 'game'
    int determineWinner() {
        int winner = 0;
        int allFiles = pdf.getNumFiles() + docx.getNumFiles() + xlsx.getNumFiles() + java.getNumFiles();
        if (allFiles == 0) {
            winner = player;
        }
        if (winner == 1) {
            System.out.println("\n" + playerName + " Wins!!\n");
        } else if (winner == 2) {
            System.out.println("\nComputer Wins!\n");
        }
        return winner;
    }

    // Main method, initializing game object
    public static void main(String[] args) {
        Game game = new Game(); 
        do { 
            game.playGame();
        } while (game.determineWinner() == 0);
        System.out.println("Thanks for playing!"); // display final message after game is complete
    }
}