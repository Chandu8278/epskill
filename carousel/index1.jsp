<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Home Tutor</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">

    

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
        td,th{
        padding:20px;
        }
        #txt{
        width:500px;
        border-radius:10px;
        }
        form{
        float:left;
        }
        butoon{
        
        float:left;
        }
        
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<header>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Home Tutor</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="../work/home1.jsp">Home</a><!--Changed-->
          </li>
          
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="#">Profile</a><!--Changed-->
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
</header>

<main>

  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
      <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
      <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
      <li data-bs-target="#myCarousel" data-bs-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="70%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" /><img src="../work/home_tutor_09.png"></svg>

      </div>
      <div class="carousel-item">
        <svg  class="bd-placeholder-img" width="70%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" /><img src="../work/home_tutor_03.jfif"></svg>

        
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="70%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" /><img src="../work/home_tutor_04.jfif"></svg>

        
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </a>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/cource_1.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/cource_3.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/comment_2.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <div class="row">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/comment_3.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/comment_1.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><img  src="../work/cource_2.png" width="150px" height="150px" style="border-radius: 100px; margin-left:-120px;"></svg>

        <h2>Name</h2>
        <p>Details</p>
        <p><a class="btn btn-secondary" href="../pricing/index.html" role="button">Book Now! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->
    <hr class="featurette-divider">
    <form action="index.jsp" method="post">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="txt" type="text" name="searchname" placeholder="Enter Location/Name">
    <input type="submit" value="Search">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </form>
    <button onclick="location.href = 'index1.jsp';">SortByLocation</button>
    <button>SortByRating</button>
    <%
try {
	
			String variable =  request.getParameter("searchname");
			String srt = request.getParameter("sort");
			Connection con = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","project","project");
			PreparedStatement pstmt;
			pstmt = con.prepareStatement("select * from employee where status='accepted' order by location");
			
			ResultSet rs = pstmt.executeQuery();
			
			 out.println("<h2 align=center></h2>");
			
			out.println("<table align=center>");
			out.println("<tr bgcolor='lightblue'>");
			out.println("<th>Employee id</th>");			
			out.println("<th>Name</th>");	
			out.println("<th>Gender</th>");
			out.println("<th>Email</th>");
		
			out.println("<th>Mobile</th>");
			
			out.println("<th>Location</th>");
			out.println("<th>Book Now</th>");
			out.println("</tr>");
			 
			while(rs.next()) {
				
				out.println("<tr table='1'>");
				out.println("<td>"+rs.getString(1)+"</td>");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("<td>"+rs.getString(4)+"</td>");
				
				out.println("<td>"+rs.getString(6)+"</td>");
			
				out.println("<td>"+rs.getString(8)+"</td>");
				out.println("<td><a href='../pricing/index.html'>Book Now</a></td>");
			}
			out.println("</table>");
			
		}
		catch(Exception e) {
			out.println(e); 
		}
%>
    
   <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>   
  </body>
</html>
