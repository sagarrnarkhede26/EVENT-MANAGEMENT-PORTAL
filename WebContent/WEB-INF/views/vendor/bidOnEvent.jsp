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
        <title>Bids</title>
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
	
	<nav class="navbar navbar-light bg-warning " >
  <div class="container-fluid">
    
   <ul class="nav navbar-nav">
      <li class="active"><a href="<spring:url value='/vendor/home'/>">Home</a></li>
      
         
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

<div align="center">
	 <br>
   <br>
    <br>
     <br>

<a href="<spring:url value='/vendor/eventList'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">See the Events Posted </a>
  <a href="<spring:url value='/vendor/replies'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Offered Bids</a>
  </div>
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
	                        		<div class="form-top">
	                        			<h3 align="center">Bids Offering</h3>
	                            		<p align="center"></p>
	                        		</div>
	                        		<!-- <div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div> -->
	                            </div>
	                            <div class="form-bottom">
				                    <form  method="post" modelAttribute="bid_obj">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-username">Enter Bid Amount</label>
				                        	<input type="number" name="bidAmount" placeholder="Enter Bid Amount" class="form-username form-control" id="bidAmount">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-username">Cover Letter</label>
				                        	<input type="text" name="bidDesc" placeholder="Enter Cover Letter" class="form-password form-control" id="bidDesc">
				                        </div>    
                                    
                                            <button type="submit" class="btn col-sm-5" name="submit" value="Submit Bid">Submit Bid</button>
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