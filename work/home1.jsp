<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <head>
        <title>Home</title>

      
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>
        body{
        background-color:black;
        color:white;
        }
        .card-title,.card-text{
        color:black;
        }
        #mainhead{
    color: brown;
    text-align: center;
    color:red;
}
#menubar a:hover{
   background-color: black;
   color: cornsilk;
    
}
#menubar{
    
    color:black;
}
.select_page{
    background-color:transparent;
    color:rgb(221, 34, 34);
    padding: 5px;
    border:1px solid #fff;
  } 
  .right-menu{
    position: relative;
    display: inline-block;
  }
  .dropdown-menu{
    display: none;
    position: absolute;
    background-color: #c52c2c;
    min-width:158px;
    z-index: 1;
  }
  .dropdown-menu a{
    color: black;
    padding: 12px 6px;
    text-decoration: none;
    display: block;
  }
  .dropdown-menu a:hover{
    background-color: black;
    color: #fff;
  }
  .right-menu:hover .dropdown-menu{
    display: block;
  }
  .right-menu:hover .menu-button{
    background-color: transparent;
  }
        
        </style>

    </head>
    <style>
    
    </style>
    <body>
    <% 
    String email = (String)session.getAttribute("email");
    String pwd = (String)session.getAttribute("pwd");
    
    if(email!=null && pwd!=null){
    %>
    


    <header>
      
        
        <nav class="navbar navbar-expand-lg navbar-light bg-info" >
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <ul class="navbar-nav mr-auto">
              

              <li class="nav-item active">
                <a class="nav-link" href="home1.jsp" style="color: black;">Home <span class="sr-only"></span></a>
              </li>
              
            </ul>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="right-menu">
              <button class="select_page"style="color: black;">Checkout !</button>
              <div class="dropdown-menu">
                  <a href="../carousel/index.html">Home Tutor</a>
                  <a href="../carousel/gym_trainer.html">Gym Trainer</a>
                  <a href="../carousel/sports_tutor.html">Sports Coach</a>
                  <a href="../carousel/yoga_tutor.html">Yoga Master</a>
              </div>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div id="button_of">
              <a href="logout.jsp"><button onclick="myLogout()"  type="button" class="btn btn-danger" >Log out</button></a>
            </div>
            &nbsp;&nbsp;
            <div id="button_of">
              <a href="profile.jsp"><button  type="button" class="btn btn-danger" >Profile</button></a>
            </div>
            
          </div>
        </nav>

    </header>
    <h1 id="mainhead" style="text-align: center;">Share Your Knowledge</h1>
    <center>
      <img src="sky2.png"  height="175px" width="175px" style="border-radius: 50px;">
    <div id="home_matter">
    <%
    try {
		Connection con = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
        PreparedStatement pstmt = con.prepareStatement("select name from registeruser where email=?");
        pstmt.setString(1,email);
		
		ResultSet rs = pstmt.executeQuery(); 
		if(rs.next()!=true){}
		
	
    
    
    %>
    
         <br>
         <h1> Welcome To Our Website, <u><%= rs.getString(1)%></u> :)</h1><br>
         <p style="font-size: 1.2em;">Are you Facing any problem in finding some tutors.I think it's enough for to search for them around here and there.</p>
         <p style="font-size: 1.2em;">You can simply visit our website and Find some tutors you want.</p>
         <p>What are you waiting for if you are not Login or Register Then go on register from the below links.</p>
         <br>
         <!--
         <div id="button_of">
          <a href="register.html"><button type="button" class="btn btn-secondary">Register</button></a>
          <a href="login.html"><button  type="button" class="btn btn-danger" >Login</button></a>
        </div>
    -->
    </div>
  </center>
<%}
	catch(Exception e) {
		out.println(e);
	} %>
  <center>
    <div class="row row-cols-1 row-cols-md-3" style="padding: 20px;">
      <div class="col mb-4" style="">
        <div class="card h-100">
          <img src="yoga.jpg" class="card-img-top" alt="yoga Tutor" style="height: 320px;">
          <div class="card-body">
            <h5 class="card-title">Yoga Tutor</h5>
            <p class="card-text">A yogi is a practitioner of yoga, including a sannyasin or practitioner of meditation in Indian religions. The feminine form, sometimes used in English, is yogini.</p>
            <p>Are you feeling depressed and disturbed then you can contact a yoga trainer near you in a single click</p>
            <a href="../carousel\yoga_tutor.html" class="btn btn-primary">Click Here</a>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card h-100">
          <img src="gym1.jpg" class="card-img-top" alt="Gym" style="height: 320px;">
          <div class="card-body">
            <h5 class="card-title">Gym Trainer</h5>
            <p class="card-text">GYM Trainer is an application of Fitness and Bodybuilding that, in addition to consult exercises, diets, healthy recipes, workouts, you can create your own, upload them to the net, consult the workouts of other users and save them.</p>
            <a href="../carousel\gym_trainer.html" class="btn btn-primary">Click Here</a>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card h-100">
          <img src="sports1.jpg" class="card-img-top" alt="Sports Tutor" style="height: 320px;">
          <div class="card-body">
            <h5 class="card-title">Sports Tutor</h5>
            <p class="card-text">Sports Tutor is a self-paced learning portal for everyone involved in the play, active recreation and sport sector.
            Sports coaches train and coach amateur and professional athletes.As a sports coach, you'll ensure the physical and mental wellbeing of the athletes you work with.</p>
            <a href="../carousel\sports_tutor.html" class="btn btn-primary">Click Here</a>
          </div>
        </div>
      </div>
      <div class="col mb-4">
        <div class="card h-100">
          <img src="homeimg1.jpg" class="card-img-top" alt="Home Tutor" style="height: 320px;">
          <div class="card-body">
            <h5 class="card-title">Home Tutor</h5>
            <p class="card-text">We help students and tutors find each other. Students can find tutors for all subjects and tutors can find home tuition needs posted by students.Home tutoring experts available offering several tuition classes and courses.</p>
            <p>Waiting for what ? Go on and Signup ?</p>
            <a href="../carousel\index.html" class="btn btn-primary">Click Here</a>
          </div>
        </div>
      </div>
      
    
    </div>
  </center>
  <% }
    else{
    	response.sendRedirect("login.html");
    }
    %>
    <script>
        function myLogout(){
        	alert("You are being Loged out");
        }
        </script>
    </body>
</html>