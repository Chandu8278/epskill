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
<div id="button_of">
<a href="logout.jsp"><button onclick="myLogout()"  type="button" class="btn btn-info" >Log out</button></a>
            </div>
            &nbsp;&nbsp;
<%
try {
			
			Connection con = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
			
			PreparedStatement pstmt = con.prepareStatement("select * from employee where status='accepted'");
			
			ResultSet rs = pstmt.executeQuery();
			
			 out.println("<h2 align=center>Employee Records</h2>");
			
			out.println("<table align=center border='2'>");
			out.println("<tr bgcolor='lightblue'>");
			out.println("<th>Employee id</th>");			
			out.println("<th>Name</th>");	
			out.println("<th>Gender</th>");
			out.println("<th>Email</th>");
			out.println("<th>Password</th>");
			out.println("<th>Mobile</th>");
			out.println("<th>Category</th>");
			out.println("<th>Location</th>");
			out.println("</tr>");
			 
			while(rs.next()) {
				
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td>");
				out.println("<td>"+rs.getString(6)+"</td>");
				out.println("<td>"+rs.getString(7)+"</td>");
				out.println("<td>"+rs.getString(8)+"</td>");
			}
			out.println("</table>");
			
		}
		catch(Exception e) {
			out.println(e); 
		}
%>
</body>
</html>