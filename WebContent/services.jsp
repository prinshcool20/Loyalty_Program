<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="UTF-8">
	<title>Services Provided</title>
	<link rel="stylesheet" href="style.css" type="text/css">
	 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
   
<style>
    ul {
        display:block;
        background:#45619D;
        list-style:none;
        margin:0;
        padding:12px 10px;
        height:21px;
    }
    ul li {
        float:left;
        font:13px helvetica;
        font-weight:bold;
        margin:3px 0;
    }
    ul li a {
        color:#FFF;
        text-decoration:none;
        padding:6px 15px;
        cursor:pointer;
    }
    ul li a:hover {
        background:#425B90;
        text-decoration:none;
        cursor:pointer;
    }
        
    #noti_Container {
        position:relative;
    }
       
    /* A CIRCLE LIKE BUTTON IN THE TOP MENU. */
    #noti_Button {
        width:22px;
        height:22px;
        line-height:22px;
        border-radius:50%;
        -moz-border-radius:50%; 
        -webkit-border-radius:50%;
        background:#FFF;
        margin:-3px 10px 0 10px;
        cursor:pointer;
    }
        
    /* THE POPULAR RED NOTIFICATIONS COUNTER. */
    #noti_Counter {
        display:block;
        position:absolute;
        background:#E1141E;
        color:#FFF;
        font-size:12px;
        font-weight:normal;
        padding:1px 3px;
        margin:-8px 0 0 25px;
        border-radius:2px;
        -moz-border-radius:2px; 
        -webkit-border-radius:2px;
        z-index:1;
    }
        
    /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
    #notifications {
        display:none;
        width:430px;
        position:absolute;
        top:30px;
        left:0;
        background:#FFF;
        border:solid 1px rgba(100, 100, 100, .20);
        -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);
        z-index: 0;
    }
    /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
    #notifications:before {         
        content: '';
        display:block;
        width:0;
        height:0;
        color:transparent;
        border:10px solid #CCC;
        border-color:transparent transparent #FFF;
        margin-top:-20px;
        margin-left:10px;
    }
        
    h3 {
        display:block;
        color:#333; 
        background:#FFF;
        font-weight:bold;
        font-size:13px;    
        padding:8px;
        margin:0;
        border-bottom:solid 1px rgba(100, 100, 100, .30);
    }
        
    .seeAll {
        background:#F6F7F8;
        padding:8px;
        font-size:12px;
        font-weight:bold;
        border-top:solid 1px rgba(100, 100, 100, .30);
        text-align:center;
    }
    .seeAll a {
        color:#3b5998;
    }
    .seeAll a:hover {
        background:#F6F7F8;
        color:#3b5998;
        text-decoration:underline;
    }
</style>


<script>
    $(document).ready(function () {

        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
        $('#noti_Counter')
            .css({ opacity: 0 })
            .text('*')              // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);

        $('#noti_Button').click(function () {

            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
            $('#notifications').fadeToggle('fast', 'linear', function () {
                if ($('#notifications').is(':hidden')) {
                    $('#noti_Button').css('background-color', '#2E467C');
                }
                else $('#noti_Button').css('background-color', '#FFF');        // CHANGE BACKGROUND COLOR OF THE BUTTON.
            });

            $('#noti_Counter').fadeOut('slow');                 // HIDE THE COUNTER.

            return false;
        });

        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
        $(document).click(function () {
            $('#notifications').hide();

            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
            if ($('#noti_Counter').is(':hidden')) {
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                $('#noti_Button').css('background-color', '#2E467C');
            }
        });

        $('#notifications').click(function () {
            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
        });
    });
</script>

    </head>

<body background="bgpic.jpg">

<% String id=(String)session.getAttribute("id_no");%>	



 <div>
        <ul><li><a href="index.jsp">HOME</a></li>
            <li>Notification</li>
            <li id="noti_Container">
                <div id="noti_Counter"></div>   <!--SHOW NOTIFICATIONS COUNT.-->
                
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"></div>    

                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <div id="notifications">
                    <h3>Notifications</h3>
                    
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
String sql ="SELECT date,remark FROM remark WHERE id="+id+"  ";


resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div>

<div><%= resultSet.getString("date")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=resultSet.getString("remark") %></div>
<br>

</div>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
                    
                    
                    
                    <div style="height:300px;">
                    
                    
                    </div>
                    <div class="seeAll"><a href="#">See All</a></div>
                </div>
            </li>
            <li>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <a href="LogoutServlet"><input type="button"value="LogOut"></a></li>
        </ul>
    </div>
</body>
<br>






		<div id="page">
			<div id="header">
		
				<div id="logo">
					<a href="services.jsp"><img src="emitra.png" alt="LOGO" height="112" width="118"></a>
				</div>
				<div id="logo1">
					<a href="services.jsp"><img src="logo2.png" alt="LOGO" height="112" width="118"></a>
				</div>
				
			
				
				
				<div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="+5" color="#FBFBFB" >Government of Rajasthan <br></font>
				<font size="+3" color="#FBFBFB" >Department of Information & Communication</font>
				</div>
				
				<div id="navigation">
				
					<center><u><font size="+3" color="#000000">SERVICES PROVIDED BY US</font></u></center>	
				</div>
				
				
				
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="contact" class="body">
							<table align="center" border="2" bgcolor="" cellpadding="50" cellspacing="50">
								<tbody>
									<tr height="200">
										<td width="*" ><center><a href="recharge.jsp">ONLINE RECHARGE</a></center></td>
										<td width="*" ><center><u>DRIVING LICENCE</u></center></td>
									</tr>
									<tr height="200">
										<td  width="*" ><center><u>BHAMASHAH CARD</u></center></td>
										<td  width="*" ><center><u>CAST CERTIFICATE</u></center></td>
									</tr>
									<tr height="200">
										<td width="*" ><center><u>RESIDENCE CERTIFICATE</u></center></td>
										<td width="*"><center><u>PASSPORT CONSULTANT</u></center></td>
									</tr>
									
								</tbody>
							</table>
								
						</div>
					</div>
				</div>
			</div>
		</div>
		
</body>
</html>
