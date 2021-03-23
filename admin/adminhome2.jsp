<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin home</title>
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
<%
String email = (String)session.getAttribute("email");
if(email!=null){
	%>

<h1>Share Your Knowledge</h1>

<div>
<a href="adminhome2.jsp">Home</a>
<a href="viewusers.jsp">view users</a>
<a href="viewemployee.jsp">view employees</a>
<a href="viewrequests.jsp">view requests</a>
<a href="logout.jsp"><button onclick="myLogout()"  type="button" class="btn btn-info" >Log out</button></a>
</div>
<br>
<center>
<img src="admin.jpg" width="95%">
</center>
<script>
        function myLogout(){
        	alert("You are being Loged out");
        }
        </script>
        <% }
else
{
	response.sendRedirect("adminlogin.html");
}
%>
</body>

</html>