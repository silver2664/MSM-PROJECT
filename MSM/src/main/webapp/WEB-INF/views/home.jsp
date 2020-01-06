<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material Design Bootstrap</title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/css/mdb.min.css" rel="stylesheet">
<style type="text/css">
html, body, header, .carousel {
	height: 60vh;
}

@media ( max-width : 740px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

@media ( min-width : 800px) and (max-width: 850px) {
	html, body, header, .carousel {
		height: 100vh;
	}
}

.view, body, html {
	height: 100%
}

.carousel {
	height: 65%
}

.carousel .carousel-inner, .carousel .carousel-inner .active, .carousel .carousel-inner .carousel-item
	{
	height: 100%
}

@media ( max-width :776px) {
	.carousel {
		height: 100%
	}
}

.page-footer {
	background-color: #5e35b1
}

.mega-dropdown {
	position : static;
}

.mega-menu {
	position : absolute;
	width : 100vw;
	left : 0;
	right : 0;
	padding : 5px;
}

.menu-item {
	padding : 5px 0;
}

.sub-title {
	font-family : BigNoodle;
}

.gallery {
        -webkit-column-count: 3;
        -moz-column-count: 3;
        column-count: 3;
        -webkit-column-width: 33%;
        -moz-column-width: 33%;
        column-width: 33%; 
}

.logo1 {
	
	width : 100vw;
	height : 200px;
}

.sidenav {
	height : 100%;
	width : 0;
	position : fixed;
	z-index : 1;
	top : 0;
	right : 0;
	background-color : #111;
	overflow-x : hidden;
	transition : 0.5s;
	padding-top : 60px;	
}

.sidenav a {
	padding : 8px 8px 8px 32px;
	text-decoration : none;
	font-size : 25px;
	color : #818181;
	display : block;
	transition : 0.3s;
}

.sidenav .closebtn {
	position : absolute;
	top : 0;
	right : 25px;
	font-size : 36px;
	margin-left : 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

#pol1 {
	background-color : #f3e5f5
}

#pol2 {
	background-color : #e8eaf6
}

</style>
</head>
<body>
<!-- Header Navbar -->
<nav class = "navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
	<div class = "container-fluid">
		<!-- BRAND -->
		<a class = "navbar-brand wave-effect" href = "#" target = "_blank">
			<strong class = "blue-text">MSM</strong>
		</a>
		<!-- Collapse Menu -->
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#headerMenu">
	   		<span class="navbar-toggler-icon"></span>
	    </button>
		<!-- Header Menu -->
		<div class = "collapse navbar-collapse" id = "headerMenu">
			<ul class = "navbar-nav ml-auto">
				<li class = "nav-item">
					<a type = "button" class = "btn btn-link waves-effect" href = "#">sign up</a>
				</li>
				<li class = "nav-item">
					<a type = "button" class = "btn btn-link waves-effect" href = "#">sign in</a>
				</li>
				<li class = "nav-item">				
					<!-- My Account Sidebar Btn -->
					<a type = "button" class = "btn btn-link waves-effect" href = "#" onclick = "openNav()">My Account</a>
					<div id = "mySidenav" class = "sidenav">
						<h3 class = "text-center text-white mb-5">My Account</h3>
						<a href = "javascript:void(0)" class = "closebtn" onclick = "closeNav()">&times;</a>
						<a class = "btn btn-outline-white mb-5" href = "#" target = "_blank" role = "button">
							Profile
						</a>
						<a class = "btn btn-outline-white mb-5" href = "#" target = "_blank" role = "button">
							Cart
						</a>
						<a class = "btn btn-outline-white mb-5" href = "#" target = "_blank" role = "button">
							BOARD
						</a>
					</div>					
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- Carousel Wrapper -->
<div id = "carousel-example-1z" class = "carousel slide carousel-fade pt-5" data-ride = "carousel">
	<!--Indicators-->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-1z" data-slide-to="1"></li>
      <li data-target="#carousel-example-1z" data-slide-to="2"></li>
    </ol>
    <!-- Slides -->
    <div class = "carousel-inner" role = "listbox">
    	<!-- First Slide -->
    	<div class = "carousel-item active">
    		<div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg'); 
    			background-repeat: no-repeat; background-size: cover;">
    			<!-- Mask & FlexBox Option -->
    			<div class = "mask rgba-black-strong d-flex justify-content-center align-items-center">
    				<div class = "text-center white-text mx-5 wow fadeIn">
    					<h1 class = "mb-4">
    						<strong>Test MSM Home</strong>
    					</h1>
    					<p>
    						<strong>Example Mask &amp; FlexBox Option!</strong>
    					</p>
    					<p class = "mb-4 d-none d-md-block">
    						<strong> Example MSM Homepage <br/> 2019.12.30. AM 10 : 39. Monday.</strong>
    					</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!-- Second Slide -->
    	<div class = "carousel-item">
    		<div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg'); 
    			background-repeat: no-repeat; background-size: cover;">
    			<!-- Mask & FlexBox Option -->
    			<div class = "mask rgba-black-strong d-flex justify-content-center align-items-center">
    				<div class = "text-center white-text mx-5 wow fadeIn">
    					<h1 class = "mb-4">
    						<strong>Test MSM Home</strong>
    					</h1>
    					<p>
    						<strong>Example Mask &amp; FlexBox Option!</strong>
    					</p>
    					<p class = "mb-4 d-none d-md-block">
    						<strong> Example MSM Homepage <br/> 2019.12.30. AM 10 : 39. Monday.</strong>
    					</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!-- Third Slide -->
    	<div class = "carousel-item">
    		<div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg'); 
    			background-repeat: no-repeat; background-size: cover;">
    			<!-- Mask & FlexBox Option -->
    			<div class = "mask rgba-black-strong d-flex justify-content-center align-items-center">
    				<div class = "text-center white-text mx-5 wow fadeIn">
    					<h1 class = "mb-4">
    						<strong>Test MSM Home</strong>
    					</h1>
    					<p>
    						<strong>Example Mask &amp; FlexBox Option!</strong>
    					</p>
    					<p class = "mb-4 d-none d-md-block">
    						<strong> Example MSM Homepage <br/> 2019.12.30. AM 10 : 39. Monday.</strong>
    					</p>
    				</div>
    			</div>
    		</div>
    	</div>
    	<!--Controls-->
    	<a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
      		<span class="carousel-control-prev-icon"></span>
      		<span class="sr-only">Previous</span>
    	</a>
    	<a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
      		<span class="carousel-control-next-icon"></span>
      		<span class="sr-only">Next</span>
    	</a>
    </div>
