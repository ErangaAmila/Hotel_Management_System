<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user account</title>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<div class="hero-image">
	<div class="hero-text">
		<h1>Hotel Management System</h1>
	</div>
</div>
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="Homepage.jsp">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link" href="roomLogin.jsp"
					tabindex="-1" aria-disabled="true">Rooms</a></li>
				<li class="nav-item"><a class="nav-link" href="foodLogin.jsp"
					tabindex="-1" aria-disabled="true">Foods</a></li>
				<li class="nav-item"><a class="nav-link" href="eventLogin.jsp"
					tabindex="-1" aria-disabled="true">Event</a></li>
				<li class="nav-item"><a class="nav-link" href="paymentV.jsp" tabindex="-1"
					aria-disabled="true">View Payment</a></li>
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
h1 {
	text-align: center;
}
</style>

</head>
<body>
	<h1 text-align: center>User Dashboard</h1>
	
	<c:forEach var="cus" items="${cusDeatils}">

		<c:set var="id" value="${cus.id}" />
		<c:set var="name" value="${cus.fname}" />
		<c:set var="mobile" value="${cus.mobile}" />
		<c:set var="address" value="${cus.address}" />
		<c:set var="email" value="${cus.email}" />
		<c:set var="userName" value="${cus.userName}" />
		<c:set var="password" value="${cus.password}" />

		<td>
			<h2>ID :${cus.id}</h2>
			<h2>Name :${cus.fname}</h2>
			<h2>Mobile :${cus.mobile}</h2>
			<h2>Address :${cus.address}</h2>
			<h2>Email :${cus.email}</h2>
			<h2>UserName :${cus.userName}</h2>
			<h2>Passward :${cus.password}</h2>
		</td>

	</c:forEach>

	<c:url value="UpdateCus.jsp" var="cusupdate">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="mobile" value="${mobile}" />
		<c:param name="address" value="${address}" />
		<c:param name="email" value="${email}" />
		<c:param name="userName" value="${userName}" />
		<c:param name="password" value="${password}" />
	</c:url>
	<a href="${cusupdate} "> <input type="button" name="update"
		value="Update Details">
	</a>

	<!-- delete part -->
	<c:url value="DeleteCustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="mobile" value="${mobile}" />
		<c:param name="address" value="${address}" />
		<c:param name="email" value="${email}" />
		<c:param name="userName" value="${userName}" />
		<c:param name="password" value="${password}" />
	</c:url>
	
	<a href="${cusdelete}"> <input type="button" name="delete"
		value="Delete Account">
	</a>
	<!-- delete part end -->
	
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
		© 2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">ITPM</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
</html>