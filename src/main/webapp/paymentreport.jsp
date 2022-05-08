<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentV</title>
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

<style>
h1 {
	text-align: center;
}
</style>

</head>
<body>
<input type="button" name="delete"
		value="Delete Payment">
	<h1 text-align: center id=report>Payment Details</h1>
	
	<c:forEach var="pmt" items="${pmtDeatils}">

		<c:set var="paymentid" value="${pmt.paymentid}" />
		<c:set var="fullName" value="${pmt.fullName}" />
		<c:set var="MobileP" value="${pmt.MobileP}" />
		<c:set var="Address" value="${pmt.Address}" />
		<c:set var="email" value="${pmt.email}" />
		<c:set var="paymentDate" value="${pmt.paymentDate}" />
		<c:set var="paymentMethod" value="${pmt.paymentMethod}" />

		<td>
			<h2>paymentid :${pmt.paymentid}</h2>
			<h2>fullName :${pmt.fullName}</h2>
			<h2>Mobile :${pmt.MobileP}</h2>
			<h2>Address :${pmt.Address}</h2>
			<h2>email :${pmt.email}</h2>
			<h2>paymentDate :${pmt.paymentDate}</h2>
			<h2>paymentMethod :${pmt.paymentMethod}</h2>
		</td>

	</c:forEach>


	
</body>

<script>
function generatePDF(){
	const element = document.getElementById("report");
	html2pdf().from(element).save();
	}
</script>


</html>