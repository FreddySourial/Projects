import java.util.Scanner;
/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Assignment 3
 */
public class Assignment3
{

    public Assignment3()
    {
        Shipment s = new Shipment();
        s.inputPackages();
        s.calculateCost();
        s.display();

    }

}
