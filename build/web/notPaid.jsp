<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconfig.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button1{background-color: #f44336;}

	th,td {
		padding:5px;
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
    color: ;
}
li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
	div {
		float:right;
		margin-top: 100px;
		margin-left:0px;
		margin-right:100px;
		padding:0px;
		
	}
	div1{
		float:left;
		margin-top: 180px;
		margin-left:0px;
/* 		margin-right: 150px; */
		padding:0px;
		
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
		<li><a href="payment.jsp">Payment Confirmation</a></li>
		<li><a href="notPaid.jsp">Pending Payments</a></li>
	</ul>
	</div1>

   <%    
   String query = "select * from invoice WHERE status LIKE 'Pending'";
	 %>
	   	  
	   	 <div> <p style="color:brown;font-size:50px;text-align:center">Pending Payments by</p>
	<center><table style="position:relative">
		<tr>
			<th>Member ID</th>
			<th>Invoice ID </th>
			<th>Gym Total</th>
			<th>Sports Total</th>
			<th>Membership fee</th>
			<th>Total Payment</th>
			<th>Confirmed Date</th>
			<th>Status</th>
		</tr>
		
	   	  
	   	  
	   	 <%  Statement stmt = con.createStatement();
	   	  ResultSet rs = stmt.executeQuery(query); %>
	   	  
	   	  <% while (rs.next()) { %>
		<tr>
			<td><% out.println(rs.getString(1)); %></td>
			<td><% out.println(rs.getString(2)); %></td>
			<td><% out.println(rs.getString(3)); %></td>
			<td><% out.println(rs.getString(4)); %></td>
			<td><% out.println(rs.getString(5)); %></td>
			<td><% out.println(rs.getString(6)); %></td>
			<td><% out.println(rs.getString(7)); %></td>
			<td><% out.println(rs.getString(8)); %></td>
					
				
			<!--  <td><a href=""><button class="button">send warning</button></a>-->
			<td><a href="delBooking.jsp?delete=<%=rs.getString(2) %>"><button class="button button1">cancel membership</button></a>
	  </tr>
		<% } %>
		</table></center>
		</div>

</body>
</html>