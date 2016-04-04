

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author pierre
 */
public class DB_Operations {
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/FinalLibrary";

   //  Database credentials
   static final String USER = "root";
   static final String PASS = "";
   Connection conn = null;
   Statement stmt = null;
   ResultSet rs = null;
   public DB_Operations(){
   this.conn = connection ();
   
   String password="";
   String login="";
   }
    public Connection connection (){
    
    try{
      Class.forName("com.mysql.jdbc.Driver");

      //STEP 3: Open a connection
      System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);
    
    }catch(SQLException se){
      //Handle errors for Class.forName
      se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
    return conn;
    }
    
    
    public ResultSet query(String sql){
       try{
     // Class.forName("com.mysql.jdbc.Driver");
           
    //System.out.println("Creating statement...");
    //Connection connection = connection();
      stmt = this.conn.createStatement();
       rs = stmt.executeQuery(sql);
     }catch(SQLException se){
      //Handle errors for Class.forName
      se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
    
    return rs;
    }
    
    public void delBk(String sql){
       try{
     // Class.forName("com.mysql.jdbc.Driver");
           
    System.out.println("Inserting Data...");
    Connection connection = connection();
      stmt = connection.createStatement();
      stmt.executeUpdate(sql);//Insert data on the db
      
     }
       catch(SQLException se){
      //Handle errors for Class.forName
        se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
    
    System.out.print("Data inserted");
    }
    
   public void insert(String sql){
       try{
     // Class.forName("com.mysql.jdbc.Driver");
           
    System.out.println("Inserting Data...");
    Connection connection = connection();
      stmt = connection.createStatement();
      stmt.executeUpdate(sql);//Insert data on the db
      
     }
       catch(SQLException se){
      //Handle errors for Class.forName
        se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
    
    System.out.print("Data inserted");
    }
      
   public void display (ResultSet rs){
   
   try {
      
   while(rs.next()){
         //Retrieve by column name or put Column number
         int id  = rs.getInt(1);
         String name = rs.getString(2);
         String age = rs.getString(3);
         String password = rs.getString(4);
         String login = rs.getString(5);

         //Display values
         System.out.println("User Id: " + id+", ");
         System.out.println("User Name: " + name+", ");
         System.out.println("User Age: " + age+", ");
         System.out.println("User Password: " + password+", ");
         System.out.println("User LogIn: " + login);    
         System.out.println("--------------------------------");
         
         System.out.println();
      } 
   }catch(SQLException se){
      //Handle errors for Class.forName
      se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }
   } 
     
   public void close (ResultSet rs){
   try{
   rs.close();
      stmt.close();
      conn.close();
       
    }catch(SQLException se){
      //Handle errors for Class.forName
      se.printStackTrace();
   }
    catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }    
   }  
}
