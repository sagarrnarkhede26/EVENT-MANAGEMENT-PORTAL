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
        <title>Post Event</title>
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
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Events<span class="caret"></span></a>
        <ul class="dropdown-menu">
			<li><a href="<spring:url value='/client/event'/>">Post An Event</a></li>
			<li><a href="<spring:url value='/client/info'/>">Posted Event Information</a></li>
		
         
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="<spring:url value='/client/profile'/>"><span class="glyphicon glyphicon-user"></span>Profile</a></li>
     
      <li><a href="<spring:url value='/user/logout'/>"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
	    <li><a href="#">About us</a></li>
    </ul>
  </div>
</nav>

<div align="center">
  <br>
   <br>
    <br>
     <br>

<a href="<spring:url value='/client/event'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Post An Event</a>
  <a href="<spring:url value='/client/info'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Posted Event Information</a>
</div>
<c:if test="${requestScope.event != null}">
<h5 align="center">Last Action Status : ${requestScope.event}</h5>
</c:if>
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
	                        			<h3 align="center">Post An Event</h3>
	                            		<p align="center">Enter Event Details</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<!-- <i class="fa fa-lock"></i> -->
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <form  method="post" class="login-form">
				                    	<div class="form-group">
				                    		<label class="" for="form-username">Title</label>
				                        	<input type="text" name="title" placeholder="Title" class="form-username form-control" id="title">
				                        </div>
				                          
								<div class="form-group">
							  <label for="exampleFormControlSelect1">Event Type</label>
									<select class="form-control" id="eventType" name="eventType">
										<option>Event Type</option>
										<option>Weeding Event</option>
										<option>Conference</option>
										<option>Local</option>
									</select>
								</div>
										 
										
										<div class="form-group">
				                    		<label class="" for="form-username">City</label>
				                        	<input type="text" name="eventCity" placeholder="City" class="form-username form-control" id="eventCity">
				                        </div>
										<div class="form-group">
				                        	<label class="" for="form-password">Date</label>
				                        	<input type="date" name="eventDate" placeholder="Date" class="form-username form-control" id="eventDate">
				                        </div>
				                        <div class="form-group">
				                        	<label class="" for="form-password">Budget</label>
				                        	<input type="text" name="eventBudget" placeholder="Budget" class="form-username form-control" id="eventBudget">
				                        </div>  
										 <div class="form-group">
				                        	<label class="" for="form-password">Service Required</label>
				                        	<input type="text" name="serviceRequired" placeholder="Service Required" class="form-username form-control" id="serviceRequired">
				                        </div>  
										 <div class="form-group">
				                        	<label class="" for="form-password">Description</label>
				                        	<input type="text" name="eventDesc" placeholder="Description" class="form-username form-control" id="eventDesc">
				                        </div>  
                                    
                                            <button type="submit" class="btn col-sm-5" name="submit" value="Post Event">Post Event</button>
                                            <br><br><br><br>
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