</div>
<!-- Main -->
<main>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light white mt-1 mb-5">
		<!-- Navbar Brand -->
		<span class="navbar-brand">Categories : </span>
		<!-- Collapse button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#CategoryNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- Collapsible Content -->
		<div class="collapse navbar-collapse" id="CategoryNav">
			<!-- Links -->
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown mega-dropdown">
					<a class="nav-link text-uppercase" data-toggle="dropdown">brand</a>					
					<div class="dropdown-menu mega-menu v-2 z-depth-1 py-4 px-0">
						<div class = "row">										
							<div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
								<h6 class="sub-title text-uppercase font-weight-bold">ACCESSORY</h6>
								<ul class="list-unstyled">
									<li><a href="#" class="menu-item">AAS-Studio</a></li>
									<li><a href="#" class="menu-item">Example01</a></li>
									<li><a href="#" class="menu-item">Example02</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
								<h6 class="sub-title text-uppercase font-weight-bold">PhoneCase</h6>
								<ul class="list-unstyled">
									<li><a href="#" class="menu-item">Example</a></li>
									<li><a href="#" class="menu-item">Example01</a></li>
									<li><a href="#" class="menu-item">Example02</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
								<h6 class="sub-title text-uppercase font-weight-bold">New Category</h6>
								<ul class="list-unstyled">
									<li><a href="#" class="menu-item">Example</a></li>
									<li><a href="#" class="menu-item">Example01</a></li>
									<li><a href="#" class="menu-item">Example02</a></li>
								</ul>
							</div>
							<div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
								<h6 class="sub-title text-uppercase font-weight-bold">New Category</h6>
								<ul class="list-unstyled">
									<li><a href="#" class="menu-item">Example</a></li>
									<li><a href="#" class="menu-item">Example01</a></li>
									<li><a href="#" class="menu-item">Example02</a></li>
								</ul>
							</div>	
						</div>						
					</div>					
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" data-toggle = "dropdown" href="#">ACCESSORY</a>
					<ul class = "dropdown-menu">
						<li class = "dropdown-item">
							<a class = "dropdown-link">RINGS</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">BRACELETS</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">NECKLACES</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EARRINGS</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">PET NECKLACES</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">GOLD PRODUCTS</a>
						</li>	
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">GLASSES CHAINS</a>
						</li>					
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" data-toggle = "dropdown" href="#">PHONECASE</a>
					<ul class = "dropdown-menu">
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 01</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 02</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 03</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 04</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 05</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 06</a>
						</li>	
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 07</a>
						</li>					
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" data-toggle = "dropdown" href="#">Ex_Category 01</a>
					<ul class = "dropdown-menu">
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 01</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 02</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 03</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 04</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 05</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 06</a>
						</li>	
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 07</a>
						</li>					
					</ul>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link" data-toggle = "dropdown" href="#">Ex_Category 02</a>
					<ul class = "dropdown-menu">
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 01</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 02</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 03</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 04</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 05</a>
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 06</a>
						</li>	
						</li>
						<li class = "dropdown-item">
							<a class = "dropdown-link">EXAMPLE 07</a>
						</li>					
					</ul>
				</li>
			</ul>
			<!-- Search -->
			<form class="form-inline">
				<div class="md-form my-0">
					<input class="form-control mr-sm-2" type="text"
						placeholder="Search">
				</div>
			</form>
		</div>
	</nav>
		<!-- MSM Policy -->
	<div class = "container-fluid">
		<div class = "row">
			<div class = "col-lg-3 col-md-6 text-center p-5" id = "pol1">
				<i class="fas fa-sync-alt fa-10x mb-5 green-text"></i>
				<h4 class = "mb-3 font-italic font-weight-bold">30 Days Returns</h4>
			</div>
			<div class = "col-lg-3 col-md-6 text-center p-5" id = "pol2">
				<i class="fas fa-truck fa-10x mb-5 green-text"></i>
				<h4 class = "mb-3 font-italic font-weight-bold">Free Shipping</h4>
			</div>
			<div class = "col-lg-3 col-md-6 text-center p-5" id = "pol1">
				<i class="fas fa-shield-alt fa-10x mb-5 green-text"></i>
				<h4 class = "mb-3 font-italic font-weight-bold">Security Payment</h4>
			</div>
			<div class = "col-lg-3 col-md-6 text-center p-5" id = "pol2">
				<i class="fas fa-gift fa-10x mb-5 green-text"></i>
				<h4 class = "mb-3 font-italic font-weight-bold">Member DisCount</h4>
			</div>
		</div>
	</div>
	<!-- BestSeller -->
	<div class="container my-5">
		<!-- Section : Content -->
		<section class="dark-grey-text text-center">
			<!-- Section Heading -->
			<h3 class="font-weight-bold mb-4 pb-2">MSM BestSellers</h3>
			<!-- Section Description -->
			<p class="grey-text w-responsive mx-auto mb-5">
				Example BestSellers Section. <br /> 2019. 12. 30. 13 : 10. Monday.
			</p>
			<!-- Grid Row -->
			<div class="row">
				<!-- Card1 -->
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card card-cascade narrow card-ecommerce">
						<!-- Card Image -->
						<div class="view view-cascade overlay">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/1.jpg"
								class="card-img-top" alt="sample photo"> <a>
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!-- Card Content -->
						<div class="card-body card-body-cascade text-center pb-3">
							<!-- Title -->
							<h5 class="card-title mb-1">
								<strong> <a href="#">Example No.1</a>
								</strong>
							</h5>
							<!-- Rating -->
							<div class="container">
								<i class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i>
							</div>
							<!-- Description -->
							<p class="card-text">MSM Goods No.1 Example</p>
							<!-- Card Footer -->
							<div class="card-footer px-1">
								<span class="float-left font-weight-bold"> <strong>99,000원</strong>
								</span> <span class="float-right"> <a
									class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to Cart"> <i
										class="fas fa-shopping-cart grey-text ml-3"></i>
								</a> <a class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to WishList"> <i
										class="fas fa-heart grey-text ml-3"></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
					<!-- Card 2 -->
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card card-cascade narrow card-ecommerce">
						<!-- Card Image -->
						<div class="view view-cascade overlay">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/2.jpg"
								class="card-img-top" alt="sample photo"> <a>
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!-- Card Content -->
						<div class="card-body card-body-cascade text-center pb-3">
							<!-- Title -->
							<h5 class="card-title mb-1">
								<strong> <a href="#">Example No.2</a>
								</strong>
							</h5>
							<!-- Rating -->
							<div class="container">
								<i class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star-half-alt amber-text"></i>
							</div>
							<!-- Description -->
							<p class="card-text">MSM Goods No.2 Example</p>
							<!-- Card Footer -->
							<div class="card-footer px-1">
								<span class="float-left font-weight-bold"> <strong>79,000원</strong>
								</span> <span class="float-right"> <a
									class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to Cart"> <i
										class="fas fa-shopping-cart grey-text ml-3"></i>
								</a> <a class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to WishList"> <i
										class="fas fa-heart grey-text ml-3"></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
					<!-- Card 3 -->
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card card-cascade narrow card-ecommerce">
						<!-- Card Image -->
						<div class="view view-cascade overlay">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/3.jpg"
								class="card-img-top" alt="sample photo"> <a>
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!-- Card Content -->
						<div class="card-body card-body-cascade text-center pb-3">
							<!-- Title -->
							<h5 class="card-title mb-1">
								<strong> <a href="#">Example No.3</a>
								</strong>
							</h5>
							<!-- Rating -->
							<div class="container">
								<i class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="fas fa-star amber-text"></i> <i
									class="far fa-star amber-text"></i>
							</div>
							<!-- Description -->
							<p class="card-text">MSM Goods No.3 Example</p>
							<!-- Card Footer -->
							<div class="card-footer px-1">
								<span class="float-left font-weight-bold"> <strong>89,000원</strong>
								</span> <span class="float-right"> <a
									class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to Cart"> <i
										class="fas fa-shopping-cart grey-text ml-3"></i>
								</a> <a class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to WishList"> <i
										class="fas fa-heart grey-text ml-3"></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
					<!-- Card 4 -->
				<div class="col-lg-3 col-md-6 mb-4">
					<div class="card card-cascade narrow card-ecommerce">
						<!-- Card Image -->
						<div class="view view-cascade overlay">
							<img
								src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/4.jpg"
								class="card-img-top" alt="sample photo"> <a>
								<div class="mask rgba-white-slight"></div>
							</a>
						</div>
						<!-- Card Content -->
						<div class="card-body card-body-cascade text-center pb-3">
							<!-- Title -->
							<h5 class="card-title mb-1">
								<strong> <a href="#">Example No.4</a>
								</strong>
							</h5>
							<!-- Rating -->
							<div class="container">
								<div class="container">
									<i class="fas fa-star amber-text"></i> <i
										class="fas fa-star amber-text"></i> <i
										class="fas fa-star amber-text"></i> <i
										class="fas fa-star amber-text"></i> <i
										class="far fa-star amber-text"></i>
								</div>
							</div>
							<!-- Description -->
							<p class="card-text">MSM Goods No.4 Example</p>
							<!-- Card Footer -->
							<div class="card-footer px-1">
								<span class="float-left font-weight-bold"> <strong>79,000원</strong>
								</span> <span class="float-right"> <a
									class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to Cart"> <i
										class="fas fa-shopping-cart grey-text ml-3"></i>
								</a> <a class="material-tooltip-main" data-toggle="tooltip"
									data-place="top" title="Add to WishList"> <i
										class="fas fa-heart grey-text ml-3"></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- New Arrival -->
	<div class = container>
		<h3 class = "font-weight-bold text-center dark-grey-text pb-2">New Arrivals</h3>
		<hr class = "w-header my-4">
		<div class = "row">
			<div class = "col-md-12 dark-gery-text d-flex justify-content-center mb-5">
				<button type = "button" class = "btn btn-link btn-lg m-0 px-3 py-1 filter">All</button>
				<p class = "font-weight-bold mb-0 px-1 py-1">/</p>
				<button type = "button" class = "btn btn-link btn-lg m-0 px-3 py-1 filter">ACCESSORIES</button>
				<p class = "font-weight-bold mb-0 px-1 py-1">/</p>
				<button type = "button" class = "btn btn-link btn-lg m-0 px-3 py-1 filter">PHONECASE</button>
				<p class = "font-weight-bold mb-0 px-1 py-1">/</p>
				<button type = "button" class = "btn btn-link btn-lg m-0 px-3 py-1 filter">CATEGORY NO.1</button>
				<p class = "font-weight-bold mb-0 px-1 py-1">/</p>
				<button type = "button" class = "btn btn-link btn-lg m-0 px-3 py-1 filter">CATEGORY NO.2</button>
			</div>
		</div>
		<div class = "gallery mb-5" id = "gallery">
			<div class = "mb-3 pics all 2 animation">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Others/images/58.jpg">
				</a>
			</div>
			<div class = "mb-3 pics">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Vertical/7.jpg">
				</a>
			</div>
			<div class = "mb-3 pics">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Vertical/4.jpg">
				</a>
			</div>
			<div class = "mb-3 pics">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Others/images/63.jpg">
				</a>
			</div>
			<div class = "mb-3 pics">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Others/images/64.jpg">
				</a>
			</div>
			<div class = "mb-3 pics">
				<a href = "#">
					<img class = "img-fluid z-depth-1 rounded" src = "https://mdbootstrap.com/img/Photos/Vertical/5.jpg">
				</a>
			</div>
		</div>
	</div>
	<!-- Brand-Logo -->
	<div class = "container mb-5">
		<div class = "card text-white" style = "max-width : 100%; background-color : #ce93d8">
			<div class = "card-body">
				<h4 class = "text-center">MSM PARTNER BRAND</h4>
			</div>
		</div>
	</div>
	<div class = "container">
		<section>
			<div class = "row">
				<div class = "col-lg-4 col-md-6 mb-5">
					<div class = "view zoom z-depth-1 rounded view-logo">
						<a href = "#">
							<img src = "http://blogfiles.naver.net/20150830_55/kudshop_14408818986977UrjW_PNG/Screen_Shot_2015-08-30_at_5.57.33_AM.png" class = "img-fluid logo1">
						</a>
					</div>
				</div>
				<div class = "col-lg-4 col-md-6 mb-5">
					<div class = "view zoom z-depth-1 rounded view-logo">
						<a href = "#">
							<img src = "http://thumbnail.10x10.co.kr/webimage/image/add1_600/146/A001462480_01-1.jpg?cmd=thumb&w=500&h=500&fit=true&ws=false" class = "img-fluid logo1">
						</a>
					</div>
				</div>
				<div class = "col-lg-4 col-md-6 mb-5">
					<div class = "view zoom z-depth-1 rounded view-logo">						
						<a href = "#">
							<img src = "http://blogfiles.naver.net/20150419_47/sye821_1429414910763K4qfm_JPEG/11101832_1558861107735935_1999409747053864656_n.jpg" class = "img-fluid logo1">
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>
</main>

