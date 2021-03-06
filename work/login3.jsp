<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <head>
        <title>Home</title>
        <link href="styles1.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

        <script>
            function myFunction() {
                  var x = document.getElementById("myInput");
                  if (x.type === "password") {
                      x.type = "text";
                  } else {
                    x.type = "password";
                 }
            }
            </script>
    </head>
    <style>
        #loginform{
            
            margin: 5% 35%;
           
            
        }
        h2{
            margin-left: 45%;
        }
        input{
            margin-left: 35%;
            padding: 5px;
            margin-top: 25px;
            font-size: 1em;
            border: 2px solid black;
        }
        #submit{
            margin-left: 48%;
            color: black;
            background-color:grey;
            padding: 10px;
            border-radius: 25px;
        }
         #endtext{
            margin-left: 23%;
            padding: 15px;
            text-decoration: none;
            color:black;
        }
        #endtext:hover{
            font-size:1.1em;
        }
    </style>
    <body>
        <header>
      
        
            <nav class="navbar navbar-expand-lg navbar-light bg-info" >
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  
                  <li class="nav-item active">
                    <a class="nav-link" href="about.html">How It Works? <span class="sr-only"></span></a>
                  </li>
                  
                </ul>
                
                  &nbsp;&nbsp;
                <div id="button_of" style="text-align: right;">
                    <a href="register.html"><button type="button" class="btn btn-secondary">Register</button></a>
                    <a href="login.html"><button  type="button" class="btn btn-danger" >Login</button></a>
                </div>
                
              </div>
            </nav>
    
        </header>
        <% String email = request.getParameter("email"); %>
        <h1 id="mainhead" style="text-align: center;">&nbsp;&nbsp;&nbsp;Share Your Knowledge</h1>
        <br><br>
        <h2 style="margin-left:550px;">&nbsp;&nbsp;&nbsp;Change Your Password</h2>
        <form id="loginform" action="updatepwd.jsp">
           
           <input type="text" name="u" value=<%=email %>><br>
           <input type="password" name="pwd" placeholder="Enter New Password" id="myInput" required><br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" onclick="myFunction()" >Show Password<br>
           <input id="submit" type="submit" name="submit"><br><br>
           <a id="endtext" href="register.html">Don't have an account? click here</a>
        </form>
    </body>
</html>