<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String tel=request.getParameter("tel");
String amount=request.getParameter("amount");
String id =(String)session.getAttribute("id_no");




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loyal", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into telephone(id_no,Telephone_No,TEl_amount,Date)values("+id+","+tel+","+amount+",current_timestamp)");

RequestDispatcher dis= request.getRequestDispatcher("/pay.jsp");
dis.forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
