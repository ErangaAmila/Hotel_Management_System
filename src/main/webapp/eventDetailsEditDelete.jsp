<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<head>
<title>Hotel Management System</title>
<style>
.text-container-div {
            text-align: center;
            border: 0px solid coral;
            margine:auto;
            
        }
</style>
</head>
<body>
<div class="hero-image">
	<div class="hero-text">
		<h1>Hotel Management System</h1>
	</div>
</div>

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
				<li class="nav-item"><a class="nav-link" href="#"
					tabindex="-1" aria-disabled="true">Register</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
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

<br>
<br>
<h2 style="text-align:center;">Event DETAILS VIEW</h2>
<c:forEach var="event" items="${eventDetails}">

<%-- ${room.id}
${room.roomName}
${room.roomDescription}
${room.roomPrice}
${room.roomID} --%>

 <c:set var="id" value="${event.id}"/>
 <c:set var="eventID" value="${event.eventID}"/>
 <c:set var="eventName" value="${event.eventName}"/>
 <c:set var="eventDescription" value="${event.eventDescription}"/>
 <c:set var="eventPrice" value="${event.eventPrice}"/>
 
${room.id}
<form action="#" method="post">
<div class="row justify-content-center">
    <div class="col-2">
      <label for="exampleFormControlInput1">Event ID :</label>
    </div>
    <div class="col-4">
     <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Enter Event ID" name="eid" value="${event.eventID}" readonly>
    </div>
  </div>
  <br>

<div class="row justify-content-center">
    <div class="col-2">
      <label for="exampleFormControlInput1">Event Photos :</label>
    </div>
    <div class="col-4">
      <div class="form-group">
    <input type="file" class="form-control-file" id="exampleFormControlFile1">
  </div>
    </div>
  </div>
  <br>

  <div class="row justify-content-center">
    <div class="col-2">
      <label for="exampleFormControlInput1">Event Name :</label>
    </div>
    <div class="col-4">
    <select class="form-control" id="exampleFormControlSelect1" name="eventName" value="${event.eventName}"readonly>
       <option>Meeting </option>
      <option>Wedding</option>

    </select>
      <!-- <input type="roomName" class="form-control" id="exampleFormControlInput1" placeholder="Room Name"> -->
    </div>
  </div>
  <br>
  
  <div class="row justify-content-center">
    <div class="col-2">
      <label for="exampleFormControlInput1">Event Description :</label>
    </div>
    <div class="col-4">
      <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="Enter Event ID" name="eventDescription" value="${event.eventDescription}"readonly>
    </div>
  </div>
  <br>
  
  <div class="row justify-content-center">
    <div class="col-2">
      <label for="exampleFormControlInput1">Event Price :</label>
    </div>
    <div class="col-4">
      <input type="text" class="form-control" id="validationServer05" placeholder="Event Price" name="eventPrice" required value="${event.eventPrice}"readonly>
      
    </div>
  </div>
  
  
  
   <!-- <div class="row justify-content-center">
    <div class="col-2">
      <button type="submit" class="btn btn-primary mb-2"value="Update my data">Update Room</button>
    </div>
    <div class="col-4">
    <button type="submit" class="btn btn-primary mb-2">Delete Room</button>
    </div>
  </div> -->
  
  </form>
  </c:forEach>
  
  <c:url value="updateEvent.jsp" var="eventupdate">
  	<c:param name="id" value="${id}"/>
  	<c:param name="eventName" value="${eventName}"/>
  	<c:param name="eventDescription" value="${eventDescription}"/>
  	<c:param name="eventPrice" value="${eventPrice}"/>
  	<c:param name="eventID" value="${eventID}"/>
  </c:url>
  
  <div class="row justify-content-center">

    <div class="col-2">
      <br>
    <a href="${eventupdate}">
      <input type="button" class="btn btn-primary mb-2"name="update" value="Update Room Details"readonly></button>
      </a>
      <a href="eventLogin.jsp">
      <input type="button" class="btn btn-primary mb-2"name="update" value="Go to Rooom Types"readonly></button>
      </a>
    
      
    </div>
    <div class="col-4">
    <br>
    <c:url value="deleteevent.jsp" var="eventdelete">
    	<c:param name="id" value="${id}"/>
  	<c:param name="eventName" value="${eventName}"/>
  	<c:param name="eventDescription" value="${eventDescription}"/>
  	<c:param name="eventPrice" value="${eventPrice}"/>
  	<c:param name="eventID" value="${eventID}"/>
    </c:url>
    <a href="${eventdelete}">
   <input type="button" class="btn btn-primary mb-2"name="delete" value="Delete event Details >"readonly style="background-color:red"></button>
    </a>
    <br>
     <a href="eventTypeReport.jsp">
   <input type="button" class="btn btn-primary mb-2"name="delete" value="View All event details"readonly style="background-color:red"></button>
    </a>
    </div>
  </div>
  

 
  
  
</body>
<br>
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
		&copy; 2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">ITPM</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
</html>