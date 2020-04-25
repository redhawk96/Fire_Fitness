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
	<h1>Welcome You are a member.</h1>
	
	<% Statement st = con.createStatement();
	   HttpSession ses = request.getSession();
	   
	   String username1 = ses.getAttribute("user").toString();
	   String password = ses.getAttribute("pass").toString();
	   String id = null;
	   
	   String query = "select ID from member where ID = '" +username+ "' AND password = '" +password+ "'";
	   ResultSet rs = st.executeQuery(query);
	   
	  if (rs.next())
		 id = rs.getString("id"); 
	  
		 
	   ses.setAttribute("userID", id);	  %>
	
	
	<a href="logoutProcess.jsp"> Log-Out </a></br></br>
	
	<a href="Update.jsp?edit=<%=id %>"> Change my Details </a>
</body>
</html>

