/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kerev
 */
public class BookPojo {
    private int bookID; 
    private String bookName; 
    private String bookAuthor;
    private String bookISBN;
    private String category; 
    private int noOfCopies; 
    private String available; 
    
    
    public void setBookID(int bookID){
        this.bookID=bookID; 
    }
    public int getBookID(){
        return this.bookID; 
    }
    
    public void setBookName(String bookName){
        this.bookName=bookName;
    }
    public String getBookName(){
        return this.bookName;
    }
    
    public void setBookAuthor(String bookAuthor){
        this.bookAuthor=bookAuthor;
    }
    public String getBookAuthor(){
        return this.bookAuthor;
    }
    
    public void setBookISBN(String bookISBN){
        this.bookISBN=bookISBN;
    }
    public String getBookISBN(){
        return this.bookISBN;
    }
    
    public void setBookCategory(String category){
        this.category=category; 
    }
    public String getBookCategory(){
        return this.category; 
    }
    
    public void setNoCopies(int nocopies){
        this.noOfCopies=nocopies;
    }
    public int getCopies(){
        return this.noOfCopies;
    }
    
    public void setAvailable(String available){
        this.available=available;
    }
    public String getAvailable(){
        return available; 
    }
    
}
