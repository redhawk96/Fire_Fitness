<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Final Update</title>
</head>
<body>
<% String trainer_name = request.getParameter("trainer_Name");
	float salary = Float.parseFloat(request.getParameter("salary"));
	String trainer_id = request.getParameter("trainer_id");
	

	String query="update trainer set Name= '"+trainer_name+ "',Contact_Number="+salary+"where Trainer_ID = '"+trainer_id+ "'";
	
	Statement stmt = con.createStatement();
 	int result = stmt.executeUpdate(query);
 	
 	if (result > 0)
 		response.sendRedirect("displayTrainers.jsp");
 	else 
 		out.print("sorry");
 	
 	
 	
 	
	
	
%>
</body>
</html>