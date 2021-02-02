<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
     <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	 
<!DOCTYPE html>
<html>
<meta charset="utf-8">
		<title>Vendor Profile</title>
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
      <li class="active"><a href="<spring:url value='/vendor/home'/>">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Events<span class="caret"></span></a>
        <ul class="dropdown-menu">
			<li><a href="<spring:url value='/vendor/eventList'/>">See the Events Posted</a></li>
			<li><a href="<spring:url value='/vendor/replies'/>">Offered bid Info</a></</li>
         
        </ul>
      </li>
  
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="<spring:url value='/vendor/profile'/>"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
	<li><a href="#">About us</a></li>
      <li><a href="<spring:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
	    
    </ul>
  </div>
</nav>

<h2 style="text-align:center">Vendor Profile</h2>

<div class="card">
<div style="background-color: ";>
  <img src="/EVT/resources/css/profileimage.png" alt="" style="width:50%">
  <h1 style="background-color:DodgerBlue;">${requestScope.vendor_profile.fname} ${requestScope.vendor_profile.lname}</h1>
  </div>
  <!-- <p class="title">${requestScope.client_profile.fname} ${requestScope.client_profile.lname}</p> -->
  <h3 style="background-color:DodgerBlue;">Email:${requestScope.vendor_profile.email}</h3>
  <h3 style="background-color:DodgerBlue;">Contact Number:${requestScope.vendor_profile.contactNo}</h3>
  <h3 style="background-color:DodgerBlue;">Date Of Birth:${requestScope.vendor_profile.dob}</h3>
<h3 style="background-color:DodgerBlue;">Gender:${requestScope.vendor_profile.gender}</h3>
<h3 style="background-color:DodgerBlue;">Role:${requestScope.vendor_profile.role}</h3>
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
