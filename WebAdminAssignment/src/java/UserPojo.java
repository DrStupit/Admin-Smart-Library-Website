/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Kerev
 */
public class UserPojo {
    private String userid;
    private String name;
    private String idnumber;
    private String cellnumber; 
    private String address; 
    private String role; 
    private String password;
    
     public void setUserPass(String password){
        this.password = password; 
    }
    public String getUserPass(){
        return this.password;
    }
    
   
     public void setUserID(String userid){
        this.name = name; 
    }
    public String getUserID(){
        return this.userid;
    }
    
    
    public void setName(String name){
        this.name = name; 
    }
    public String getName(){
        return this.name;
    }
    
    public void setIDNo(String idnumber){
        this.idnumber = idnumber;
    }
    public String getIDNo(){
        return this.idnumber;
    }
    
    public void setCellNo(String cellnumber){
        this.cellnumber = cellnumber; 
    }
    public String getCellNo(){
        return this.cellnumber;
    }
    
    public void setAddress(String address){
        this.address = address; 
    }
    public String getAddress(){
        return this.address;
    }
    
    public void setRole(String role){
        this.role = role; 
    }
    
    public String getRole(){
        return this.role; 
    }
}
