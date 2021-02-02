<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html lang="en">
<head>
   <link rel="stylesheet" href="<c:url value="/resources/css/abc.css"/>">
  <title>Client-Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
      <li class="active"><a href="<spring:url value='/client/home'/>">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Events<span class="caret"></span></a>
        <ul class="dropdown-menu">
			<li><a href="<spring:url value='/client/event'/>">Post An Event</a></li>
			<li><a href="<spring:url value='/client/info'/>">Posted Event Information</a></li>
			
         
        </ul>
      </li>
  
    </ul>
    <ul class="nav navbar-nav navbar-right">
   <li><a href="<spring:url value='/client/profile'/>"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
	<li><a href="#">About us</a></li>
      <li><a href="<spring:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
	    
    </ul>
  </div>
</nav>
<div align="center">
  <h1 style="color:white;"> Client Dashboard</h1>
  <p style="color:white;">Events Makes People Unites</p> 
  
  <br>
   <br>
    <br>
     <br>

<a href="<spring:url value='/client/event'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Post An Event</a>
  <a href="<spring:url value='/client/info'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Posted Event Information</a>
</div>
<!-- <c:if test="${requestScope.event != null}"> -->
<!-- <h5 align="center">Last Action Status : ${requestScope.event}</h5> -->
<!-- </c:if> -->




</body>
</html>