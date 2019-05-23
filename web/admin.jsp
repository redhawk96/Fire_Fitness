<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dash board</title>
<style>
div1{
float:left;
		margin-top: 180px;
		margin-left:0px;
/* 		margin-right: 150px; */
		padding:0px;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 50px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 20px 90px;
      background-color:#008CBA;
    text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
    background-color: #555;
    color: white;
}
li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>
</head>
<body>
<img src="Fire_Fitness_618112842253.png" class="img-responsive" alt="Responsive image" style="width:15%;height: auto;">
<div1>
<ul>
  <li><a class="active" href="admin.jsp">Dashboard</a></li>
  <li><a href="#home">Home</a></li>
  <li><a href="displayTable.jsp">Members List</a></li>
  <li><a href="displayTrainers.jsp">Trainers List</a></li>
  <li><a href="#about">Payment Confirmation</a></li>
</ul>
</div1>

</body>
</html>