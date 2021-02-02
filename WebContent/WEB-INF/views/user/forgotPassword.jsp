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
        <title>Forgot Password Form</title>
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
    <div class="navbar-header">
      <a class="navbar-brand" href="#">EVENTS NOW</a>
    </div>
   
    
  </div>
</nav>
        <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
                	

                        <div class="col-sm-6 col-sm-offset-3 text">                        	
                        	<div class="form-box">
	                        	<div class="form-top">
	                        		<div class="form-top-left">
	                        			<h3>Forgot Password</h3>
	                            		<p>Enter username or email address to get password:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <form role="form" action="" method="post" class="login-form">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-username">MobileNo</label>
				                        	<input type="text" name="mobNo" placeholder="Enter Mobile Number" class="form-username form-control" id="form-username">
				                        </div>		
											<div class="form-group">
				                    		<label class="sr-only" for="form-username">Password</label>
				                        	<input type="text" name="pass" placeholder="Enter New Password" class="form-username form-control" id="form-username">
				                        </div>										
											
										
                                            <button type="submit" class="btn col-sm-5">Change Password</button>
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