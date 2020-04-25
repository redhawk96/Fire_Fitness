<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
<div align="center">
<h1> Registration </h1>
<div class="col-sm-2 bg-white">
				<img src="FireFitness.png" class="img-fluid">
</div>
<form action="Registration" method="post">
	<table>
		 
	
		<tr>
			<td> User name : <input type="text" name="user" required="requirde"> </td>
		</tr>	
		<tr>	
			<td> Password : <input type="password" name="password" required="requirde"> </td>
		</tr>	
		<tr>	
			<td> E-Mail : <input type="text" name="email" required="requirde"> </td>
		</tr>
		<tr>	
			<td> Member_Type : <select name="type" >
				  <option>Platinum</option>
				  <option>Gold</option>
				  <option>Silver</option>
				  <option>Bronze</option>
				  </select> </td>			
		</tr>
		<tr>
			<td> Gender : </td>
			<td><input type="radio" name="gender" value="male">Male<br></td>
			<td><input type="radio" name="gender" value="female">Female<br></td>
		</tr>
		<tr>
		<td> Age : <input type="text" name="age" required="required"></td>
		</tr>
	</table>	
<input type="submit" value="REGISTER"><br>
<input type="reset" value="RESET">
</form>
</div>
</body>
</html>
	