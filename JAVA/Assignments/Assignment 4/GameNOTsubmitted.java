
/* CST8110 - Introduction to Computer Programming

 * Practical Assessment
 */

import java.util.Scanner; // import the Scanner class
import java.util.Random; // import the Random class

public class Game {
    // Instantiate the class properties
    private String playerName; // Player's Name
    private int player; // Player turn (1 for player, 2 for computer)
    private Scanner input;
    private Random rand;
    private File pdf, docx, xlsx, java; // Objects for each File type

    // Default constructor for Game class
    public Game() {
        // initialize the class properties
        input = new Scanner(System.in);
        rand = new Random();
        player = 1;
        playerName = getName(); // calls the Game.getName() method
        int randNum = getNum(); // calls the Game.getNum() method

        // Instantiate the File objects
        pdf = new File(randNum);
        docx = new File(randNum + 2);
        xlsx = new File(randNum + 4);
        java = new File(randNum + 6);

        // Display welcome text using Game.welcomeUser() method
        welcomeUser();
    }

    // Returns the player's name
    private String getName() {
        System.out.print("Please enter your name: ");
        String name = input.nextLine();
        return name;
    }

    // Generates a random odd number from 4-9
    private int getNum() {
        int randNumber = rand.nextInt(6) + 4;
        if (randNumber % 2 == 0) {
            randNumber++;
        }
        return randNumber;
    }

    // Displays welcome text
    private void welcomeUser() {
        System.out.println("\nWelcome to the game " + playerName + "!");
        System.out.println("You'll need to first pick a file type");
        System.out.println("Then select how many files you wish to remove\n");
    }

    // Displays the numFiles property for each File object
    private void displayGame() {
        System.out.println("PDF = " + pdf.getNumFiles());
        System.out.println("DOCX = " + docx.getNumFiles());
        System.out.println("XLSX = " + xlsx.getNumFiles());
        System.out.println("JAVA = " + java.getNumFiles());
    }

    // Plays each turn of the game
    private void playGame() {
        displayGame(); // display the numFiles value for each file type
        File selectedFile = null; // selected file type (pdf, docx, xlsx, java)
        int numFilesToRemove = 0; // number of files to remove

        // Conditional statements to check who's turn it is:
        if (player == 1) { // player's turn
            do { // ask user for file type until a non-empty one is chosen
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

            // Ask user to enter the number of files to remove
            System.out.print("Enter the number of files to remove: ");
            numFilesToRemove = input.nextInt();

        } else if (player == 2) { // computer's turn
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
            // Generate computer's number of files removed
            System.out.print("\nComputer, choose the number of files to remove: ");
            delaySecond();

            if (selectedFile.getNumFiles() == 1) {
                numFilesToRemove = 1;
            } else {
                numFilesToRemove = rand.nextInt(selectedFile.getNumFiles() / 2) + 1;
            }
            System.out.println(numFilesToRemove);
        }

        // Check of the removal of files was sucessful
        Boolean itWorked = selectedFile.removeFiles(numFilesToRemove);
        if (!itWorked) {
            return;
        }

        // Toggle the player variable to switch turns
        if (player == 1) {
            player = 2;
        } else {
            player = 1;
        }
    }

    // Returns who's the winner of the game
    int determineWinner() {
        int winner = 0;
        int allFiles = pdf.getNumFiles() + docx.getNumFiles() + xlsx.getNumFiles() + java.getNumFiles();
        if (allFiles == 0) {
            winner = player;
        }
        if (winner == 1) {
            System.out.println("\n" + playerName + " Wins!\n");
        } else if (winner == 2) {
            System.out.println("\nComputer Wins!\n");
        }
        return winner;
    }

    // delays next task by 1 second
    private void delaySecond()
    {
        try {
            Thread.sleep(1000);
        } catch (InterruptedException ex) {
            Thread.currentThread().interrupt();
        }
    }

    // Main method for Game class
    public static void main(String[] args) {
        Game game = new Game(); // Initialze game object

        do { // plays the game until the player wins
            game.playGame();
        } while (game.determineWinner() == 0);

        // End of game message
        System.out.println("Thanks for playing!");
    }
}