<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String pwd = request.getParameter("password");  
String cpwd = request.getParameter("cpassword");


try
{
  
  Connection con = null;
  Class.forName("oracle.jdbc.driver.OracleDriver");
  
  //tnsnames.oracle
  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
PreparedStatement pstmt = con.prepareStatement(" insert into registeruser values(?,?,?,?,?) ");
  

pstmt.setString(1, name);
pstmt.setString(2, email);
pstmt.setString(3, phone);
pstmt.setString(4, pwd);
pstmt.setString(5, cpwd);


int n=pstmt.executeUpdate();

if(n>0)
{
   
   %>
   
   <jsp:include page="login.html"></jsp:include>
   <center><h1>Your Registration is Successfull</h1></center>
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