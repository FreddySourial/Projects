/* CST8110 - Introduction to Computer Programming

 * Assignment4
 */


import java.util.Scanner; // import the Scanner class
import java.util.Arrays;

public class StringToIntArray {
     
    private int[] intArray = new int[10];// Declare an array of int type
     
    public StringToIntArray() {
        Arrays.fill(intArray, Integer.MIN_VALUE);
    }
     
    public int indexOf(int intToFind) {
    	
    int y=-1;
        for(int i = 0; i < intArray.length; i++) { // loop through intArray
            if(intArray[i] == intToFind  ) {  // if loop finds value of intToFind, return index of that value
            
                return i;
            }
        }
        return y;
    }
     
    public int indexOf(String intToFind) {

      
	int n = Integer.parseInt (intToFind);// intTofind converted from a String to an integer

        for(int i = 0; i < intArray.length; i++) {
            
            if (intArray[i] == n) {
                return i;
            }
        }
        return -1;
    }
     
    public boolean contains(int intToFind ) {
        for(int i = 0; i < intArray.length; i++) {
            if(intArray[i]==intToFind) {
                return true;
            }
        }
            return false;
    }
     
    public boolean contains(String intToFind) {
        int n = Integer.parseInt (intToFind);// intTofind converted from a String to an integer

        for(int i = 0; i < intArray.length; i++) {
     
            if (intArray[i] == n) {
                return true;
            }
        }
        return false;
    }
     
    public int get(int index) {
        if (index < 0 || index > intArray.length - 1) {
            return Integer.MIN_VALUE;
        } else  
            return intArray[index];
        }  
    
     
    public static void main(String[] args) {
        String str;
           
		Scanner scanner = new Scanner(System.in);
           StringToIntArray str2Arr = new StringToIntArray();//create an object to call method from the class StringToIntarray.
                    
           System.out.println("Please enter a string:");
           str = scanner.nextLine();
         
           str2Arr.scanStringToIntArray(str, true);
           System.out.println(Arrays.toString(str2Arr.intArray));
    
    }
    public boolean scanStringToIntArray(String s, boolean skipErrors) {
        Scanner input = new Scanner(s);
        int arrayIndex=0;
        while(input.hasNext()) {
            do {
               if(input.hasNextInt()) {
                   intArray[arrayIndex] = input.nextInt();
                   arrayIndex++;
               }
           
               if(!skipErrors) {
                   
                   Arrays.fill(intArray, Integer.MIN_VALUE);
                  
                   return false;
               }
               if(skipErrors) {
                   if(!input.hasNextInt()) {
                       input.next();
                   }else {
                       intArray[arrayIndex] = input.nextInt();
                       arrayIndex++;
                   }
               }
               
            
               return skipErrors;
                        
            }
            
       }}
}