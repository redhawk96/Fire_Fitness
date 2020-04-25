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
	<%    String id =(request.getParameter("update"));
	   	  
	   	  //out.println(first);
	   	  
	   	  String query = "select * from trainer where Trainer_ID = '" +id+"'";
	   	  
	   	  Statement stmt = con.createStatement();
	   	  ResultSet rs = stmt.executeQuery(query); %>
	   	  
		  <form action="updateTrainer.jsp" method="post">	   	  
	   	  
	   	  <% while (rs.next()) { %>
	   	  
	   	  <input type="hidden" name="trainer_id" value="<%=rs.getString(1) %>"><br>
	   	  <input type="text" name="trainer_Name" value="<%=rs.getString(2) %>"><br>
	   	  <input type="text" name="salary" value="<%=rs.getString(4) %>"><br>
	   	  <button type="submit" name="submit">submit</button>
	   	  <% } %>
	   	  </form>
</body>
</html>