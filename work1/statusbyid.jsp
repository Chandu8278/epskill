<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 h2{
          color:red;
          text-align:center;
          }
        body{
        background-color:black;
        color:white;
        }
       
</style>
</head>
<body>
<h1 id="mainhead" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;Share Your Knowledge</h1>
<br><br>
<h2 id="mainhead" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;Check your status by providing your email below</h2>
       <center> <form id="loginform" action="employeestatus.jsp" method="post">
          <br><br>
           Enter Email<br><br>
           <input type="text" name="email" required><br>
           
           <br><br><br><br>
        
           
           
           <input id="submit" type="submit" name="submit"><br><br>
           <a id="endtext" href="employee_register.html">Don't have an account? click here</a>
        </form></center>
</body>
</html>