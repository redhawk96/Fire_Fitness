<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% HttpSession ses = request.getSession();
   String id = ses.getAttribute("userID").toString(); 
   String name = ses.getAttribute("name").toString(); 
   String bgcolor = null;
   String member_type = null;

   Statement stmt = con.createStatement();
   String sql = "select member_type from member where ID = '" +id+ "'";
   
   ResultSet res = stmt.executeQuery(sql);
   
   if (res.next()) {
	   member_type = res.getString("member_type");
	   ses.setAttribute("member_type", member_type);
	   
	   if (member_type.equalsIgnoreCase("Gold"))
		   bgcolor = "gold";
	   else if (member_type.equalsIgnoreCase("Silver"))
		   bgcolor = "grey";
	   else if (member_type.equalsIgnoreCase("Platinum"))
		   bgcolor = "rgb(100,100,0)";
	   else if (member_type.equalsIgnoreCase("Bronze"))
		   bgcolor = "brown";
   } %>

<style>
	td,th {
		padding : 20px;
		font-size : 30px;
	}
	select {
		height : 20px;
	}
	body {
		color : cyan;
		background-color : <%=bgcolor %>;
	}
	div {
		font-size: 40px;
	}
	
	a {
		color : blue;
		text-decoration : none;
	}
	a:hover {
		color: red;
	}
</style>
</head>
<body>
	<center>
		<table>
			<th>Sport</th>
			<th>Trainer</th>
			<th>start time</th>
			<th>end time</th>
		</table>
	</center>
</body>
</html>