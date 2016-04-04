
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kerev
 */
public class LibDAO {
    
    DB_Operations obj = new DB_Operations();
    
    public void AddBook(BookPojo book){
        String  availStatus="Yes";
        String sql = "INSERT INTO `finallibrary`.`books` (`BookID`, `BookName`, `BookAuthor`, `ISBN`, `BookCategory`, `NoOfCopies`, `Available`) VALUES (NULL, '"+book.getBookName()+"', '"+book.getBookAuthor()+"', '"+book.getBookISBN()+"', '"+book.getBookCategory()+"', '"+book.getCopies()+"','"+availStatus+"')";
        obj.insert(sql);
    }
     public void AddAdmin(UserPojo user){
        String sql = "INSERT INTO `finallibrary`.`users` (`UserID`, `Name`, `Password`, `IDNo`, `CellNumber`, `Address`, `Role`) VALUES (NULL, '"+user.getName()+"', '"+user.getUserPass()+"', '"+user.getIDNo()+"', '"+user.getCellNo()+"', '"+user.getAddress()+"','"+user.getRole()+"')";
        obj.insert(sql);
    }
    public void AddPublicUser(UserPojo user){
        String sql = "INSERT INTO `finallibrary`.`users` (`UserID`, `Name`, `Password`, `IDNo`, `CellNumber`, `Address`, `Role`) VALUES (NULL, '"+user.getName()+"', '"+user.getUserPass()+"', '"+user.getIDNo()+"', '"+user.getCellNo()+"', '"+user.getAddress()+"','"+user.getRole()+"')";
        obj.insert(sql);
    }
    public ResultSet SearchUser(String username){
        ResultSet rs = obj.query("select * from finallibrary.users where Name like '%"+username+"%'");
        return rs;
    }
    
    public List<UserPojo> FoundUser(String username) throws SQLException{
         List<UserPojo> listU = new ArrayList<UserPojo>();
         ResultSet rs = this.SearchUser(username);
         
         try{
             while(rs.next()){
                 UserPojo pojo = new UserPojo();
                 pojo.setUserID(rs.getString("UserID"));
                 pojo.setName(rs.getString("Name"));
                 pojo.setIDNo(rs.getString("IDNo"));
                 pojo.setCellNo(rs.getString("CellNumber"));
                 pojo.setAddress(rs.getString("Address"));
                 pojo.setRole(rs.getString("Role"));
                 listU.add(pojo);
             }
         }
         catch(SQLException se){
                    se.printStackTrace();}
         
         return listU;
     }
    
    public ResultSet AllUsers(){
        ResultSet rs = obj.query("select * from finallibrary.users");
        return rs;
    }
    
     public List<UserPojo> Users() throws SQLException{
         List<UserPojo> listU = new ArrayList<UserPojo>();
         ResultSet rs = this.AllUsers();
         
         try{
             while(rs.next()){
                 UserPojo pojo = new UserPojo();
                 pojo.setUserID(rs.getString("UserID"));
                 pojo.setName(rs.getString("Name"));
                 pojo.setIDNo(rs.getString("IDNo"));
                 pojo.setCellNo(rs.getString("CellNumber"));
                 pojo.setAddress(rs.getString("Address"));
                 pojo.setRole(rs.getString("Role"));
                 listU.add(pojo);
             }
         }
         catch(SQLException se){
                    se.printStackTrace();}
         
         return listU;
     }
    
     public ResultSet AllBooks(){
         ResultSet rs = obj.query("select * from finallibrary.books");
         return rs;
     }
     
       public List<BookPojo> Books() throws SQLException{
         List<BookPojo> listU = new ArrayList<BookPojo>();
         ResultSet rs = this.AllBooks();
         
         try{
             while(rs.next()){
                BookPojo pojo = new BookPojo();
                 pojo.setBookName(rs.getString("BookName"));
                 pojo.setBookAuthor(rs.getString("BookAuthor"));
                 pojo.setBookISBN(rs.getString("ISBN"));
                 pojo.setBookCategory(rs.getString("BookCategory"));
                 pojo.setNoCopies(Integer.parseInt(rs.getString("NoOfCopies")));
                 pojo.setAvailable(rs.getString("Available"));
                 listU.add(pojo);
             }
         }
         catch(SQLException se){
                    se.printStackTrace();}
         
         return listU;
     }
       
        public ResultSet SearchBook(String bookName){
        ResultSet rs = obj.query("select * from finallibrary.books where BookName like '%"+bookName+"%'");
        return rs;
    }
         public void DeleteBook(String bookName){
         obj.delBk("delete from finallibrary.books where BookName like '%"+bookName+"%'");
         
    }
         
         public ResultSet getAvail()
         {
        ResultSet rs = obj.query("select * from finallibrary.books where Available = 'Yes' ");
        return rs;
         }
         
         public List<BookPojo> availBooks() throws SQLException{
         List<BookPojo> listU = new ArrayList<BookPojo>();
         ResultSet rs = this.getAvail();
         
         try{
             while(rs.next()){
                BookPojo pojo = new BookPojo();
                 pojo.setBookName(rs.getString("BookName"));
                 pojo.setBookAuthor(rs.getString("BookAuthor"));
                 pojo.setBookISBN(rs.getString("ISBN"));
                 pojo.setBookCategory(rs.getString("BookCategory"));
                 pojo.setNoCopies(Integer.parseInt(rs.getString("NoOfCopies")));
                 pojo.setAvailable(rs.getString("Available"));
                 listU.add(pojo);
             }
         }
         catch(SQLException se){
                    se.printStackTrace();}
         
         return listU;
     }
         
         
//        
    public List<BookPojo> FoundBook(String bookName) throws SQLException{
         List<BookPojo> listU = new ArrayList<BookPojo>();
         ResultSet rs = this.SearchBook(bookName);
         
         try{
             while(rs.next()){
                 BookPojo pojo = new BookPojo();
                 pojo.setBookName(rs.getString("BookName"));
                 pojo.setBookAuthor(rs.getString("BookAuthor"));
                 pojo.setBookISBN(rs.getString("ISBN"));
                 pojo.setBookCategory(rs.getString("BookCategory"));
                 pojo.setNoCopies(Integer.parseInt(rs.getString("NoOfCopies")));
                 pojo.setAvailable(rs.getString("Available"));
                 listU.add(pojo);
             }
         }
         catch(SQLException se){
                    se.printStackTrace();}
         
         return listU;
     }
    
   
}
