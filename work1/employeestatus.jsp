<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>employeestatus</title>
<style>
            
          h2{
          color:red;
          text-align:center;
          }
        body{
        background-color:black;
        color:white;
        }
       
        </style>
</head>
<body>
<%
String email = request.getParameter("email");
out.println(email);
try {
Connection con = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
PreparedStatement pstmt = con.prepareStatement("select status from employee where email=?");
pstmt.setString(1,email);
ResultSet rs = pstmt.executeQuery();

if(rs.next()==true) {
	if(rs.getString(1).equals("accepted"))	
	{
		%>
		<h1>Congratulations</h1>
		<h1>You Response is Accepted Now you are part of Share Your Knowledge</h1>
		<%
	}
	else
	{
		%>
		<h1>Please be patient</h1>
		<h1>You Response is Pending and status will be Updated Soon</h1>
		<%
	}
}
else
{
	out.println("<center>Your Record is not found<center><br>");
	out.println("<a href='employee_register.html'>Register</a>");
}

}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>