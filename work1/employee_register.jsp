<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Register</title>

</head>
<body>
<%
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String mob = request.getParameter("mob");
String dept = request.getParameter("dept");
String loc = request.getParameter("loc");
String status = "not_accepted";
double rating = 0;
int id = (int)(Math.random()*99999)+1;

try
{
  
  Connection con = null;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  
  //tnsnames.oracle
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
PreparedStatement pstmt = con.prepareStatement(" insert into employee values(?,?,?,?,?,?,?,?,?,?) ");
  
pstmt.setInt(1, id);
pstmt.setString(2, name);
pstmt.setString(3, gender);
pstmt.setString(4, email);
pstmt.setString(5, pwd);
pstmt.setString(6, mob);
pstmt.setString(7, dept);
pstmt.setString(8, loc);
pstmt.setString(9,status);
pstmt.setDouble(10,rating);
int n=pstmt.executeUpdate();
//at a time only one record is inserted so, n=1
if(n>0)
{
  
  %>
  <h1>Your Registration is Successfull</h1>
  <a href="statusbyid.jsp">View Status</a>
  <% 
}
else
{
   out.println("Unable to Register");

}

}
catch(Exception e)
{
  out.println(e);
}


%>
</body>
</html>