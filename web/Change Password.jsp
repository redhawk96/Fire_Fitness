<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="ResetPassServlet" method="post">
<table align="center">
<tr>
	<td> UserName </td>
	<td><input type="text" name="Username" disabled></td>
</tr>
<tr>
	<td> Password </td>
	<td><input type="password" name="password" required="required" /></td>
</tr>
<tr>
	<td> New Password </td>
	<td><input type="password" name="newpassword" required="required" id="newpassword"/></td>
</tr>
<tr>
	<td> ReEnter Password </td>
	<td><input type="password" name="renewpassword" required="required" id="verifynewpassword"/></td>
</tr>
<tr>
	<td>  </td>
	<td><input type="submit" value="Reset"/></td>
	<td><input type="submit" onclick="validation()"/></td>
</tr>
</table>
</form>
<script type="text/javascript">
	function validation(){
		var password = document.getElementById("newpassword").value;
		
		document.write(password);
	}
</script>
</body>
</html>