<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
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

</head>

<body>

	<h1>Payment Portal</h1>
	
	<form action="pminsert" method="post">
		Full Name <input type="text" name="fullName"><br> 
		Mobile <input type="text" name="Mobile"><br> 
		Address <input type="text" name="Address"><br> 
		Email <input type="text" name="email"><br> 
		Payment Date <input type="paymentDate"><br>
		<label for="cars">Payment Method</label> <select name="paymentMethod">
			<option value="Visa">Visa</option>
			<option value="Master">Master</option>
			<option value="Cash">Cash</option>
		</select> <input type="submit" name="submit" valur="pay"><br>

		
	</form>
	
</body>
</html>