<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<img src="Fire_Fitness_618112842253.png" class="img-responsive" alt="Responsive image" style="width:15%;height: auto;">
	<form action="LoginServlet" method="post">
		<!--  Insert ID : <input type ="text" name="id"><br>-->
		Username : <input type="text" name="admin_name"><br>
		password : <input type="text" name="password"><br>
		<input type="submit" name="submit" value="submit">
	</form>
</body>
</html>