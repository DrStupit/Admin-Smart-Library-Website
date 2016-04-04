<%-- 
    Document   : index
    Created on : Mar 27, 2016, 9:35:02 PM
    Author     : Kerev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            <%--css code and style for bootstrap goes here...--%>
            #custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(8, 8, 8, 1);
}
   .bg-1 { 
		background-color: rgba(59, 141, 189, 1); /* Green */
		color: #12C0DB;
                 border-width: 4px;
                border-radius: 15px;
		padding-top: 50px;
		padding-bottom: 50px;
		padding-left: 70px;
		padding-right: 70px;
		font-family: "Times New Roman", Times, serif;
		}
#custom-bootstrap-menu.navbar-default {
    font-size: 12px;
    background-color: rgba(59, 141, 189, 1);
    border-width: 4px;
    border-radius: 15px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(59, 141, 189, 1);
    background: -webkit-linear-gradient(top, rgba(248, 248, 248, 0) 0%, rgba(59, 141, 189, 1) 100%);
    background: linear-gradient(to bottom, rgba(248, 248, 248, 0) 0%, rgba(59, 141, 189, 1) 100%);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(9, 242, 40, 0.96);
    background-color: rgba(74, 82, 73, 1);
    background: -webkit-linear-gradient(top, rgba(248, 248, 248, 0) 0%, rgba(74, 82, 73, 1) 100%);
    background: linear-gradient(to bottom, rgba(248, 248, 248, 0) 0%, rgba(74, 82, 73, 1) 100%);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(85, 85, 85, 1);
    background-color: rgba(0, 188, 235, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: #00bceb;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus .icon-bar {
    background-color: #3b8dbd;
}
        </style>
        <script>
  
  
function searchUsers(name){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblAllUsers');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   
   var username = document.getElementById("usrSearch").value;
   //alert(username);
   ajaxRequest.open("GET", "./SearchUserServlet?Code="+username+"", true);
   ajaxRequest.send(null); 
}
function deleteBook(name){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblDelBook');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   
   var username = document.getElementById("delSearch").value;
   //alert(username);
   ajaxRequest.open("GET", "./DeleteBookServlet?Code="+username+"", true);
   ajaxRequest.send(null); 
}
function searchBooks(name){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblAllBooks');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   
   var username = document.getElementById("bkSearch").value;
   //alert(username);
   ajaxRequest.open("GET", "./SearchBookServlet?Code="+username+"", true);
   ajaxRequest.send(null); 
}
function ViewBooks(){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblAllBooks');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   //var chkBox = document.getElementById("chk").checked;
   ajaxRequest.open("GET", "./ViewAllBooksServlet", true);
   ajaxRequest.send(null); 
}
function ViewReserved(){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblResBook');
         //document.getElementById("userBox").style.visibility = "visible"
         //document.getElementById("insertBox").style.visibility = "hidden"
         //document.getElementById("insertPUserBox").style.visibility = "hidden"
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   
   ajaxRequest.open("GET", "./CheckAvailabilityServlet", true);
   ajaxRequest.send(null); 
}
function showFunction(){
             document.getElementById("userBox").style.visibility = "hidden"
             document.getElementById("insertBox").style.visibility = "visible" }
function showUserReg(){
       document.getElementById("userBox").style.visibility = "hidden"
       document.getElementById("insertBox").style.visibility = "hidden"
       document.getElementById("insertPUserBox").style.visibility = "visible"
   }      
function registerAdmin(){
                //showFunction();
                var ajaxResponse = new XMLHttpRequest();
                ajaxResponse.onreadystatechange = function(){
                    if(ajaxResponse.readyState == 4 && ajaxResponse.status == 200){
                        
                        document.getElementById("insertBox").innerHTML = ajaxResponse.responseText;
                        
                       
                    }
                };
                
                 var fname = document.getElementById("username").value;  
                 var password = document.getElementById("pwd").value;
                 var idnum = document.getElementById("idno").value;
                 var cellnum = document.getElementById("cellno").value;
                 var address = document.getElementById("address").value;
                alert("Details: "+fname);
               ajaxResponse.open("POST","./InsertAdminServlet","true");
               ajaxResponse.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
               ajaxResponse.send("Name="+fname+"&Password="+password+"&ID="+idnum+"&Cell="+cellnum+"&Address="+address);
           }
function registerPublicUser(){
                //showFunction();
                var ajaxResponse = new XMLHttpRequest();
                ajaxResponse.onreadystatechange = function(){
                    if(ajaxResponse.readyState == 4 && ajaxResponse.status == 200){
                        
                        document.getElementById("insertPUserBox").innerHTML = ajaxResponse.responseText;
                        
                       
                    }
                };
                
                 var fname = document.getElementById("pusername").value;  
                 var password = document.getElementById("ppwd").value;
                 var idnum = document.getElementById("pidno").value;
                 var cellnum = document.getElementById("pcellno").value;
                 var address = document.getElementById("paddress").value;
                alert("Details: "+fname);
               ajaxResponse.open("POST","./InsertUserServlet","true");
               ajaxResponse.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
               ajaxResponse.send("Name="+fname+"&Password="+password+"&ID="+idnum+"&Cell="+cellnum+"&Address="+address);
           }
