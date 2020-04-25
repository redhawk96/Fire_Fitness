<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> update Password </title>
<script type="text/javascript">
	function validatePassword() {
		var pass = document.forms["forgot"]["pass"].value;
		var cpass = document.forms["forgot"]["cpass"].value;
		
		if (pass != cpass) {
			alert("confirm password is not the same as the password you typed");
			return false;
		}
	}
</script>
</head>
<body>
	<div class="col-sm-2 bg-white">
				<img src="FireFitness.png" class="img-fluid">
	</div>
	<div style="float:right">
		<p class="pl-4"><a href="login.jsp" class="btn btn-outline-secondary btn-sm" style="margin-top:-5px">Go back </a></p>
	</div>
<center>
<form action="Forgot" method="post" name="forgot" onsubmit="return validatePassword()">
<h2> NOTE :- Enter your E-Mail to give your new Password. </h2>
<table>
	<tr>
	<td>Enter E-Mail : </td>
	<td> <input type="text" name="email" required="Please enter Email."> </td>
	</tr>
	<tr>
	<td> Enter New Password </td>
	<td> <input type="password" name="pass" required="required"> </td>
	</tr>
	<tr>
	<td> Confirm Password </td>
	<td> <input type="password" name="cpass" required="required"> </td>
	</tr>
</table>
	<input type="submit" value="Click">
	<input type="reset" name="Reset">
</form>
</center>


<% 
/*		
		
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
	

	String query="UPDATE registration SET password= '"+pass+ "EMail = "+email;
	
	

	Statement stmt = con.createStatement();
 	int result = stmt.executeUpdate(query);
 	
 	if (result > 0)
 		response.sendRedirect("displayTrainers.jsp");
 	else 
 		out.print("sorry");	

 	*/
%>


</body>
</html>