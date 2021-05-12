
/**
 * Write a description of class Instructor here.
 *
 * @author (Freddy Sourial)
 * @version (april 3rd)
 */
public class Instructor extends UniM
{
   private String InstructorSpecialization;
   public Instructor(){
       
       super();
       InstructorSpecialization = "Not Available";
       
   }
   
   public Instructor(String instructorname, String instructorid, String instructoremail, String instructornumber, String facultyember){
       super(instructorname, instructorid, instructoremail, instructornumber);
       this.InstructorSpecialization = facultyember;
   }
   
   public void printFacMember(){
       
       System.out.println("Instructor Specialization:  " + InstructorSpecialization);
   
    }
   
   public String getFacMember(){
       
       return InstructorSpecialization;
   }
}