function insertNewBook(){
                //showFunction();
                var ajaxResponse = new XMLHttpRequest();
                ajaxResponse.onreadystatechange = function(){
                    if(ajaxResponse.readyState == 4 && ajaxResponse.status == 200){
                        
                        document.getElementById("insertBookBox").innerHTML = ajaxResponse.responseText;
                        
                       
                    }
                };
                
                 var bname = document.getElementById("bookname").value;  
                 var bauthor = document.getElementById("bookauthor").value;
                 var bisbn = document.getElementById("bookisbn").value;
                 var bookcat = document.getElementById("bookcat").value;
                 var nocopies = document.getElementById("noofcopies").value;
                alert("Details: "+nocopies);
               ajaxResponse.open("POST","./InsertBookServlet","true");
               ajaxResponse.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
               ajaxResponse.send("Name="+bname+"&Author="+bauthor+"&ISBN="+bisbn+"&Cat="+bookcat+"&Copies="+nocopies);
             }
function ViewUsers(){
        var ajaxRequest;  // The variable that makes Ajax possible!
                    try{
   
      // Opera 8.0+, Firefox, Safari
                        ajaxRequest = new XMLHttpRequest();
                        }catch (e){
      
      // Internet Explorer Browsers
              try{
                 ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e) {
         
              try{
                 ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                }catch (e){
                    // Something went wrong
            alert("Your browser broke!");
            return false;
         }
      }
   }
   
   // Create a function that will receive data
   // sent from the server and will update
   // div section in the same page.
   ajaxRequest.onreadystatechange = function(){
   
      if(ajaxRequest.readyState == 4){
         var ajaxDisplay = document.getElementById('tblAllUsers');
         ajaxDisplay.innerHTML = ajaxRequest.responseText;
      }
   }
   //var chkBox = document.getElementById("chk").checked;
   ajaxRequest.open("GET", "./UsersServlet", true);
   ajaxRequest.send(null); 
}
        </script>
       
        
        <script src ="http://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smart Library</title>
    </head>
    <body>
 <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container-fluid">
             <div class="navbar-header"><a class="navbar-brand" href="#">Smart Library</a>
             <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
              </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-left">
                <li><a href="/">Home</a>
                 <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">All Users
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a onclick=""data-toggle="collapse" data-target="#insertBox" aria-expanded="false" aria-controls="">Add New Administrator</a></li>
                        <li><a onclick="ViewUsers()"data-toggle="collapse" data-target="#userBox" aria-expanded="false" aria-controls="">View All Active Users</a></li>
                        <li><a onclick="" data-toggle="collapse" data-target="#insertPUserBox" aria-expanded="false" aria-controls="">Add New User</a></li>    
                    </ul>
                </li>
                <li><a onclick="ViewBooks()" data-toggle="collapse" data-target="#booksBox" aria-expanded="false" aria-controls="">All Books</a>
                 <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Edit (CRUD) Books
                    <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a >Edit Book Details</a></li>
                        <li><a data-toggle="collapse" data-target="#insertBookBox" aria-expanded="false" aria-controls="">Add New Book</a></li>
                        <li><a onclick=""data-toggle="collapse" data-target="#deleteBox" aria-expanded="false" aria-controls="">Delete Book</a></li> 
                    </ul>
                </li>
                <li><a onclick="ViewReserved()"data-toggle="collapse" data-target="#reserveBox" aria-expanded="false" aria-controls="">Books on Reserve</a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a ><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a ><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</div>
        
        
        <%--Forms and Divs begin here...--%>
        <div class="container-fluid bg-1 text-center">
            <div class = "jumbotron">
                <h1>Smart Library System</h1>
		<p><strong>Complete Library System for Staff and Students</strong></p>
     
            </div>
            
        
        </div>
        <form id = "page" method="GET" action="" >
            
        <div class="collapse" id = "userBox">
            <div class="container">
                
                <div class ="container-fluid" id="searchAllusers">
                    <div class="form-group ">
                        <div class="well well-sm">
                        <label for="usrSearch">Search By Name:</label>
                        <input type="text" class="form-control" id="usrSearch" onchange="searchUsers(this.value)">
                        <button type="button" class="btn btn-primary" onclick="searchUsers(this.value)"><span class="glyphicon glyphicon-search"></span>Search</button>
                        </div>
                    </div>
                </div>
                
                <h2>All Current Users</h2>
                 <p>List of the current active Users:</p>            
            <table class="table table-bordered"id="tblAllUsers" >
             <thead>
            <tr>
                <th>User ID</th>
                <th>Name</th>
                <th>Identity No</th>
                <th>Cell Number</th>
                <th>Address</th>
                <th>User Role</th>
            </tr>
            <tr ></tr>
            </thead>
            <tbody>
        
            </tbody>
            </table>
            </div>
        </div>
            
            
        <div class="collapse" id = "insertBox" >
            <form role="form">
                 <div class="form-group">
                    <label for="username">Name:</label>
                    <input type="text" class="form-control" id="username">
                 </div>
            <div class="form-group">
                 <label for="pwd">Password:</label>
                 <input type="password" class="form-control" id="pwd">
            </div>
            <div class="form-group">
                    <label for="idno">Identity Number:</label>
                    <input type="text" class="form-control" id="idno">
            </div>
            <div class="form-group">
                    <label for="cellno">Cell Number:</label>
                    <input type="text" class="form-control" id="cellno">
            </div>
                
            <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" class="form-control" id="address">
            </div>
                <button type="button" class="btn btn-primary" onclick="registerAdmin()">Submit</button>
            </form>
            
        </div>
            
            
            <div class="collapse" id = "insertPUserBox" >
            <form role="form">
                 <div class="form-group">
                    <label for="pusername">Name:</label>
                    <input type="text" class="form-control" id="pusername">
                 </div>
            <div class="form-group">
                 <label for="ppwd">Password:</label>
                 <input type="password" class="form-control" id="ppwd">
            </div>
            <div class="form-group">
                    <label for="pidno">Identity Number:</label>
                    <input type="text" class="form-control" id="pidno">
            </div>
            <div class="form-group">
                    <label for="pcellno">Cell Number:</label>
                    <input type="text" class="form-control" id="pcellno">
            </div>
                
            <div class="form-group">
                    <label for="paddress">Address:</label>
                    <input type="text" class="form-control" id="paddress">
            </div>
                <button type="button" class="btn btn-primary" onclick="registerPublicUser()">Submit</button>
            </form>
            
        </div>
            
            <div class="collapse" id = "insertBookBox" >
                <h2><strong>Insert a New Book</strong></h2>
                <h3>Complete the details in below:</h3>
                <form role="form">
                    <div class="form-group">
                    <label for="bookname">Book Name:</label>
                    <input type="text" class="form-control" id="bookname">
                 </div>
                    <div class="form-group">
                    <label for="bookauthor">Book Author:</label>
                    <input type="text" class="form-control" id="bookauthor">
                 </div>
                    <div class="form-group">
                    <label for="bookisbn">Book ISBN:</label>
                    <input type="text" class="form-control" id="bookisbn">
                 </div>
                    <div class="form-group">
                       <label for="bookcat">Category:</label>
                        <input type="text" class="form-control" id="bookcat">
                    </div>
                    <div class="form-group">
                    <label for="noofcopies">No. of Copies:</label>
                    <input type="text" class="form-control" id="noofcopies">
                 </div>
                    
                 <button type="button" class="btn btn-primary" onclick="insertNewBook()">Add Book</button>
                </form>
            </div>
            
             <div class="collapse" id = "booksBox">
            <div class="container">
                
                <div class ="container-fluid" id="searchAllBooks">
                    <div class="form-group ">
                        <div class="well well-sm">
                        <label for="bkSearch">Search By Name:</label>
                        <input type="text" class="form-control" id="bkSearch" onchange="searchBooks(this.value)">
                        <button type="button" class="btn btn-primary" onclick="searchBooks(this.value)"><span class="glyphicon glyphicon-search"></span>Search</button>
                         
                        </div>
                    </div>
                </div>
                
                <h2>All Books in Library</h2>
                 <p>List of the current Current Books:</p>            
            <table class="table table-bordered"id="tblAllBooks" >
             <thead>
            <tr>
                <th>Book Name</th>
                <th>Book Author</th>
                <th>ISBN Number</th>
                <th>Category</th>
                <th>Number of Copies</th>
                <th>Available</th>
                <th>Delete></th>
            </tr>
            <tr ></tr>
            </thead>
            <tbody>
        
            </tbody>
            </table>
            </div>
        </div>
            
            
              <div class="collapse" id = "deleteBox">
            <div class="container">
                
                <div class ="container-fluid" id="deleteBooks">
                    <div class="form-group ">
                        <div class="well well-sm">
                        <label for="delSearch">Search By Name:</label>
                        <input type="text" class="form-control" id="delSearch" onchange="">
                        <button type="button" class="btn btn-primary" onclick="deleteBook(this.value)"><span class="glyphicon glyphicon-search"></span>Search</button>
                         </div>
                    </div>
                </div>
                <h2>Found Book</h2>
                 <p>Do you wish to delete the following book</p>             
            </div>
        </div>
            
            <div class="collapse" id = "reserveBox">
            <div class="container">
                
                <div class ="container-fluid" id="reserveBooks">
                    
                </div>
                <h2>Current Books Available for Rental:</h2>
                 <p>Books:</p>            
            <table class="table table-bordered"id="tblResBook" >
             <thead>
            <tr>
                <th>Book Name</th>
                <th>Book Author</th>
                <th>ISBN Number</th>
                <th>Category</th>
                <th>Number of Copies</th>
                <th>Available</th>
                
            </tr>
            <tr ></tr>
            </thead>
            <tbody>
        
            </tbody>
            </table>
       
            </div>
        </div>
            
            
            
            
     </form>   
    </body>
</html>
