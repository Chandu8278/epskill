<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String useremail = request.getParameter("useremail");
String empemail= request.getParameter("empemail");

try
{
	Connection con = null;
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  
	  //tnsnames.oracle
	  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
	PreparedStatement pstmt1 = con.prepareStatement(" select * from requests where useremail=? and empemail=? and status!=? ");
	pstmt1.setString(1, useremail);
	pstmt1.setString(2, empemail);
	pstmt1.setString(3,"complted");
	ResultSet rs = pstmt1.executeQuery();
	if(!rs.next()){
  
PreparedStatement pstmt = con.prepareStatement(" insert into requests values(?,?,?) ");
  

pstmt.setString(1, useremail);
pstmt.setString(2, empemail);
pstmt.setString(3,"pending");


int n=pstmt.executeUpdate();

if(n>0)
{
    
	 %>
	  <h1>Your Request is in Process</h1>
	  
	  
	 <%
   
}
else
{
   out.println("Something went wrong");

}
	}
	else
	{
		out.println("<h1>Your Request is Accepted</h1>");
		%>
		<a href="../checkout/index.html">Continue to Payment</a>
		<%
		
		
	}

}
catch(Exception e)
{
   out.println(e);
}

%>
</body>
</html>