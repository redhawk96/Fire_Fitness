<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="dbconfig.jsp" %>

<%
HttpSession ses = request.getSession();
String id = ses.getAttribute("userID").toString(); 

String bgcolor = null;
String btncolor = null;
String member_type = null;

Statement stmt = con.createStatement();
String sql = "select member_type from member where ID = '" +id+ "'";

ResultSet res = stmt.executeQuery(sql);
   
   if (res.next()) {
	   member_type = res.getString("member_type");
	   ses.setAttribute("member_type", member_type);
	   
	   if (member_type.equals("Gold")){
		   bgcolor = "bg-warning";
	   		btncolor = "btn-warning";}
	   else if (member_type.equals("Silver")){
		   bgcolor = "bg-light";
		   btncolor = "btn-light";}
	   else if (member_type.equals("Platinum")){
		   bgcolor = "bg-secondary";
		   btncolor = "btn-secondary";}
	   else if (member_type.equals("Bronze")){
		   bgcolor = "bg-danger";
		   btncolor = "btn-danger";}
   }%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>TITLE</title>
	<meta charset="UTF-8">
	 <!-- Defining a description for the web page -->
	<meta name="description" content="Web tutorials">
	<!-- Defining keywords for search engines -->
	<meta name="keywords" content="HTML,CSS,XML,JavaScript">
	<!-- Defining the author of a page -->
	<meta name="author" content="HTML">
	<!-- Setting the viewport to make the webpage compatible on all devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- STYLE SHEETS -->
	<!-- Bootstrap 3.3.7 -->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
	<!-- Bootstrap 4.0 -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- END OF STYLE SHEETS -->

	<style type="text/css">
	
		.nav a{
			color: black;
			text-decoration: none;
			font-size: 15px;
			font-weight: 500;
		}

		.desktop {
			    display: none;
			  }
		/*Medium devices (tablets, 768px and up)*/
		@media (min-width: 768px) {
			.desktop {
			    display: block;
			  }
		 }

	</style>

</head>
<body>


	<div class="desktop">
	<!-- All the content below is defined under a main col-12 class [main-column] -->
	<div class="col-12">

		<!-- All the page content is defined under a main row class [main-row]-->
		<div class="row">

			<!-- left side nav bar -->
			<div class="col-md-2 bg-dark fixed-top" style="height: 100vh;">

				<div class="row nav">

					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="Profile.jsp">HOME</a>

					<div class="bg-dark col-md-12 py-5"></div>

					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="SelectSportsOrGym.jsp">MAKE SCHEDULE</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="viewSportsBooking.jsp">VIEW SPORTS BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="viewBooking.jsp">VIEW GYM BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="search.jsp">SEARCH BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="/Fire_Fitness/Payment">CONFIRM BOOKINGS</a>

				</div>

			</div> <!-- End of left side nav bar -->



			<!-- Middle content -->
			<div class="col-8 offset-2 px-0">

				<% Statement statement = con.createStatement();
			      String query = "select t.Name,w.workout_name,tb.Date,s.start_time,s.end_time from trainer t,workout w,schedule s,trainer_booking tb where tb.member_ID = '" +id+ "' AND tb.trainer_ID = t.Trainer_ID AND tb.workout_ID = w.workout_ID AND tb.schedule_ID = s.schedule_ID";
			      ResultSet rs = statement.executeQuery(query);
			      
			    %>
			   
			   <center>
			   		<table>
			   			<caption>Trainer Booking Details</caption>
			   			<tr>
							<th>Trainer Name</th>
							<th>Workout</th>
							<th>Date</th>
							<th>start time</th>
							<th>end time</th>
			   			</tr>
			   			<tr>
			   				<% while (rs.next()) { %>
			   				<td><%=rs.getString("Name") %></td>
			   				<td><%=rs.getString("workout_name") %></td>
			   				<td><%=rs.getString("Date") %></td>
			   				<td><%=rs.getString("start_time") %></td>
			   				<td><%=rs.getString("end_time") %></td>
			   				<td><a href="deleteBooking.jsp?trainer_name=<%=rs.getString("Name") %>&Date=<%=rs.getString("Date") %>&start_time=<%=rs.getString("start_time") %>&end_time=<%=rs.getString("end_time") %>&workout_name=<%=rs.getString("workout_name") %>">cancel</a></td>
			   			</tr>
			   			<% } %>
			   		</table>
			   </center>
				
			</div> <!-- End of middle content -->




			<!-- Right side nav bar -->
			<div class="col-md-2 offset-10 <%=bgcolor %> fixed-top" style="height: 100vh">

				<div class="row nav">

					<div class="<%=bgcolor %> col-md-12 py-4"></div>

					<div class="pl-5">
					<img src="avatar.jpeg" class="img-fluid rounded-circle" style="height: 250px">
				</div>

					<div class="<%=bgcolor %> col-md-12 py-3"></div>

					<div class="<%=bgcolor %> col-md-12 py-0 text-center pl-5"><span style=" font-weight: 500">MEMBER ID :  ${userID}</span></div>


					<div class="<%=bgcolor %> col-md-12 py-0 text-center pl-5"><span style="font-weight: 500">WELCOME</span></div>

					<% HttpSession s = request.getSession();
					   Object userID = (s.getAttribute("userID"));
					   String ID = userID.toString();
					   //out.println(id);
					   //int i = Integer.parseInt(id);
					   Statement st = con.createStatement();
					   ResultSet r = st.executeQuery("select fName from member where ID = '" + ID + "'");
					   
					   while (r.next()) {
					   s.setAttribute("name", r.getString("fName")); %>
					<div class="<%=bgcolor %> col-md-12 pb-4 text-center pl-5"><span style="font-weight: 500"><%=r.getString("fName") %></span></div>
					<% } %>
					
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-1 border-top-0 border-bottom-0 border-dark btn <%=btncolor %>" href="Update.jsp?edit=<%=id %>">UPDATE PROFILE</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-1 border-top-0 border-bottom-0 border-dark btn <%=btncolor %>" href="logoutProcess.jsp">LOGOUT</a>
					
					

				</div>

			</div> <!-- End of right-side nav bar -->


		</div> <!-- End of [main-row] -->

	</div> <!-- End of [main-column] -->
</div>








	<!-- SCRIPTS -->
	<!-- jQuery Library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 javascript -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
	<!-- popper Library -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<!-- Bootstrap 4.0 javascript -->
	<script src="js/bootstrap.bundle.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- END OF SCRIPTS -->
</body>
</html>