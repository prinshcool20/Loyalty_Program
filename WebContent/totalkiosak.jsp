<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="adminlogin.jsp">Please Login</a>
<% } else {
%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <title>ADMIN</title>
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
    background-color:#ffffff;
    margin: 0 auto;
    margin-bottom: 40px;
    transition: 2s ease all;
    width:100px;
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
  form label {
    font-size:16px;
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
  
    width: 50%;
    padding: 30px;
    margin: 0 auto;
    margin-top:180px;
    margin-bottom: 40px;
    transition: 2s ease all;
}
   </style>
</head>
<body  bgcolor="grey">
 <form >
  <%String id =(String)session.getAttribute("id_no"); %>
  	<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/loyal";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection ;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong><u> Total Kiosks</u></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#86E2D5">
<td><b>id</b></td>
<td><b>Username</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT id_no, username FROM user; ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("id_no") %></td>
<td><%=resultSet.getString("username") %></td>
</tr>
<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  	</form>
 </body>
</html>
<%
    }
%>