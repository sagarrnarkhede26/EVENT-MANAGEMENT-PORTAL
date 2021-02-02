<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	     <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Vendor Contact</title>
        <!-- CSS -->
		
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
		<link rel="stylesheet" href="<c:url value="/resources/css/assets/bootstrap/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href="<c:url value="/resources/css/assets/font-awesome/css/font-awesome.min.css"/>">
		<link rel="stylesheet" href="<c:url value="/resources/css/assets/css/form-elements.css"/>">
		<link rel="stylesheet" href="<c:url value="/resources/css/assets/css/style.css"/>">
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
	
	<nav class="navbar navbar-light bg-warning">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="<spring:url value='/client/home'/>">Home</a></li>
     
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


        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                	
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                                                       
                        </div>
                    </div>                   
                        <div class="col-sm-6 col-sm-offset-3 text">                        	
                        	<div class="form-box">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3 align="center">Vendor Contacts</h3>
	                            		<p align="center"></p>
	                        		</div>
	                        		
	                            </div>
	                            <div class="form-bottom">
				                    <form >
				                    	<h3>The Name of Vendor is ${requestScope.vendor_details.fname} ${requestScope.vendor_details.lname}</h3>
										<h3>The Contact no. of Vendor is ${requestScope.vendor_details.contactNo}</h3>
									</form>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>        
      
        <script src="/EVT/resources/css/assets/js/jquery-1.11.1.min.js"></script>
        <script src="/EVT/resources/css/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/EVT/resources/css/assets/js/jquery.backstretch.min.js"></script>
        <script src="/EVT/resources/css/assets/js/scripts.js"></script>        
  

</body>
</html>