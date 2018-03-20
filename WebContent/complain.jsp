<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<title>Register complaint</title>
   <style>
     body {
  margin: 0 0;
  font-family: 'Raleway';
  background-color: grey;
  color: #006064;
}
.container {
  margin-top: 100px;
}
form  { 
    display: table;
    box-shadow: 0 5px 25px 0 rgba(0, 0, 0, 0.4);
    padding: 30px;
    margin: 0 auto;
     background-color: #ffffff;
    margin-bottom: 40px;
    transition: 2s ease all;
}
p     { display: table-row;  }
label, input, select, button, form p span  { display: table-cell; }
button {
  margin-left: 55%;
  width: 200px;
  height: 50px;
  font-size: 115%;
  background-color: #006064;
  border: 0px;
  border-radius: 7px;
  color: white;
  transition: 2s ease all;
}
button img {
  height: 22px; 
}
form:hover, button:hover {
-webkit-transition: 2s ease all;
  transition: 2s ease all;
  box-shadow: 0 15px 35px 0 rgba(0, 0, 0, 0.7);
  -webkit-transform: translateY(-1px);
          transform: translateY(-1px);
}       
  form label {
    font-size:16px;
  }

  input[type="text"], input[type="number"], input[type="password"], select {
    width: 200px;
    height: 30px;
    margin-left: 20px;
    padding: 3px;
    padding-left:6px;
    border-radius: 5px;
  font-size: 14px;
  box-shadow: inset 0 1px 3px rgba(0,0,0, .455), 0px 1px 1px rgba(255,255,255,.5);
  border: 1px solid #4DD0E1;
  background-color: rgb(239,252,251);
  }
  .foot {
    position: absolute;
    bottom: 0;
  background-color: #006064;
  width: 100%;
  color: white;
  }
  .centered {
    padding: 10px;
    margin: 0 auto;
    text-align:center;
  }
  .heading {
    margin: 20px;
  }
   </style>
  </head>

  <body>  
  <div class="container">
  <h2 class="heading centered"><font color="#000000">Enter your Complaint</font></h2><br>
    <form  action ="ComplaintServlet" method ="POST" >
        <p>
         <label>Name</label>
         <input type="text" name="name" required="required"  >
          </p><br>
         <p>
         <label>Email</label>
         <input type="text" name="id" required="required"  >
          </p><br>
          <p>
         <label>Phone No.</label>
         <input type="text" name="number" required="required" >
          </p>
         </br>
          <p>
         <label>Your Complaint</label><br>
          <textarea rows="6" cols="50" name="complain"></textarea>
          </p><br>
         <br><br>
          <p>
         <button type="submit">Submit</button>
         </p>
    </form>
    </div>
    
  </body>
</html>