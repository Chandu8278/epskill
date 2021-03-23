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

</style>
</head>
<body>
<h1>Share Your Knowledge</h1>

<a href="employeehome.jsp">Home</a>
<a href="acceptuser.jsp">view Requests</a>

<a href="logout.jsp"><button onclick="myLogout()"  type="button" class="btn btn-info" >Log out</button></a>
<%
try {
	
	String email = (String)session.getAttribute("email");
			if(email!=null){
			Connection con = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
			
			PreparedStatement pstmt = con.prepareStatement("select * from requests where status='pending' and empemail=?");
			pstmt.setString(1,email);
			ResultSet rs = pstmt.executeQuery();
			
			 out.println("<h2 align=center>Employee Requests</h2>");
			
			out.println("<table align=center border='2'>");
			out.println("<tr bgcolor='lightblue'>");
						
			out.println("<th>Name</th>");	
			
			out.println("<th>Action</th>");
			out.println("</tr>");
			 
			while(rs.next()) {
				
				out.println("<tr>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td><a href='acceptuser.jsp?useremail="+rs.getString(1)+"&empemail="+rs.getString(2)+"'>Accept</a></td>");				out.println("</tr>");
			}
			out.println("</table>");
			
			}
			else
			{
				response.sendRedirect("login.html");
			}
		}
		catch(Exception e) {
			out.println(e); 
		}

%>
</body>
</html>