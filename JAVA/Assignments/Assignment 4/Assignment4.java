/* CST8110 - Introduction to Computer Programming

 * Assignment 4
 */

import java.util.*;

public class StringToIntArray {
    private int[] intArray = new int[10]; //initialize intArray

    public StringToIntArray(){
        Arrays.fill(intArray, Integer.MIN_VALUE);//use the Arrays fill method to populate intArray
    }

    public int indexOf(int intToFind){ //method to find the index of an integer in intArray
        int pos = 0;

        for(int i=0; i<intArray.length; i++){ //loop through intArray
            if(intArray[i]==intToFind){ //if element equal to intToFind, assign index of element to pos
                pos = i;
                break;
            }else{
                pos = -1; //pos will be -1 if not.
            }
        }

        return pos;

    }

    public int indexOf(String intToFind){ //method overloading for when parameter is a string
        int integer = Integer.parseInt(intToFind); //parse string to integer
        return indexOf(integer); //use previous method on the parsed integer
    }

    public boolean contains(int intToFind){
        return indexOf(intToFind) != -1; //if indexOf is not -1, then it is in intArray
    }

    public boolean contains(String intToFind){
        return indexOf(intToFind) != -1; //if indexOf is not -1, then it is in intArray
    }

    public int get(int index){ //method to get value at an index
        if(index>intArray.length){ //conditional for when index is out of bounds
            return Integer.MIN_VALUE;
        }else if(index < 0){ //conditional for when index is negative, to prevent exception
            return Integer.MIN_VALUE;
        }else{ //for a valid index, return the element at requested index
            return intArray[index];
        }
    }

    public boolean scanStringToIntArray(String s, boolean skipErrors){ //public method to scan string into intArray
        Scanner scanner = new Scanner(s); //new scanner initialized to String s
        boolean success = false; //boolean to track if string s was successfully scanned to intArray

        while(scanner.hasNext()){ //while there is a token in s yet to be read
            if(scanner.hasNextInt()){ //check if there is an integer
                int pos = 0;
                boolean done = false;
                while(!done){
                    if(intArray[intArray.length-1] == Integer.MIN_VALUE) { //check if there is still space in intArray for new elements
                        if (intArray[pos] == Integer.MIN_VALUE) { //check if the current pos is empty
                            System.out.println("Adding value to IntArray");
                            intArray[pos] = scanner.nextInt(); //assign nextInt to current pos
                            System.out.println("Value at index " + pos + " is now " + intArray[pos]);
                            done = true; //toggle done
                            success = true; //toggle success
                            break;//break
                        }
                    }else{ //if all spots in the intArray are full, reject new additions
                        String reject = scanner.next();
                        System.out.println("IntArray is now full!");
                        done = true; //toggle done
                        break; //break
                    }
                    if(intArray.length-1 == pos){ //check if we are at the end of intArray while looping thru intArray
                        done = true; //toggle done
                        break; //break
                    }
                    pos++; //increment
                }
            }else{ //if the next value is not an integer
                if(skipErrors){ //check if we are allowed to skip errors
                    String reject = scanner.next(); //reject non-integer and keep moving
                }else{ //reject non-integer, reset all values in intArray to Integer.MIN_VALUE
                    String reject = scanner.next();
                    System.out.println("Could not add value. Resetting all values now to Integer.MIN_VALUE");
                    Arrays.fill(this.intArray, Integer.MIN_VALUE);
                    break;//break
                }
            }

        }
        return success; //return success boolean
    }

    public static void main(String[] args) {
    	 String str;
    	    Scanner scanner = new Scanner(System.in);
    	    StringToIntArray str2Arr = new StringToIntArray();
    	    
    	    
    	    System.out.println("Please enter a string:");
    	    str = scanner.nextLine();
    	    str2Arr.scanStringToIntArray(str, true);
    	    System.out.println(Arrays.toString(str2Arr.intArray));
    }

}
