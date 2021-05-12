
/**
 * Write a description of class UniM here.
 *
 * @author (FreddySourial)
 * @version (april 3rd)
 */
public class UniM
{
   private String theName;
   private String theEmail;
   private String thePhoneNumber;
   private String theId;
   
   public UniM(){
       theName = "Not Available";
       theId = "Not Avaiable";
       theEmail = "Not Avaiable";
       thePhoneNumber = "Not Avaiable";
   }
   
   public UniM(String name,String id, String email, String phoneNumber){
       theName = name;
       thePhoneNumber = phoneNumber;
       theId = id;
       theEmail = email;
   }
   
   public String getID(){
       return theId;
   }
   
   public String getName(){
       return theName;
   }
   
   public String getEmail(){
       return theEmail;
   }
   
   public String getphoneNumber(){
       return thePhoneNumber;
   }
   
   
   public void printInformation(){
       System.out.println("Name: " + theName + "\n" + "ID: " + theId + "\n" + "Email: " + theEmail + "\n" + "Phone: " + thePhoneNumber);
   }
}
