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
String pwd = request.getParameter("password");
String phone = request.getParameter("phone");
String location = request.getParameter("location");


try
{
  
  Connection con = null;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  
  //tnsnames.oracle
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
PreparedStatement pstmt = con.prepareStatement(" insert into employee values(?,?,?,?,?,?,?) ");
int id = (int)(Math.random()*99999)+1;

pstmt.setInt(1,id);
pstmt.setString(2, name);
pstmt.setString(3, gender);
pstmt.setString(4, email);
pstmt.setString(5, pwd);
pstmt.setString(6, phone);
pstmt.setString(7, location);


int n=pstmt.executeUpdate();

if(n>0)
{
   
   %>
   
   <!--<jsp:include page="login.html"></jsp:include>-->
   <center><h1>Your Request is Sent to Admin </h1><br>
           <h2>Your Status will be updated soon</h2>   
   </center>
   <%
}
else
{
   out.println("Unable Register");

}

}
catch(Exception e)
{
  out.println(e);
}

%>
</body>
</html>