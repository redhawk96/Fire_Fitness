<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="dbconfig.jsp" %>
<%@ page import="jdbc.*" %>
<%--@ page import="java.util.Date" --%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% HttpSession ses = request.getSession();
   String id = ses.getAttribute("userID").toString(); 
   String name = ses.getAttribute("name").toString(); 
   String bgcolor = null;
   String member_type = ses.getAttribute("member_type").toString();
	   
	   if (member_type.equals("Gold"))
		   bgcolor = "gold";
	   else if (member_type.equals("Silver"))
		   bgcolor = "grey";
	   else if (member_type.equals("Platinum"))
		   bgcolor = "rgb(100,100,0)";
	   else if (member_type.equals("Bronze"))
		   bgcolor = "brown";
    %>

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
	caption {
		color: black;
		font-size: 50px;
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
	<% //String searchDate = request.getParameter("date");
	   ResultSet res = null;
	   Date searchDate = Date.valueOf(request.getParameter("date"));
	   String activity = request.getParameter("activity");
	
	   GenerateReport timetable = new GenerateReport(searchDate,activity);
	   Date date = timetable.getSearchDate();
	   //String activity = timetable.getActivity(); 
	   res = timetable.getTimeTable();
	   
	   if (res != null) {
	    %>
	<div style="float:left">
		<p>Date : <%=searchDate %></p>
	   </div>
	   
	<div style="float:right">
		<a href="Profile_new.jsp"><%=name %></a>
	   </div>
	   
	   <center>
	   		<table>
	   			<caption>Time Table</caption>
	   			<tr>
	   			<% if (activity.equalsIgnoreCase("Gym")) { %>
					<th>Workout Name</th>
				<%} else {%>
					<th>Sport Name</th>
				<% } %>
					<th>Trainer</th>
					<th>start time</th>
					<th>end time</th>
	   			</tr>
	   			<% while (res.next()) { %>
	   			<tr>
	   				<td><%=res.getString(2) %></td>
	   				<td><%=res.getString(1) %></td>
	   				<td><%=res.getString(3) %></td>
	   				<td><%=res.getString(4) %></td>
	   			</tr>
	   			<% } %>
	   			<% } %>
	   		</table>
	   	</center>
</body>
</html>