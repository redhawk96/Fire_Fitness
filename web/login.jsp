<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="icon" type="image/png"  href="icon.jpeg">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>





<div class="col-sm-12 p-0" style="overflow: hidden; height: 100vh">
	

<div class="row">
		<div class="col-sm-10">
			<img src="background.jpg" class="img-fluid">
		</div>
			<div class="col-sm-2 bg-white">
				<img src="FireFitness.png" class="img-fluid">
				
				<form style="margin-top: 50px" class="pr-4" action="Login" method="POST">
			  <div class="form-group">
			    <label for="exampleInputEmail1">Member Identification </label>
			    <input type="text" class="form-control" placeholder="Identification Number" name="user" required>
			    <small class="form-text text-muted">Please safe keep your identification number after registering.</small>
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" class="form-control" placeholder="Password" name="password" required>
			    <a class="text-center" href = "forgotPass.jsp"  style="font-size:12px"> Forgot Password ?</a>
			  </div>
			  <button type="submit" class="btn btn-primary btn-block" name="submit">Login</button>
			</form>
			<hr>
			<p class="pl-4">Want to join? <a href="registration.jsp" class="btn btn-outline-secondary btn-sm" style="margin-top:-5px">Sign up here </a></p>
	</div>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>