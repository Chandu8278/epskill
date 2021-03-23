<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:black;
color:red;
}
h1{
text-align:center;
}
a{
text-decoration:none;
padding:10px;
color:red;
}
td
{
color:white;
}
h2
{
color:grey;
}
</style>
</head>
<body>
<h1>Share Your Knowledge</h1>

<%
String useremail = request.getParameter("useremail");
String empemail = request.getParameter("empemail");

try {
Connection con = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
PreparedStatement pstmt = con.prepareStatement("update requests set status='booked' where useremail=? and empemail=?");
pstmt.setString(1, useremail);
pstmt.setString(2, empemail);
int n = pstmt.executeUpdate();
if(n>0) {
	out.println("<h1>User Request is Accepted</h1>");
	
}

}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>