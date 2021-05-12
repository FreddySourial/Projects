/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Lab 5
 */
public class CodingBatArrays
{

    public int countEvens(int[] nums) //A Loop to count even numbers
    {
        int count = 0;
        for(int i = 0; i < nums.length; i++)
        {
            if(nums[i] % 2 == 0)
                count++;
        }
        return count;
    }

    public int bigDiff(int[] nums)
    {
        int max = nums[0]; //assigning max and mins 
        int min = nums[0];
        for(int i = 1; i < nums.length; i++) // a loop to make sure the new i value is assigned as the new max
        {
            if(nums[i] > max)
                max = nums[i];
            else if(nums[i] < min)
                min = nums[i];
        }
        return (max-min);
    }

    public int centeredAverage(int[] nums) 
    {
        int max = nums[0];
        int min = nums[0];
        int sum = nums[0];
        for(int i = 1; i < nums.length; i++) // loop to add the new number in the array to either max or min
        {
            sum  += nums[i];
            if(nums[i] > max)
                max = nums[i];
            else if(nums[i] < min)
                min = nums[i];
        }
        return (sum-max-min) / (nums.length - 2); //return equation 
    }

}
