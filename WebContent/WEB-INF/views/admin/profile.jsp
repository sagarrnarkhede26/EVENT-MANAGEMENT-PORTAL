<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	 
<!DOCTYPE html>
<html>
<meta charset="utf-8">
		<title>Admin-Profile</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="<c:url value="/resources/css/prof.css"/>">
 <style>
			.bg {
 background-image: url('/EVT/resources/css/loginimg.jpg');
  height: 100%; 
  background-repeat: no-repeat;
  background-size: cover;
}</style>
</head>
<body class="bg">
<nav class="navbar navbar-light bg-warning " >
  <div class="container-fluid">
    
   <ul class="nav navbar-nav">
      <li class="active"><a href="<spring:url value='/admin/home'/>">Home</a></li>  
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="<spring:url value='/admin/profile'/>"><span class="glyphicon glyphicon-user"></span>Profile</a></li>

      <li><a href="<spring:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
	    
    </ul>
  </div>
</nav>

<h2 style="text-align:center">Admin-Profile</h2>

<div class="card">
<div style="background-color:";>
  <img src="/EVT/resources/css/profileimage.png" alt="ram" style="width:50%">
  <h1  style="background-color:DodgerBlue;">${requestScope.admin_profile.fname} ${requestScope.admin_profile.lname}</h1>
  </div>
  <!-- <p class="title">${requestScope.client_profile.fname} ${requestScope.client_profile.lname}</p> -->
  <h3  style="background-color:DodgerBlue;">Email:${requestScope.admin_profile.email}</h3>
  <h3  style="background-color:DodgerBlue;">Contact Number:${requestScope.admin_profile.contactNo}</h3>
  <h3  style="background-color:DodgerBlue;">Date Of Birth:${requestScope.admin_profile.dob}</h3>
<h3  style="background-color:DodgerBlue;">Gender:${requestScope.admin_profile.gender}</h3>
<h3  style="background-color:DodgerBlue;">Role:${requestScope.admin_profile.role}</h3>
  <div style="margin: 24px 0;">
    <a href="#"><i class="fa fa-dribbble"></i></a> 
    <a href="#"><i class="fa fa-twitter"></i></a>  
    <a href="#"><i class="fa fa-linkedin"></i></a>  
    <a href="#"><i class="fa fa-facebook"></i></a> 
  </div>
  <p><button>Contact</button></p>
</div>

</body>
</html>
