import java.util.Scanner;
import java.lang.Math;
/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Assignment 2
 */
public class TestMax
{

    private int minNum; //introducing two integers min and max numbers
    int maxNum;

    /**
     * Constructor for objects of class TestMax
     */
    public TestMax()
    {
        // initialising the values for the min and max
        minNum=1;
        maxNum=10;
    }

    public int inputNum()
    {

        Scanner input = new Scanner(System.in);  // Creating a Scanner object
        System.out.println("Please enter an integer"); // askin to enter a value
        return input.nextInt();
    }

    public void displayNum (int userNum){ // created as per assignment question
        while (userNum<minNum){ // if the number entered is below the min value 1 return min

            userNum= minNum; // if case is true reasign the userNum

        }
        while (userNum>maxNum){ // if the number entered is above the max value 10 return max

            userNum= maxNum; // if case is true reasign the userNum

        }

        System.out.printf ("%d %n", userNum); // printing the new userNum

    }

    public static void main (String[] args) {
        TestMax obj = new TestMax(); //calling the inputNum() and storing the values
        int res=obj.inputNum(); //call displayNum function to show output
        obj.displayNum(res);

    }

}

