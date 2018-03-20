<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
    <HEAD>
        <TITLE>Reading Radio Buttons</TITLE>
    </HEAD>

    <BODY>
        <H1>Reading Radio Buttons</H1>
        
        <%String id_no= request.getParameter("id_no");%>
        
        
       <%session.setAttribute("id_no", id_no); %> 
 	 
        <%
            if(request.getParameter("radios") != null) {
                if(request.getParameter("radios").equals("telephone")) {
                	RequestDispatcher dis= request.getRequestDispatcher("/telephone.jsp");
                	dis.forward(request, response);
                }
                else {
                    out.println("Radio button 1 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("broadband")) {
                    RequestDispatcher dis= request.getRequestDispatcher("/broadband.jsp");
                	dis.forward(request, response);
                }
                else {
                    out.println("Radio button 2 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("landline")) {
                	RequestDispatcher dis= request.getRequestDispatcher("/landline.jsp");
                	dis.forward(request, response);
                }
                else {
                    out.println("Radio button 3 was not selected.<BR>");
                }
                if(request.getParameter("radios").equals("datacard")) {
                	RequestDispatcher dis= request.getRequestDispatcher("/datacard.jsp");
                	dis.forward(request, response);
                }
                else {
                    out.println("Radio button 3 was not selected.<BR>");
                }if(request.getParameter("radios").equals("dth")) {
                	
                	RequestDispatcher dis= request.getRequestDispatcher("/dth.jsp");
                	dis.forward(request, response);
                  
                }
                else {
                    out.println("Radio button 3 was not selected.<BR>");
                }
            }
            else{
            	 RequestDispatcher dis= request.getRequestDispatcher("/TRYX.jsp");
             	dis.forward(request, response);
            }
        %>
    </BODY>
</HTML>
           
       