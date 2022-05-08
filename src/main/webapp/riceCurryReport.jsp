<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hotel_management";
String userid = "root";
String password = "123456";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<title>Uplift Digital Company|Loan Details</title>
</head>
<style>

body, html {
  height: 100%;
  margin: 0;
  font-family: 'Poppins', sans-serif;
   
  top: 0;
  bottom: 0;
  width: 100%;
  height: 100vh;
}


/* Header */
.header {
 
  padding: 1px;
  text-align: center;
  background: linear-gradient(to bottom, white 0%, white 100%);
}

.header h1 {

  margin-top:10px;
  font-size: 40px;
  color: MidnightBlue;
  text-shadow: 2px 2px LightBlue;
  font-style: italic;
}

.header p{
	font-size: 20px;
	font-weight: bold;
	font-style: italic;
	margin-top: -11px;
	
}
/*Horizontal navigation Bar*/
.button {
  background-color: MidnightBlue;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 6px 16px;
  font-size: 18px;
  width: 25%;
  

  
  
}

.button:hover {
  background-color: #777;
}

.header-right {
    float: middle;
  }
  .header img {
  float: left;
  padding: 12px;
  margin-top: 20px;
  width: 150px;
  height: 100px;
  margin-left: 20px;

}


table, th, td {
  border: 1px solid black;
  box-shadow: 1px 2px 0px #888888;
  border-collapse: collapse;
   margin-left:35px;
   margin-Right:35px;
  /* padding:50px;  */
   margin: auto;  
}


th, td {
  padding:px;
  text-align:center;
} 

.btn.btn-search{
background-color:   #7a7373  ; /* Green */
  border: none;
  color: white;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.btn-search:hover{
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.card-body{
background-color:    #eaf2f8   ;
 cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  border:none; 
  border-radius: 10px;
}

.card-body:hover{
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}

.card{
border : none;
border-radius: 20px;
}

.card-img-top{
border-radius: 10px;
}

.btn.btn-add{
background-color: red  ; /* Green */
  border: none;
  color: white;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.btn-add:hover{
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}






</style><meta charset="ISO-8859-1">
<title>Hotel Management System</title>
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

<div class="container">
  <div class="row">
    <div class="col-sm">
    <hr>
    </div>
    <div class="col-sm">
    <h2 style="text-align:center;">FOOD TYPE REPORT</h2>
    </div>
    <div class="col-sm">
    <hr>
    </div>
  </div>
</div>
<br>
<table class="table">
  <thead>
    <tr>
      <th scope="col">Food Code</th>
      <th scope="col">Category</th>
      <th scope="col">Name</th>
      <th scope="col">Description</th>
      <th scope="col">Food Price</th>
      
    </tr>
    <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from food_details where foodCategory ='RICE AND CURRY' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
    
  </thead>
  <tbody>
    <tr>
      <td><%=resultSet.getString("foodCode") %></td>
      <td><%=resultSet.getString("foodCategory") %></td>
      <td><%=resultSet.getString("foodName") %></td>
      <td><%=resultSet.getString("foodDescription") %></td>
      <td><%=resultSet.getString("foodPrice") %></td>

    </tr>
    
   
  </tbody>
  
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>





<%-- 

<table  style=" width:80%; font-size:14px; color:black;" border="1" >
<tr>
<td>Room Name</td>
<td>Description</td>
<td>Price</td>
<td>Room ID</td>





</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from room_details ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr>
<td><%=resultSet.getString("roomName") %></td>
<td><%=resultSet.getString("roomDescription") %></td>
<td><%=resultSet.getString("roomPrice") %></td>
<td><%=resultSet.getString("roomID") %></td>


</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
 --%>
 
 <br>
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
		&copy;  2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">ITPM</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
</body>
</html>