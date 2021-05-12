/**
 * A class that maintains information on a book.
 * This might form part of a larger application such
 * as a library system, for instance.
 *
 * @author Freddy Sourial
 * @version Jan 20, 2020
 */
public class Book
{
 // The fields.
 private String author;
 private String title;
 /**
 * Set the author and title fields when this object
 * is constructed.
 */
 public Book(String bookAuthor, String bookTitle)
 {
 author = bookAuthor;
 title = bookTitle;
 }
 public String GetAuthor (){
     return author;
} 
    public String getTitle (){
        return title;
    }
}

