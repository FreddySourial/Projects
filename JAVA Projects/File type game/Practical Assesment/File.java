
/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Student Name: Freddy Sourial
 * Practical assesment #1
 */
public class File {
	// creating 
    private int  numFiles; // instantiate numFiles class property
	
    public File (int num) {
		
        numFiles = num;
	// intializing numfiles 
    }
    public int getNumFiles() {
        return numFiles;
    } // getter created as asked in the assignment 

    public Boolean isEmpty() {
        if (numFiles == 0) {
            return true;
			
        } else {
			
            return false;
        }
    }
	// created and if else scenario to return true or false depending on if the boolean is zero or not
    
       public Boolean removeFiles(int numRemoved) {
		   
        if (numRemoved < 1) {
			
            System.out.println("Sorry, you must remove at least one file! ");
			
            return false;
			
        } else if (numRemoved>(numFiles/2)&&numFiles>1) {
		
            System.out.println("Sorry, that's too many files!");
			
            return false;
		
        } else { 
		
        	numFiles -= numRemoved;
			
            return true;
        }
    }
}