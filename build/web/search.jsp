<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% HttpSession ses = request.getSession();
   String member_type = ses.getAttribute("member_type").toString();
   String name = ses.getAttribute("name").toString();
   String bgcolor = null;
   
   if (member_type.equals("Gold"))
	   bgcolor = "gold";
   else if (member_type.equals("Silver"))
	   bgcolor = "grey";
   else if (member_type.equals("Platinum"))
	   bgcolor = "rgb(100,100,0)";
   else if (member_type.equals("Bronze"))
	   bgcolor = "brown"; %>
	   
<style>
	td {
		padding : 20px;
		font-size : 50px;
	}
	select {
		height : 20px;
	}
	body {
		color : orange;
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
<script type="text/javascript">
	function validate() {
		var athletic = document.forms["timeanddateForm"]["activity"].value;
		var date = document.forms["timeanddateForm"]["date"].value;
		
		if (athletic == "select") {
			alert("select something!!!");
			return false;
		}
		
		if (date == "") {
			alert("Please select a date");
			return false;
		}
	}
</script>
</head>
<body>
	<div style="float:right">
		<a href="Profile_new.jsp"><%=name %></a>
	   </div>
	   
	   <form action="TimeTable.jsp" method="post" name="timeanddateForm" onsubmit="return validate()">
		<table>
			<tr>
				<td>Select Date</td>
				<td><input type="date" name="date"></td>
			</tr>
			<tr>
				<td>Select Sports or Gym</td>
				<td><select name="activity">
					<option>select</option>
					<option>Sport</option>
					<option>Gym</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><button type="submit" name="submit">Get Timetable</button></td>
			</tr>
		</table>
</body>
</html>