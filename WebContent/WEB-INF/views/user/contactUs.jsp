<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

	

<!DOCTYPE html>

<html>
<head>
 <meta charset="UTF-8">
  <title>Offering Bids</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/last.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
 <link rel="stylesheet" href="<c:url value="/resources/css/bidstyle.css"/>">
</head>

<body>
<ul>
  <li><a class="active" href="#home">Events now!!!</a></li>
  <li><a href="#">Home</a></li>
  <li><a href="#">About</a></li>
  <li><a href="<spring:url value='/user/logout'/>">Logout</a></li>
</ul>

<div class="background">
  <div class="container">
    <div class="screen">
      <div class="screen-header">
        <div class="screen-header-left">
          <div class="screen-header-button close"></div>
          <div class="screen-header-button maximize"></div>
          <div class="screen-header-button minimize"></div>
        </div>
        <div class="screen-header-right">
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
          <div class="screen-header-ellipsis"></div>
        </div>
      </div>
      <div class="screen-body">
        <div class="screen-body-item left">
          <div class="app-title">
            <span>CONTACT</span>
            <span>US</span>
          </div>
        
        </div>
        <div class="screen-body-item">
          <div class="app-form">
            <div class="app-form-group">
              <input class="app-form-control" placeholder="NAME" value="Krisantus Wanandi">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="EMAIL">
            </div>
            <div class="app-form-group">
              <input class="app-form-control" placeholder="CONTACT NO">
            </div>
            <div class="app-form-group message">
              <input class="app-form-control" placeholder="MESSAGE">
            </div>
            <div class="app-form-group buttons">
              <button class="app-form-button">CANCEL</button>
              <button class="app-form-button">SEND</button>
            </div>
          </div>
        </div>
      </div>
    </div>
   
  </div>
</div>

</body>

</html>

