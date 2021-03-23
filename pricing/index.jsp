<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Pricing </title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/pricing/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    

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
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="pricing.css" rel="stylesheet">
  </head>
  <body>
    <%
    String useremail = request.getParameter("useremail");
    String empemail = request.getParameter("empemail");
    %>
<header class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
 
 
  <p class="h5 my-0 me-md-auto fw-normal" >Share Your Knowledge</p>
  <nav class="my-2 my-md-0 me-md-3">
    <a class="p-2 text-dark" href="../work\home1.jsp">Home</a>
    <a class="p-2 text-dark" href="../work\about.html">About</a>
    
  </nav>
  
</header>
<center>
<img src="../work/sky2.png"/>
</center>
<main class="container">
  <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Pricing</h1>
    <p class="lead">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p>
  </div>
 
  <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
    <div class="col">
      <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 fw-normal">Free</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">0 <small class="text-muted"></small></h1>
        <ul class="list-unstyled mt-3 mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
          </svg>
        </ul>
        <button type="button" class="w-100 btn btn-lg btn-outline-primary" onclick="window.location.href='processing.jsp?useremail=<%=useremail %>&empemail=<%=empemail%>'">Demo for free</button>
      </div>
    </div>
    </div>
    <div class="col">
      <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 fw-normal">Hourly</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">99 <small class="text-muted">/ hour</small></h1>
        <ul class="list-unstyled mt-3 mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
          </svg>
        </ul>
        <button type="button" class="w-100 btn btn-lg btn-primary" onclick="window.location.href='processing.jsp?useremail=<%=useremail %>&empemail=<%=empemail%>'">Book Now</button>
      </div>
    </div>
    </div>
    <div class="col">
      <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 fw-normal">Monthly</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">1999 <small class="text-muted">month</small></h1>
        <ul class="list-unstyled mt-3 mb-4">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
          </svg>
        </ul>
        <button type="button" class="w-100 btn btn-lg btn-primary" onclick="window.location.href='processing.jsp?useremail=<%=useremail %>&empemail=<%=empemail%>'">Book Now</button>
      </div>
    </div>
    </div>
  </div>

  
</main>


    
  </body>
</html>
    