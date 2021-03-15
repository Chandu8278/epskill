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
String eid = request.getParameter("empid");
out.println(eid);
try {
Connection con = null;

Class.forName("oracle.jdbc.driver.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
int n = con.createStatement().executeUpdate("update employee set status='accepted' where empid="+eid+"");

if(n>0) {
	response.sendRedirect("viewrequests2.jsp");
}

}
catch(Exception e) {
	out.println(e);
}
%>
</body>
</html>