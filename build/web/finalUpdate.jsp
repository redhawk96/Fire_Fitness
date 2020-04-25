<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Update</title>
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

div1{
float:left;
		margin-top: 180px;
		margin-left:0px;
/* 		margin-right: 150px; */
		padding:0px;
}
	div {
		float:right;
		margin-top: 150px;
		margin-left:2px;
		margin-right:300px;
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

	<%    String id =(request.getParameter("update"));
	   	  
	   	  //out.println(first);
	   	  
	   	  String query = "select * from member where ID = '" +id+ "'";
	   	  
	   	  Statement stmt = con.createStatement();
	   	  ResultSet rs = stmt.executeQuery(query); %>
	   
	   	  
		  <form action="Abishaan" method="post">	  
		  <div><p style="color:brown;font-size:50px;text-align:center">Member Update</p>
	<center><table style="position:relative">	 	  
	   	  <tr>
	   	  <% while (rs.next()) { %>
	     <td>
	   	  <input type="hidden" name="id" value="<%=rs.getString(1) %>"><br></td>
	   	  <td>Member name:<input type="text" name="Name" value="<%=rs.getString(2) %>"><br></td>
	   	  <td>Member type<input type="text" name="member_type" value="<%=rs.getString(4) %>"><br></td>
	   	  <td>  <button type="submit" >submit</button></td>
	   	  <% } %>
	   	  </tr>
	   	  	</table>
	   	  	</center>
	   	  	</div>
	   	  </form>
</body>
</html>