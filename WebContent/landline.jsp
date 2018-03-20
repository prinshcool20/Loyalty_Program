<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

  <head> 
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <title>Application Received</title>
   <style>
     body {
  margin: 0 0;
  font-family: 'Raleway';
  background-color: #FFFFFF;
  color: #006064;
}
form  { 
    display: table;
    box-shadow: 0 5px 25px 0 rgba(0, 0, 0, 0.4);
    padding: 30px;
    margin: 0 auto;
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
    margin-top:20px;
    margin-bottom: 40px;
    transition: 2s ease all;
}
   </style>
  </head>

  <body>  
   <BR><BR><BR> <%
String driverName1 = "com.mysql.jdbc.Driver";
String connectionUrl1 = "jdbc:mysql://localhost:3306/loyal";
String userId1= "root";
String password1= "root";
try {
Class.forName(driverName1);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection1 ;
Statement statement1 = null;
ResultSet resultSet1 = null;
try{ 
	connection1 = DriverManager.getConnection(connectionUrl1, userId1, password1);
	statement1=connection1.createStatement();
	String sq ="select SUM(LL_amount) LL_amount from `landline`  ";
	resultSet1 = statement1.executeQuery(sq);
	while(resultSet1.next()){
	%> 
	<B><ins>Total Amount</ins></B>:-&nbsp;&nbsp;&nbsp;&nbsp;<b><ins><%= resultSet1.getString("LL_amount")%></ins></b>  <BR><BR>
<%String LL=resultSet1.getString("LL_amount");%>
<%session.setAttribute("LL", LL); %>
  		<% 
}
} catch (Exception e) {
e.printStackTrace();
}
%>
  <div class="container boxed">
  
  <form  >
 <%String id =(String)session.getAttribute("id_no"); %> 
  	Performance:-
  	<%

String driverName2 = "com.mysql.jdbc.Driver";
String connectionUrl2 = "jdbc:mysql://localhost:3306/loyal";
String userId2 = "root";
String password2= "root";

try {
Class.forName(driverName2);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}



Connection connection2 ;
Statement statement2 = null;
ResultSet resultSet2 = null;
%>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#86E2D5">
<td><b>ID</b></td>
<td><b>Amount</b></td>
</tr>
<%
try{ 
connection2 = DriverManager.getConnection(connectionUrl2, userId2, password2);
statement2=connection2.createStatement();
String sql ="select id_no, SUM(LL_amount) LL_amount from `landline` group by id_no ";


resultSet2 = statement2.executeQuery(sql);
while(resultSet2.next()){
%>
<tr bgcolor="#DEB887">

   
<td><%=resultSet2.getString("id_no") %></td>
<td><%=resultSet2.getString("LL_amount") %></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>


</table>
  
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
<h2 align="center"><font><strong>LANDLINE TOTAL RECORD</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#86E2D5">
<td><b>id</b></td>
<td><b>Landline_No</b></td>
<td><b>amount</b></td>
<td><b>Date</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM landline ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887"">

<td><%=resultSet.getString("id_no") %></td>
<td><%=resultSet.getString("Landline_No") %></td>
<td><%=resultSet.getString("LL_amount") %></td>
<td><%=resultSet.getString("Date") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

	
  </form>
  
 
  
    </div>
    
</body>
</html>
 