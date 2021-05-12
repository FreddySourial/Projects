/**
 * Write a description of class NameGenerator here.
 *
 * @author (Freddy Sourial)
 * @version (feb 24 2020)
 */
public class NameGenerator
{
    // instance variables - replace the example below with your own
    private String lastname;
    private String firstname;
    private String somename;
    private String cityname;

    /**
     * Constructor for objects of class NameGenerator
     */
    public NameGenerator()
    {
        // initialise instance variables
        this.lastname = "Sourial";
        this.firstname = "Freddy";
        this.somename = "Said";
        this.cityname = "Cairo";
       
    }

    /**
     * An example of a method - replace this comment with your own
     *
     * @param  y  a sample parameter for a method
     * @return    the sum of x and y
     */
    public String generateStarWarsName()
    {
        // put your code here
        String starwars;
        starwars = lastname.substring(0,3) + firstname.substring(0,2) + " " + somename.substring(0,2) + cityname.substring(0,3);
        return starwars;
    }
}
