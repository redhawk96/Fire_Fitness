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
	<% 	HttpSession s = request.getSession();
		String type = s.getAttribute("member_type").toString();
		
	   if (type.equals("Gold") || type.equals("Platinum")) {
		   response.sendRedirect("SelectSportsOrGym.jsp");
	   } 
	   else {
		   s.setAttribute("Athletic", "Gym");
		   response.sendRedirect("MakeSchedule.jsp");
	   } %>
</body>
</html>