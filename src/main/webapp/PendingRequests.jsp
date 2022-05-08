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
  margin-left:5px;
  padding:1px;
}
th, td {
  padding:px;
  text-align:center;
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
<a href="Loan_Report.jsp "><button style="background-color:Crimson;color:white;font-size:15px;border:none;padding:10px;margin-left:30px;">View Loan Report</button></a><br><br>
<table  style=" width:80%; font-size:14px; color:black;" border="1" >
<tr>
<td>LoanId</td>
<td>PempId</td>
<td>Branch</td>
<td>RepaymentMethod</td>
<td>LoanAmount</td>
<td>RepaymentPeriod</td>




</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from food_details where foodCategory= 'PIZZA'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("foodCode") %></td>
<td><%=resultSet.getString("foodCategory") %></td>
<td><%=resultSet.getString("foodName") %></td>
<td><%=resultSet.getString("foodDescription") %></td>
<td><%=resultSet.getString("foodPrice") %></td>


</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>