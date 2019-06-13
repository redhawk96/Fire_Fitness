<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>fire fitness</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    <style>
        body{
            background-image: url("free weights.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }

        a{
            font-size: 200%;
            color: black;
        }
    </style>
</head>
<body>
<img src="Fire_Fitness_618112842253.png" class="img-responsive" alt="Responsive image" style="width:15%;height: auto;">
 <%--<form action="verification" method="get">--%>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Login</h4>
            </div>
            <div class=" ">

                <form action="verification.jsp" method="get">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Username</label>
                        <input type="text" class="form-control" name="user" placeholder="username">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" name="pass" placeholder="Password">
                    </div>
					<div class="modal-footer">
                		<input type="submit" class="btn btn-primary" value="login"><br>
                		<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button><br>

                		<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
                		<!--<input type="submit" class="btn btn-primary" value="Register now">-->
            		</div>
            	</form>
            	<a href= "registration.jsp" class="btn btn-primary">Register now</a>
            </div>
        </div>
    </div>
</div>
<nav  style="background-color: transparent">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
            </a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Home</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">About us <span class="sr-only">(current)</span></a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Facilities <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Gym</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Futsal</a></li>
                        <li><a href="#">Badminton</a></li>
                        <li><a href="#">swimming</a></li>
                        <li role="separator" class="divider"></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#myModal" data-toggle="modal" data-target="#myModal">Login</a></li>

            </ul>
            </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

</body>
</html>