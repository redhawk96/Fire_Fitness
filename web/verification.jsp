<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String uname = request.getParameter("user");
	   String password = request.getParameter("pass");
	   
	   Statement stmt = con.createStatement();
	   ResultSet rs = stmt.executeQuery("select * from login"); 
	   
	  // out.println(uname);
	  // out.println(password);
	   	
	   while(rs.next()) {
		   if (uname.equals(rs.getString(1)) && password.equals(rs.getString(2)))
			   response.sendRedirect("Profile.jsp");
		   else
			   out.println("error");
		
		      
	   } %>
</body>
</html>