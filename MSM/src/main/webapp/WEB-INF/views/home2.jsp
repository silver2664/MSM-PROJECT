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
	height: 50%
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
					<a class = "nav-link waves-effect" href = "#">My Account</a>
				</li>
				<li class = "nav-item">
					<a class = "nav-link waves-effect" href = "#">CART</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- Carousel Wrapper -->
<div id = "carousel-example-1z" class = "carousel slide carousel-fade" data-ride = "carousel">
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
					<div class="dropdown-menu mega-menu v-2 z-depth-1 py-5 px-3">
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
				<li class="nav-item">
					<a class="nav-link" href="#">ACCESSORY</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">PHONECASE</a>
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
      © 2018 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> MDBootstrap.com </a>
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
</body>
</html>