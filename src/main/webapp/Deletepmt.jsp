<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	
	
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Rooms & Offers </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Rooms</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Rooms Offer</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Foods </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Online Order</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Reservation</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Event </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Weddings</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Meetings</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="CustomerReg.jsp"
					tabindex="-1" aria-disabled="true">Register</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp"
					tabindex="-1" aria-disabled="true">LogIn</a></li>
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>


		</div>
	</div>
</nav>
<!-- END Navigation bar -->

<style>
h1 {text-align: center;}

</style>
</head>
<body>
<h1 text-align: center>Delete Payment</h1>

	<%
	String paymentid = request.getParameter("paymentid");
	String fullName = request.getParameter("fullName");
	String Mobile = request.getParameter("Mobile");
	String Address = request.getParameter("Address");
	String email = request.getParameter("email");
	String paymentDate = request.getParameter("paymentDate");
	String paymentMethod = request.getParameter("paymentMethod");
	%>


<form action="pmdelete" method="post">
	paymentid <input type="text" name="paymentid" value="<%= paymentid %>" readonly><br>
	fullName <input type="text" name="fullName" value="<%= fullName %>"><br>
	Mobile <input type="text" name="Mobile" value="<%= Mobile %>"><br>
	Address <input type="text" name="Address" value="<%= Address %>"><br>
	Email <input type="text" name="email" value="<%= email %>"><br>
	paymentDate <input type="text" name="paymentDate" value="<%= paymentDate %>"><br>
	paymentMethod <input type="password" name="paymentMethod" value="<%= paymentMethod %>"><br>
	
	<input type="submit" name="submit" value="Delete Payment"><br>
	</form>
</body>

<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
	<!-- Section: Social media -->
	<section
		class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
		<!-- Left -->
		<div class="me-5 d-none d-lg-block">
			<span>Get connected with us on social networks:</span>
		</div>
		<!-- Left -->

		<!-- Right -->
		<div>
			<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
			</a>
		</div>
		<!-- Right -->
	</section>
	<!-- Section: Social media -->

	<!-- Section: Links  -->
	<section class="">
		<div class="container text-center text-md-start mt-5">
			<!-- Grid row -->
			<div class="row mt-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
					<!-- Content -->
					<h6 class="text-uppercase fw-bold mb-4">
						<i class="fas fa-gem me-3"></i>Hotel Management System
					</h6>
					<p>We are a small island with big hearts. Wherever you may find
						yourself in Sri Lanka, rest easy knowing that an open door is
						never too far away.</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Products</h6>
					<p>
						<a href="#!" class="text-reset">Food</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Rooms & Offers</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Event</a>
					</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
					<p>
						<a href="#!" class="text-reset">About US</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Contact US</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Orders</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Help</a>
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
					<p>
						<i class="fas fa-home me-3"></i> Sri Lanka, SL 227, SL
					</p>
					<p>
						<i class="fas fa-envelope me-3"></i> info@example.com
					</p>
					<p>
						<i class="fas fa-phone me-3"></i> +94 754325432
					</p>
					<p>
						<i class="fas fa-print me-3"></i> +94 754321234
					</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
	</section>
	<!-- Section: Links  -->

	<!-- Copyright -->
	<div class="text-center p-4"
		style="background-color: rgba(0, 0, 0, 0.05);">
		? 2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">ITPM</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
</html>