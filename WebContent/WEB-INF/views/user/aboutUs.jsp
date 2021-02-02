<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<style>
.about-section {
  padding: 50px;
  text-align: center;
  background-color: #ADD8E6;
  color: white;
}
.body{
  background-color: rgba(201, 76, 76, 0.3);
}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="body">
<nav class="navbar navbar-light bg-warning">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">EVENTS now!!</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Events<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Corporate Events</a></li>
          <li><a href="#">Local Events</a></li>
          <li><a href="#">Conference</a></li>
        </ul>
      </li>
      <li><a href="#">contactUs</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="user/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="user/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	    <li><a href="#">About us</a></li>
    </ul>
  </div>
</nav>
<div class="about-section">
  <h1>About Us</h1>
  <title>Who’s behind EventBookings?</title>
  <p>We are a team of event planners and organisers ourselves with experience across different industries and a common goal to make running your events easier!</p>
<p>Our all-encompassing software platform that will help you plan, promote and track all of your ticketing and attendance at events. A subsidiary venture of Reed Graduations, the EventBookings team developed this innovative ticketing software in 2017, seeing a need for a straightforward event management system that could be used to manage small and large events alike. We’ve added in extra features to help along the way including allocated seating, dietary requirement fields and high levels of customisation, making it perfect for events of any level of complexity.</p>
</div>
</body>
</html>