<!-- Footer -->
<footer class = "page-footer text-center font-small mt-4">
	<!-- Call to Action -->
	<div class = "pt-4">
		<a class = "btn btn-outline-white" href = "#" target = "_blank" role = "button">
			The Project MSM.
		</a>
	</div>
	
	<!-- Social icons -->
	<div class = "my-4">
    	<div class="pb-4">
	      	<a href="https://www.facebook.com/mdbootstrap" target="_blank">
	        	<i class="fab fa-facebook-f mr-3"></i>
	      	</a>
	
	      	<a href="https://twitter.com/MDBootstrap" target="_blank">
	        	<i class="fab fa-twitter mr-3"></i>
	      	</a>
	
	      	<a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
	        	<i class="fab fa-youtube mr-3"></i>
	      	</a>
	
	      	<a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
	        	<i class="fab fa-google-plus-g mr-3"></i>
	      	</a>
	
	      	<a href="https://dribbble.com/mdbootstrap" target="_blank">
	       		<i class="fab fa-dribbble mr-3"></i>
	      	</a>
	
	      	<a href="https://pinterest.com/mdbootstrap" target="_blank">
	        	<i class="fab fa-pinterest mr-3"></i>
	      	</a>
	
	      	<a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
	        	<i class="fab fa-github mr-3"></i>
	      	</a>
	
	      	<a href="http://codepen.io/mdbootstrap/" target="_blank">
	        	<i class="fab fa-codepen mr-3"></i>
	      	</a>
		</div>
	</div>
	
	<!--Copyright-->
    <div class="footer-copyright py-3">
      © 2020 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> Project MSM </a>
    </div>
    
</footer>





<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>
<script>
function openNav() {
	  document.getElementById("mySidenav").style.width = "30vw";
	}

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}
</script>
<script>
$(function(){
	$('.material-tooltip-main').tooltip({
	    template: '<div class="tooltip md-tooltip"><div class="tooltip-arrow md-arrow"></div><div class="tooltip-inner md-inner"></div></div>'
	  });
})
</script>
</body>
</html>