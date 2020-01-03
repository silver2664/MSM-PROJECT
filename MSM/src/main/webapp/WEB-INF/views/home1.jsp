<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material Design Bootstrap</title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
<!-- Material Design Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/css/mdb.min.css" rel="stylesheet" />
<!-- Your custom styles (optional) -->
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" />
<style type="text/css">

    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }
    
     @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }
    
</style>
</head>
<body>
<!-- Start Navbar -->
<nav class = "navbar fixed-top navbar-expand-lg navbar-dark pink scrolling-navbar">
	<div class = "container">
		<!-- Brand -->
		<a class="navbar-brand" href="#">
        <strong class="white-text">MSM</strong>
      	</a>
      	<!-- collapse -->
      	<button class = "navbar-toggler" type = "button" data-toggle = "collapse" data-target = "#navbarSupportedContent">
      		<span class = "navbar-toggler-icon"></span>
      	</button>
      	<!-- LINK -->
      	<div class = "collapse navbar-collapse" id = "navbarSupportedContent">
      		<!-- Left -->
      		<ul class = "navbar-nav ml-5 mr-auto">
      			<li class = "nav-item ml-5">
      				<a class = "nav-link waves-effect" href = "#">HOME</a>
      			</li>
      			<li class = "nav-item ml-5">
      				<a class = "nav-link waves-effect" href = "#">BRAND</a>
      			</li>
      			<li class = "nav-item ml-5">
      				<a class = "nav-link waves-effect" href = "#">GOODS</a>
      			</li>
      		</ul>
      		<!-- Right -->
      		<ul class = "navbar-nav nav-flex-icons">
      			<li class = "nav-item ml-5">
      				<a class = "nav-link waves-effect">
      					<i class = "fas fa-shopping-cart"></i>
      					<span class = "clearfix d-none d-sm-inline-block">Cart</span>
      				</a>
      			</li>
      			<li class = "nav-item ml-5">
      				<a class = "nav-link waves-effect">
      					<i class = "fab fa-facebook-f"></i>
      				</a>
      			</li>
      			<li class="nav-item ml-5">
            		<a class="nav-link waves-effect">
              			<i class="fab fa-twitter"></i>
            		</a>
          		</li>
          		<li class="nav-item ml-5">
            		<a class="nav-link border border-light rounded waves-effect">
              			<i class="fab fa-github mr-2"></i>MSM Subscribe
            		</a>
         		 </li>
      		</ul>
      	</div>
	</div>
</nav>
<!-- End Navbar -->


<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
</body>
</html>