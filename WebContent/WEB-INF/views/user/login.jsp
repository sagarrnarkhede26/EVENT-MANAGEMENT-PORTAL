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
        <title>Login</title>
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
      <li class="active"><a href="">Home</a></li>
     
        </ul>
      </li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <!--<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>-->
	   
    </ul>
  </div>
</nav>

<h5 style="color: red;">${requestScope.mesg}</h5>
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
	                        			<h3 align="center">Login to our site</h3>
	                            		<p align="center">Enter Email and password to log on:</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                    <form  method="post" class="login-form">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-username">Email</label>
				                        	<input type="text" name="em" placeholder="Email" class="form-username form-control" id="form-username">
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-password">Password</label>
				                        	<input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="form-password">
				                        </div>    
                                    
                                            <button type="submit" class="btn col-sm-5" name="login_submit" value="Login">Sign in!</button>
                                            <br><br><br><br>
											<div>
                                            <a class="btn btn-primary" href="register.html">Sign Up</a>
                                          
                                            <a class="btn btn-primary" href="<spring:url value='/user/forgotPass'/>" style="float:right;">Forgot Password</a>
				                    </div></form>
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