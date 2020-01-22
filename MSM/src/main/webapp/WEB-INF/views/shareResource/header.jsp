<head>
</head>
<body>
<!-- Header Navbar -->
<nav class = "navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
	<div class = "container-fluid">
		<!-- BRAND -->
		<a class = "navbar-brand wave-effect" href = "/home" target = "_blank">
			<strong class = "blue-text">MSM</strong>
		</a>
		<!-- Collapse Menu -->
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#headerMenu">
	   		<span class="navbar-toggler-icon"></span>
	    </button>
		<!-- Header Menu -->
		<div class = "collapse navbar-collapse" id = "headerMenu">
			<ul class = "navbar-nav ml-auto">
				<!-- SignUP -->
				<li class = "nav-item">					
					<!-- <a type = "button" class = "btn btn-link waves-effect" data-toggle = "modal" data-target = "#signUp" style = "color : black">sign up</a> -->		
					<a type = "button" class = "btn btn-link waves-effect" href = "/member/step1">SIGN UP</a>
				</li>
				<!-- //SignUp -->
				<!-- LOGIN -->
				<li class = "nav-item">
					<sec:authorize access = "isAnonymous()">
						<a type = "button" class = "btn btn-link waves-effect" href = "#" onclick = "openNav2()" id = "login">sign in</a>
					</sec:authorize>
					<sec:authorize access = "isAuthenticated()">
						<form action = "logout" method = "post">
							<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}" />
							<button type = "submit" class = "btn btn-link waves-effect" style = "color : black">sign out</button>
						</form>
					</sec:authorize>
					<div id = "mySidenav2" class = "sidenav">				
						<h3 class = "text-center text-white mb-5">Sign In</h3>
						<div class = "container-fluid">
							<section class = "text-center text-lg-center dark-gery-text">
								<div class = "row">
									<div class = "col-md-12">
										<form class = "text-center" action = "login" method = "post">
											<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}" />
											<input type = "text" class = "form-control mb-4" name = "mId" placeholder = "ID" required>
											<input type = "password" class = "form-control mb-4" name = "mPw" placeholder = "PassWord" required>
											<div class = "col-md-12 d-flex justify-content-left">
												<div>
													<div class = "custom-control custom-checkbox">
														<input type = "checkbox" class = "custom-control-input" id = "remember_me" checked>
														<label class = "custom-control-label text-white" for = "remember_me">Remember Me</label>
													</div>
												</div>
											</div>
											<button class = "btn btn-primary text-white my-4" id = "logBtn" type = "submit">SIGN IN</button>
											<p class = "text-white">Not Member?
												<a data-toggle = "modal" href = "#signUp" style = "display : inline; color : white; padding : 4px; font-size : 16px">REGISTER</a>
											</p>
											<c:if test ="${not empty param.fail}">
												<div class = col-md-12>
													<font color = "red">
														<p>Your SIGN IN attempt was not successful, try again.</p>
														<p>Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>														
													</font>
													<c:remove scope = "session" var = "SPRING_SECURITY_LAST_EXCEPTION"/>
												</div>
											</c:if>											
										</form>
									</div>		
								</div>
							</section>
						</div>
						<a href = "javascript:void(0)" class = "closebtn" onclick = "closeNav2()">&times;</a>
					</div>
				</li>
				<!-- //LOGIN -->
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
						<a class = "btn btn-outline-white mb-5" href = "/board/list" role = "button">
							BOARD
						</a>
						<sec:authorize access = "isAuthenticated()">
						<form action = "logout" method = "post">
							<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}" />
							<button type = "submit" class = "btn btn-outline-white mb-5" style = "color : black" id = "signOut1">Sign Out</button>
						</form>
					</sec:authorize>
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
									<li><a href="/product/listView" class="menu-item">AAS-Studio</a></li>
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
</body>