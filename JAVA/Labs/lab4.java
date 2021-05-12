/* CST8110 - Introduction to Computer Programming
 * Section: 472
 * Semester: 20F
 * Professor: Wail Mardini
 * Student ID: 041013272
 * Student Email: sour0025@algonquinlive.com
 * Lab 4
 */
public class CodingBatStrings
{

    public String doubleChar(String str) {

        {
            String result = "";

            for ( int i = 0; i < str.length(); i++ )
            {
                result = result + str.charAt( i ) + str.charAt( i );
            }

            return result;
        }

    }

    public boolean endOther(String a, String b) {
        a = a.toLowerCase();
        b = b.toLowerCase();

        return a.endsWith( b ) || b.endsWith( a );
    }

    public boolean gHappy(String str) {
        boolean flag = true;
        if(str == "") return flag;

        if(str.length() <= 2 && !str.equals("gg")) {
            return false;
        }

        for(int i = 1; i < str.length()-1; i++)
        {
            if(str.charAt(i) == 'g')
            {
                if(!(str.charAt(i-1) == 'g' || str.charAt(i+1) == 'g'))
                {
                    flag = false;
                    break;
                }
            }
            else if((i == str.length()-2) && (str.charAt(i+1) == 'g') && 
            (str.charAt(i) != 'g'))
            {
                flag = false;
                break;
            }
        }
        return flag;
    }
}
