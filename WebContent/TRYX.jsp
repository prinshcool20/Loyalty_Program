<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Records</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body><%String id =(String)session.getAttribute("id_no"); %>
  
  	
	
	<div class="limiter">
	Kiosks Id :-&nbsp;&nbsp;&nbsp;<%=id%>  
      <div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
				
					<div class="table100-head">
					<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ID</th>
									<th class="cell100 column2">LANDLINE</th>
									<th class="cell100 column3">AMOUNT</th>
									<th class="cell100 column4">DATE</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
 <%

String driverName5 = "com.mysql.jdbc.Driver";
String connectionUrl5 = "jdbc:mysql://localhost:3306/loyal";
String userId5 = "root";
String password5= "root";

try {
Class.forName(driverName5);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection5 ;
Statement statement5 = null;
ResultSet resultSet5 = null;

try{ 
connection5 = DriverManager.getConnection(connectionUrl5, userId5, password5);
statement5=connection5.createStatement();
String sql ="SELECT * FROM landline WHERE id_no="+id+"";


resultSet5 = statement5.executeQuery(sql);
while(resultSet5.next()){
	%>
		
								<tr class="row100 body">
									<td class="cell100 column1"><%=resultSet5.getString("id_no") %> </td>
									<td class="cell100 column2"><%=resultSet5.getString("Landline_No") %></td>&nbsp;&nbsp;
									<td class="cell100 column3"><%=resultSet5.getString("LL_amount") %></td>
									<td class="cell100 column4"><%=resultSet5.getString("Date") %></td>


								</tr><br>
								<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>

								
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ID</th>
									<th class="cell100 column2">DTH NO</th>
									<th class="cell100 column3">AMOUNT</th>
									<th class="cell100 column4">DATE</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								  <%

String driverName1 = "com.mysql.jdbc.Driver";
String connectionUrl1 = "jdbc:mysql://localhost:3306/loyal";
String userId1 = "root";
String password1 = "root";

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
String sql ="SELECT * FROM dth WHERE id_no="+id+" ";

resultSet1 = statement1.executeQuery(sql);
while(resultSet1.next()){
%>
									<tr class="row100 body">
									<td class="cell100 column1"><%=resultSet1.getString("id_no") %></td>
									<td class="cell100 column2"><%=resultSet1.getString("Customer_Id") %>&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td class="cell100 column3"><%=resultSet1.getString("DTH_amount") %></td>
									<td class="cell100 column4"><%=resultSet1.getString("Date") %></td>
									</tr><br>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>

								

								
							</tbody>
						</table>
					</div>
				</div>

				<div class="table100 ver3 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ID</th>
									<th class="cell100 column2">TELEPHONE NO</th>
									<th class="cell100 column3">AMOUNT</th>
									<th class="cell100 column4">DATE</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								
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

try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM telephone WHERE id_no="+id+" ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){%>
									<tr class="row100 body">
									<td class="cell100 column1"><%=resultSet.getString("id_no") %></td>
									<td class="cell100 column2"><%=resultSet.getString("Telephone_No") %></td>&nbsp;&nbsp;
									<td class="cell100 column3"><%=resultSet.getString("TEL_amount") %></td>
									<td class="cell100 column4"><%=resultSet.getString("Date") %></td>
									</tr><br>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

								

								
							</tbody>
						</table>
					</div>
				</div>

				<div class="table100 ver4 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ID</th>
									<th class="cell100 column2">DATA CARD</th>
									<th class="cell100 column3">AMOUNT</th>
									<th class="cell100 column4">DATE</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								
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

try{ 
connection2 = DriverManager.getConnection(connectionUrl, userId, password);
statement2=connection2.createStatement();
String sql ="SELECT * FROM datacard WHERE id_no="+id+" ";

resultSet2 = statement2.executeQuery(sql);
while(resultSet2.next()){%>
									<tr class="row100 body">
									<td class="cell100 column1"><%=resultSet2.getString("id_no") %></td>
									<td class="cell100 column2"><%=resultSet2.getString("Datacard_No") %></td>&nbsp;&nbsp;
									<td class="cell100 column3"><%=resultSet2.getString("DC_amount") %></td>
									<td class="cell100 column4"><%=resultSet2.getString("Date") %></td>
									</tr><br>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
								

							</tbody>
						</table>
					</div>
				</div>

				<div class="table100 ver5 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">ID</th>
									<th class="cell100 column2">BROADBAND</th>
									<th class="cell100 column3">AMOUNT</th>
									<th class="cell100 column4">DATE</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								
    	<%

String driverName4 = "com.mysql.jdbc.Driver";
String connectionUrl4 = "jdbc:mysql://localhost:3306/loyal";
String userId4 = "root";
String password4 = "root";

try {
Class.forName(driverName4);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection4 ;
Statement statement4 = null;
ResultSet resultSet4 = null;

try{ 
connection4 = DriverManager.getConnection(connectionUrl, userId, password);
statement4=connection4.createStatement();
String sql ="SELECT * FROM broadband WHERE id_no="+id+" ";

resultSet4 = statement4.executeQuery(sql);
while(resultSet4.next()){%>
									<tr class="row100 body">
									
									<td class="cell100 column1"><%=resultSet4.getString("id_no") %></td>
									<td class="cell100 column2"><%=resultSet4.getString("Broadband_No") %></td>&nbsp;&nbsp;
									<td class="cell100 column3"><%=resultSet4.getString("BB_amount") %></td>
									<td class="cell100 column4"><%=resultSet4.getString("Date") %></td>
									</tr></br>
<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>									
								

								
							</tbody>
						</table>
						



					</div>
				</div>
			</div>
		</div>
	</div>


<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<a href="remark.jsp"><center><input type="button" value="REMARK"></center></a>
</body>
</html>