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
       String email = request.getParameter("u");
		String pwd = request.getParameter("pwd");
		
		try {
			Connection con = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
            PreparedStatement pstmt = con.prepareStatement("select email,password from employee where email=? and password=?");
            pstmt.setString(1,email);
            pstmt.setString(2,pwd);
			
			ResultSet rs = pstmt.executeQuery(); 
			
             if(rs.next()==true) {
            	 
            	 
            	 out.println("<h1 align:center>Login Successfull</h1>");
            	 
            	 session.setAttribute("email",email);
            	 
            	 response.sendRedirect("employeehome.jsp");
             }
             
             
		   
		   else 
           {
             response.sendRedirect("register2.html");
           }
			
             
		}
		catch(Exception e) {
			out.println(e);
		}
		%>
</body>
</html>