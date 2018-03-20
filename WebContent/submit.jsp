<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <title>Complaint registered</title>
   <style>
     body {
  margin: 0 0;
  font-family: 'Raleway';
  background-color: grey;
  color: #006064;
}
form  { 
    display: table;
    box-shadow: 0 5px 25px 0 rgba(0, 0, 0, 0.4);
    padding: 30px;
    margin: 0 auto;
    margin-bottom: 40px;
    background-color: #ffffff;
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
.boxed:hover, button:hover {
-webkit-transition: 2s ease all;
  transition: 2s ease all;
  box-shadow: 0 15px 35px 0 rgba(0, 0, 0, 0.7);
  -webkit-transform: translateY(-1px);
          transform: translateY(-1px);
}       
 
  .foot {
    position: absolute;
    bottom: 0;
  background-color: #006064;
  width: 100%;
  color: white;
  }

a {
  color: #006064;
  font-weight: bold;
}
  .centered {
    padding: 10px;
    margin: 0 auto;
    text-align:center;
  }
  .heading {
    margin: 20px;
  }
  .boxed { 
    display: table;
    box-shadow: 0 5px 25px 0 rgba(0, 0, 0, 0.4);
    width: 50%;
    padding: 30px;
    margin: 0 auto;
    margin-top:180px;
    margin-bottom: 40px;
    background-color: #ffffff;
    transition: 2s ease all;
}
   </style>
  </head>

  <body> <div class="container boxed">
  <h2 class="heading centered">Your Complaint Is Registered</h2><br>
    <p>
    We have received your complain. Your complain id is 29812. You can use <a href="track.jsp?tid=29812">this link</a> to track your complain status (or manually enter your complain id here).
    </p>
    </div>
    
  </body>
</html>