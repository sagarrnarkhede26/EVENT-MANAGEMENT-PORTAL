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

<a href="<spring:url value='/vendor/eventList'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">See the Events Posted </a>
  <a href="<spring:url value='/vendor/replies'/>" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Offered Bids</a>
  </div>
	<div class="limiter">
		<div class="container-table100 bg">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column3">Title</th>
									<th class="cell100 column3">Event Type</th>
									<th class="cell100 column3">City</th>
									<th class="cell100 column3">Date</th>
									<th class="cell100 column3">Budget</th>
									<th class="cell100 column3">Bid on it</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
							<c:forEach var="p" items="${requestScope.posted_events}">
								<tr class="row100 body">
									<td class="cell100 column3">${p.title }</td>
									<td class="cell100 column3">${p.eventType}</td>
									<td class="cell100 column3">${p.eventCity}</td>
									<td class="cell100 column3">${p.eventDate}</</td>
									<td class="cell100 column3">${p.eventBudget}</</td>
									<td class="cell100 column3"><a href="<spring:url value='/vendor/bid?eid=${p.eventId}'/>">Bid on it</a></td>
									
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