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
<html>
<head>
	<title>Profile</title>
	<link rel="icon" type="image/png"  href="icon.png">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

				<div class="row nav" >

					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="Profile.jsp">HOME</a>

					<div class="bg-dark col-md-12 py-5"></div>

					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="SelectSportsOrGym.jsp">MAKE SCHEDULE</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="viewSportsBooking.jsp">VIEW SPORTS BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="viewBooking.jsp">VIEW GYM BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="search.jsp">SEARCH BOOKINGS</a>
					<a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="<%=request.getContextPath()%>/Payment">CONFIRM BOOKINGS</a>

				</div>

			</div> <!-- End of left side nav bar -->



			<!-- Middle content -->
			<div class="col-8 offset-2 px-0">
				
				<div class="container p-0">

					<div class="row offset-1 " style="margin-top: 5%">

						<div class="card mx-3 px-0 rounded-0 col-md-3" >
						  <img class="card-img-top" src="book.png">
						  <a class="text-center btn btn-block btn-light rounded-0 mt-3 pt-4 pb-5 text-truncate" style="font-weight: 400" href="SelectSportsOrGym.jsp">Book Schedule</a>
						</div>

						<div class="card mx-3 px-0 rounded-0 col-md-3" >
						  <img class="card-img-top" src="tennis.png">
						  <a class="text-center btn btn-block btn-light rounded-0 mt-3 pt-4 pb-5 text-truncate" style="font-weight: 400" href="viewSportsBooking.jsp">View Sports Bookings</a>
						</div>

						<div class="card mx-3 px-0 rounded-0 col-md-3">
						  <img class="card-img-top" src="gym.png">
						 <a class="text-center btn btn-block btn-light rounded-0 mt-3 pt-4 pb-5 text-truncate"  style="font-weight: 400" href="viewBooking.jsp">View Gym Bookings</a>
						</div>

					</div>

					<div class="row offset-2" style="margin-top: 3%">

						<div class="card mx-3 px-0 rounded-0 col-md-4">
						  <img class="card-img-top mt-2" src="user.png">
						 <a class="text-center btn btn-block btn-light rounded-0 mt-0 pt-4 pb-4" style="font-weight: 400" href="Update.jsp?edit=<%=id %>">Update Profile</a>
						</div>

						<div class="card mx-3 px-0 rounded-0 col-md-4">
						  <img class="card-img-top mt-2" src="payment.jpg">
						 <a class="text-center btn btn-block btn-light rounded-0 mt-0 pt-4 pb-4" style="font-weight: 400" href="/Fire_Fitness/Payment">Confirm Bookings</a>
						</div>

					</div>

				</div>
					
			</div> <!-- End of middle content -->




			<!-- Right side nav bar -->
			<div class="col-md-2 offset-10 <%=bgcolor %> fixed-top" style="height: 100vh">

				<div class="row nav">

					<div class="<%=bgcolor %> col-md-12 py-4"></div>

					<div class="p-4">
					<div style="text-align:center">
					<img src="avatar.png" class="img-fluid rounded-circle">
					</div>
				</div>

					<div class="<%=bgcolor %> col-md-12 py-0"></div>

					<div class="<%=bgcolor %> col-md-12 py-0 text-center pl-3"><span style=" font-weight: 500">MEMBER ID :  ${userID}</span></div>


					<div class="<%=bgcolor %> col-md-12 py-0 text-center pl-3"><span style="font-weight: 500">WELCOME</span></div>

					<% HttpSession s = request.getSession();
					   Object userID = (s.getAttribute("userID"));
					   String ID = userID.toString();
					   //out.println(id);
					   //int i = Integer.parseInt(id);
					   Statement st = con.createStatement();
					   ResultSet r = st.executeQuery("select fName from member where ID = '" + ID + "'");
					   
					   while (r.next()) {
					   s.setAttribute("name", r.getString("fName")); %>
					<div class="<%=bgcolor %> col-md-12 pb-4 text-center pl-3"><span style="font-weight: 500"><%=r.getString("fName") %></span></div>
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