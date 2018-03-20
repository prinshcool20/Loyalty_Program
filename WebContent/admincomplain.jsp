<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Complains</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style1.css">

  
</head>

<body>

  <div class="table-users">
 
   
   <table cellspacing="0">
      
      
      
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

 <div class="header"><h2 align="center"><font><strong>COMPLAINT'S</strong></font></h2></div>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
         
         <th>Name</th>
         <th>Email</th>
         <th>Phone</th>
         <th width="230">Complaint</th>
         <th>Date</th>
      </tr>
      
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT *  FROM complain ";


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    

      <tr>
         <td><%=resultSet.getString("name") %></td>
         <td><%=resultSet.getString("Email") %></td>
         <td><%=resultSet.getString("number") %></td>
         <td><%=resultSet.getString("complain") %></td>
         <td><%=resultSet.getString("Date") %></td>
      </tr>
      <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
   
   </table>
</div>
  
  

</body>

</html>
