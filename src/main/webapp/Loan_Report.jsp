<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
  font-family: 'Poppins';
  background: SteelBlue;
  text-align: center; 
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
  box-shadow: 1px 3px 0px #888888;
  border-collapse: collapse;
  margin-left:10px;
  padding:1px;
  margin-left: auto;
  margin-right: auto;
}
th, td {
  padding:px;
  text-align: center;
}






</style>
<body>

<div class="header">
	
		 <img src="Images/logo1.png" style="width:100px;height:60px;background-color:gray;">
		<div class="header-right">
  		<h1>Uplift Digital Marketing (Pvt) Ltd.</h1>
  		<p>Employee Management System</p>
  		</div>
  	
	</div>

		<button class="button" onclick="#" >Home</button>
		<button class="button" onclick="#" >Admin</button>
		<button class="button" onclick="#" >Contact</button>
		<button class="button" onclick="#" >About Us</button>
		

<br><br>

<h1  style="background-color:white;color:black;">Food Item  REPORT </h1>

<br>
<p style ="color:white; font-weight: bold;">Pizza Amount</p>
<table  style=" width:50%; font-size:14px; color:black;" border="1" >
<tr style="background-color:white;color:black;">

<td>Total Pizza Count </td>
</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = "SELECT COUNT(id) AS LOANAPPLICANTS FROM food_details  ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>


<tr style="background-color:greenyellow;color:black;">

<td><%=resultSet.getString("LOANAPPLICANTS") %></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
<br>
<br>


<p style ="color:white; font-weight: bold;">Loan Amount Statistics</p>
<table  style=" width:50%; font-size:14px; color:black;" border="1" >
<tr style="background-color:white;color:black;">
<td>Total no of Approved Loans </td>
<td>Total no of Not Approved Loans</td>
<td>Total Approved Loan Amount</td>
</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = "select COUNT(foodPrice) AS APPROVEDLOANS FROM food_details where foodPrice = 'Rs.3000' ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>


<tr style="background-color:greenyellow;color:black;">

<td><%=resultSet.getString("APPROVEDLOANS") %></td>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

<!-- TOTAL EMPLOYEES  -->


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = "select * from hotel_management.food_details AS NOTAPPROVEDLOANS   where foodCategory = 'PIZZA'  ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>




<td><%=resultSet.getString("NOTAPPROVEDLOANS") %></td>
<td><%=resultSet.getString("NOTAPPROVEDLOANS.foodName") %></td>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>



<!-- TOTAL APPROVED LOAN AMOUNT  -->


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = "SELECT SUM(loanAmount) AS TOTALAMOUNT  FROM ems.loan where status = 'Approved'; ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>




<td><%=resultSet.getString("TOTALAMOUNT") %></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br>
<br>

<!-- report of loan applicants from branches  -->

<p style ="color:white; font-weight: bold;">Number of Loan Applicants Categorized by branch</p>
<table  style=" width:50%; font-size:14px; color:black;" border="1" >
<tr style="background-color:white;color:black;">

<td>Wallawatte </td>
<td>Gampaha </td>
<td>Galle </td>
</tr>



<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = " SELECT COUNT(pempId) AS BRANCHWALLAWATTE  FROM ems.loan where branch = 'Wallawatte' ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>



<tr style= " background-color:greenyellow;color:black;">
<td><%=resultSet.getString("BRANCHWALLAWATTE") %></td>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = " SELECT COUNT(pempId) AS BRANCHGampaha  FROM ems.loan where branch = 'Gampaha' ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>




<td><%=resultSet.getString("BRANCHGampaha") %></td>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>




<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

String sql = " SELECT COUNT(pempId) AS BRANCHGalle  FROM ems.loan where branch = 'Galle' ";

resultSet  = statement.executeQuery(sql);




while(resultSet.next()){
%>




<td><%=resultSet.getString("BRANCHGalle") %></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>

<a href="PendingRequests.jsp "><button style="background-color:Crimson;color:white;font-size:15px;border:none;padding:10px;margin-left:30px;float:left;marging-top:20px;">GO BACK</button></a><br><br>

    <a href ="Loan_Report.jsp"  download ="file.doc" > Link Text </a>  

</body>
</html>