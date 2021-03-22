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
<a href="adminhome2.jsp">Home</a>
<a href="viewusers.jsp">view users</a>
<a href="viewemployee.jsp">view employees</a>
<a href="viewrequests.jsp">view requests</a>
<%
String eid = request.getParameter("empid");

try {
Connection con = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
int n = con.createStatement().executeUpdate("update employee set status='accepted' where empid="+eid+"");

if(n>0) {
	out.println("<h1>Employee is Added</h1>");
	
}

}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>