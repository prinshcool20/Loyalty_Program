<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
You are not logged in<br/>
<a href="adminlogin.jsp">Please Login</a>
<% } else {
%>
<html>

  <head> 
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
   <title>ADMIN</title>
   <style>
     body {
  margin: 0 0;
  font-family: 'Raleway';
  background-color:grey;
  color: #006064;
}
form  { 
    display: table;
    box-shadow: 0 5px 25px 0 rgba(0, 0, 0, 0.4);
    padding: 30px;
    margin: 0 auto;
    margin-bottom: 40px;
     background-color:#ffffff;
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
    margin-top:180px;
    margin-bottom: 40px;
    transition: 2s ease all;
}
   </style>
  </head>

  <body>    

  
<font color="#000000" >Performance:-</font>  
  <form >
 
  	<%
Connection con;
Class.forName("com.mysql.jdbc.Driver");
con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/loyal", "root", "root");
%>
	
  
  
  	
  	<TABLE width="600">
   <TR>
       <center>	<ins><B>TELEPHONE</B> </ins> </center>    <br><br>
   </TR>
      <BR>
  	
      <%

PreparedStatement p1=(PreparedStatement)con.prepareStatement("select id_no, SUM(amount) amount from `telephone` group by id_no");
ResultSet r1=p1.executeQuery();
while(r1.next()){
	%>
	
	<TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	ID :- <%= r1.getString("id_no")%></TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TR>TOTAL :- <%= r1.getString("amount")%> </TR><BR>
	<% 	
}
%>
   
</TABLE><br><br>


	
	
  	<TABLE  width="600">
   <TR>
    <center><ins><B>BROADBAND</B> </ins> </center>    <br><br>
      </TR>
            <%
PreparedStatement p2=(PreparedStatement)con.prepareStatement("select id_no, SUM(amount) amount from `broadband` group by id_no");
ResultSet r2=p2.executeQuery();
while(r2.next()){%>
	<TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	ID :-<%= r2.getString("id_no")%> </TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TR>TOTAL :-<%= r2.getString("amount")%> </TR><BR>
	<%
}
%>
      
   
</TABLE><br><br>
      
       
      
  	<TABLE  width="600">
   <TR><center><ins><B>LAND LINE</B> </ins></center>   <br><br>
      </TR>
               <%
PreparedStatement p3=(PreparedStatement)con.prepareStatement("select id_no,  SUM(amount) amount from `landline` group by id_no");
ResultSet r3=p3.executeQuery();
while(r3.next()){%>
	<TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	ID :-<%=r3.getString("id_no")%></TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TR>TOTAL :-<%=r3.getString("amount")%> </TR><BR>
	<%
	
}
%>
  
     
   
</TABLE><br><br>
      
    
  	<TABLE  width="600">
   <TR><center><ins><B>DATA CARD</B> </ins></center>     <br><br>
      </TR>       
      
        <%
PreparedStatement p4=(PreparedStatement)con.prepareStatement("select id_no, SUM(amount) amount from `datacard` group by id_no");
ResultSet r4=p4.executeQuery();
while(r4.next()){%>
	<TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	ID :-<%= r4.getString("id_no")%> </TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TR>TOTAL :-<%= r4.getString("amount")%> </TR><BR>
	<%
}
%>

   
</TABLE><br><br>



  	<TABLE  width="600">
   <TR><center><ins><B>DTH</B> </ins></center>     <br><br>
      </TR>         <%
PreparedStatement p5=(PreparedStatement)con.prepareStatement("select id_no,  SUM(amount) amount from `dth` group by id_no");
ResultSet r5=p5.executeQuery();
while(r5.next()){%>
	<TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	ID :-<%= r5.getString("id_no")%> </TR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<TR>TOTAL :-<%= r5.getString("amount")%> </TR><BR><% 
}
%>
   
</TABLE>
  	
  </form>    
</body>
</html>
<%
    }
%>