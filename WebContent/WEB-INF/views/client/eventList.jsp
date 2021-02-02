<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<title>eventList</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
			
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<!-- <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"> -->
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/vendor/animate/animate.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/vendor/perfect-scrollbar/perfect-scrollbar.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mainn.css"/>">
<!--===============================================================================================-->
	
	 <style>
  .bghead {
  background-image: url("/EVT/resources/css/loginimg.jpg");
  height: 100%; 
  background-repeat: no-repeat;
  background-size: cover;
}
  </style>		
		
</head>
<body class="bghead">
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
	<div class="limiter">
		<div class="container-table100 bghead">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column2">Title</th>
									<th class="cell100 column2">City</th>
									<th class="cell100 column2">Date</th>
									<th class="cell100 column2">Budget</th>
									<th class="cell100 column2">Delete</th>
									<th class="cell100 column2">Check</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach var="p" items="${requestScope.events_list}">
								<tr class="row100 body">
									<td class="cell100 column2">${p.title }</td>
									<td class="cell100 column2">${p.eventCity}</td>
									<td class="cell100 column2">${p.eventDate}</td>
									<td class="cell100 column2">>${p.eventBudget}</</td>
									<td><a href="<spring:url value='/client/deleteEvent?eventId=${p.eventId}'/>">Delete Event</a></td>					
									<td class="cell100 column2"><a href="<spring:url value='/client/seeBids?eventId=${p.eventId}'/>">Check</a></td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				
				
			
			</div>
		</div>
	</div>


<<script src="/EVT/resources/css/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/EVT/resources/css/vendor/bootstrap/js/popper.js"></script>
	<script src="/EVT/resources/css/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/EVT/resources/css/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/EVT/resources/css/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="/EVT/resources/js/main.js"></script>

</body>
</html>