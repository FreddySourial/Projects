
/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Lab 3
 */
public class CodingBatLogic
{

    public CodingBatLogic()
    {

    }

    public boolean love6(int a, int b) {
        if (a==6|| b==6||(a+b)==6|| (a-b)==6|| (b-a)==6){
            return true;    // returns true if any of the above cases are true
        } 

        return false;   // if none of the above cases work then returns false
    }

    public int blackjack(int a, int b) {
        if ( a>21 &&  b>21){ // if both numbers are greater than 21 return 0
            return 0;
        }else if ( a>21){ //if a is greater than 21 return b
            return b; 
        }else if ( b>21){ //if b is greater than 21 return a
            return a;
        }else if (a>b){ //if a is greater than b return a
            return a;
        } return b; // if none of those cases work then b must be the correct value
    } 

    public String helloName(String name) {
        return "Hello " +name +"!"; // returns hello and whatever name is entered
    }

}
