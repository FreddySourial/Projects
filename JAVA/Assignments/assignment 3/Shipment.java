
import java.util.Scanner;
/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Assignment 3
 */
public class Shipment
{
    public static void main (String[] args)
    {
        Scanner s=new Scanner(System.in); //calling the scanner utility 

        double length=0;
        double width=0;
        double height=0;
        double vol1=0;
        double vol2=0;
        double cost1=0;
        double cost2=0;
        System.out.println("Welcome to John Doe's shipping calculator");
        // sending a welcome message as asked
        System.out.print("please enter the length of Package 1: ");
        // asking for length of the package;
        length=s.nextDouble(); 
        //assigning length
        System.out.print("please enter the width of Package 1: ");
        width=s.nextDouble(); 
        //assigning width
        System.out.print("please enter the height of Package 1: ");
        height=s.nextDouble(); 
        //asssigning height

        Package pack1=new Package(length, width, height);
        //entering the dimensions of the second package
        System.out.println("pease enter dimesnsions of Package 2:");
        Package pack2=new Package(); //creating object
        pack2.inputWidth(); 
        pack2.inputLength();
        pack2.inputHeight();

        vol1=pack1.calcVolume(); //to find the volume of packages
        vol2=pack2.calcVolume();

        cost1=3+vol1-1; // to calculate the cost of the package 
        cost2=3+vol2-1;
        //if equal cost
        if(cost1==cost2)
            System.out.println("the cost for both packages is the same: $"+cost1);
        else //if the cost is different
        {
            if(cost1>cost2) //if first package is costly
            {
                if(cost1<2*cost2) 
                    System.out.println("the cost of package 1 is slightly more than Package 2");
                else if(cost1<3*cost2)
                    System.out.println("the cost of Package 1 is twice the cost of Package 2");
                else if(cost1<4*cost2)
                    System.out.println("the cost of Package 1 is tripple the cost of Package 2");
                else if(cost1<5*cost2)
                    System.out.println("Package 1 is quadruple the cost of Package 2");
                else 
                    System.out.println("Package 1 costs "+(int)(cost1/cost2)+"times more than Package 2");
                //to display the difference
                System.out.println("Package 1 costs more than Package 2 with the difference being: $"+(cost1-cost2));
            }

            if(cost2>cost1) //if package 2 costs
            {
                if(cost2<2*cost1) //slight difference
                    System.out.println("the cost of package 2 is slightly more than Package 1");
                else if(cost2<3*cost1)
                    System.out.println("the cost of Package 2 is twice the cost of Package 1");
                else if(cost2<4*cost1) //tripple costly
                    System.out.println("the cost of Package 2 is tripple the cost of Package 1");
                else if(cost2<5*cost1)
                    System.out.println("Package 2 is quadruple the cost of Package 1");
                else //finding how many time costly and displaying
                    System.out.println("Package 2 costs "+(int)(cost2/cost1)+"times more than Package 1");
                //to display the diffrence
                System.out.println("Package 2 costs more than Package 1 with the difference being: $: $"+(cost2-cost1));
            }
        }
        s.close(); 
    }
}
