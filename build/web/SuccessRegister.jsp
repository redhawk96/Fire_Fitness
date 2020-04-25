<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="jdbc.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("You have successfully registered");
	</script>
	<div class="col-sm-2 bg-white">
				<img src="FireFitness.png" class="img-fluid">
	</div>
	
	
	
	<% HttpSession s = request.getSession();
	   String id = s.getAttribute("newID").toString();  %>
	   
	   <center>
	   	<p>Welcome!!!!</p>
	   	<p>Your identification number is : <%=id %> please use this id to login</p>
	   </center>
	   
	   <a href="login.jsp">Start Here</a>
	
	<%--@ include file="login.jsp" --%>
</body>
</html>