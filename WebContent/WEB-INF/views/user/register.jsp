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
        <title>Register</title>
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
      <li class="active"><a href="eventbar.html">Home</a></li>
     
        </ul>
      </li>
    
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <!--  <li><a href="abc.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
      <li><a href="./login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    <li><a href="#">About us</a></li>
    </ul>
  </div>
</nav>
<div class="bg">
<c:if test="${requestScope.status!=null }">
<div class="alert alert-success alert-dismissible" align="center">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong id="UploadSuccess" >Successfully Registered!!!!</strong> <a href="./login">Click Here To Login!!!</a>
  </div>
<!-- <h5 align="center">Last Action Status : ${requestScope.status}</h5> -->
</c:if>
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
	                        		<div class="form-top-left">
	                        			<h3 align="center">Registration Form</h3>
	                            		<p align="center">Enter Details to register</p>
	                        		</div>
	                        		<div class="form-top-right">
	                        			<i class="fa fa-lock"></i>
	                        		</div>
	                            </div>
	                            <div class="form-bottom">
				                     <form method="POST" modelAttribute="new_user">
				                    	<div class="form-group">
				                    		<label class="sr-only" for="form-username">First Name</label>
				                        	<input type="text" name="fname" placeholder="First Name" class="form-username form-control" >
				                        </div>
				                        <div class="form-group">
				                        	<label class="sr-only" for="form-password">Last Name</label>
				                        	<input type="text" name="lname" placeholder="Last Name" class="form-username form-control">
				                        </div>    
										
										
							<div class="form-group">
   <!--  <label for="exampleFormControlSelect1">Gender</label> -->
    <select class="form-control" id="gender" name="gender">
      <option>Select Gender</option>
      <option>Male</option>
      <option>Female</option>
      <option>Other</option>
    </select>
  </div>
                                    
									
									 <div class="form-group">
				                        	<label class="sr-only" for="email">Email</label>
				                        	<input type="Email" name="email" placeholder="Email" class="form-username form-control">
				                        </div> 
										 <div class="form-group">
				                        	<label class="sr-only" for="password">Password</label>
				                        	<input type="password" name="password" placeholder="Password" class="form-password form-control" id="password">
				                        </div> 
										<div class="form-group">
				                        	<label class="sr-only" for="userName">User Name</label>
				                        	<input type="text" name="userName" placeholder="User Name" class="form-username form-control" id="userName">
				                        </div> 
										
										<div class="form-group">
				                        	<label class="sr-only" for="contactNo">ContactNo</label>
				                        	<input type="text" name="contactNo" placeholder="Contact No" class="form-username form-control" id="contactNo">
				                        </div> 
										
										<div class="form-group">
				                        	<label class="sr-only" for="dob">DOB</label>
				                        	<input type="date" name="dob" placeholder="DOB" class="form-username form-control" id="dob">
				                        </div> 
							<div class="form-group">
   
    <select class="form-control" id="role" name="role">
      <option>Select Role</option>
      <option>ADMIN</option>
      <option>VENDOR</option>
      <option>CLIENT</option>
    </select>
  </div>
                                            <button type="submit" class="btn col-sm-5" name="login_submit" value="Login">Sign Up</button>
                                            <br><br><br><br>
											<div>
                                            <a class="btn btn-primary" href="">Sign in</a>
                                          
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