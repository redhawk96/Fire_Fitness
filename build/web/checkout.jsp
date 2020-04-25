<%@ page import = "java.io.*,java.util.*" %>
<%@page import="shoppingCart.*" %>
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
    <title>Checkout</title>
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
    
                    .table-col-01{
                background-color: #DAEAE7;
            }

            .table-last-row{
                background-color: #D9ECFA;
            }

            .table-last-row-button{
                background-color: #DAEACF;
            }
    
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

                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info" href="Profile_new.jsp">HOME</a>

                    <div class="bg-dark col-md-12 py-5"></div>

                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="SelectSportsOrGym.jsp">MAKE SCHEDULE</a>
                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="viewSportsBooking.jsp">VIEW SPORTS BOOKINGS</a>
                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="viewBooking.jsp">VIEW GYM BOOKINGS</a>
                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate" href="search.jsp">SEARCH BOOKINGS</a>
                    <a class="col-md-12 py-4 text-left rounded-0 border-right-0 border-left-0 border-top-0 border-bottom border-dark btn btn-info text-truncate active" href="/Fire_Fitness/Payment">CONFIRM BOOKINGS</a>

                </div>

            </div> <!-- End of left side nav bar -->



            <!-- Middle content -->
            <div class="col-8 offset-2 px-0">

                <div class="container">


                <div class="row border-bottom border border-dark border-top-0 border-right-0 border-left-0">
                    <div class="col-sm-4 p-0 m-0"><img src="FireFitness.png" class="img-fluid" style="margin-top:-2%; height:200px"></div>
                    <div class="col-sm-4 offset-4 pt-5">
                        <table>
                            <tr>
                                <td colspan="2" class="text-center">FIRE FITNESS</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="text-center"><hr></td>
                            </tr>
                            <tr>
                                <td class="py-1">Address </td> 
                                <td class="px-2">: St Michaels Rd, Colombo</td> 
                            </tr>
                            <tr>
                                <td class="py-1">Contact No </td> 
                                <td class="px-2">: 0112 446 790</td> 
                            </tr>
                        </table>

                    </div>
                </div>

                <div class="row my-5">

                    <div class="col-sm-4 offset-1">

                        <table>
                            <tr>
                                <td class="border-0 py-1">MEMBER ID</td>
                                <td class="border-0 px-4"> : <sapan class="px-2"></span>#${userID}</td>
                                </tr>
                                <tr>
                                    <td class="border-0 py-1">INVOICE TO</td>
                                    <td class="border-0 py-1 px-4"> : <sapan class="px-2"></span>${MemberFirstName}</td>
                                    </tr>
<!--                                    <tr>
                                        <td class="border-0 py-1">CONTACT NO</td>
                                        <td class="border-0 py-1 px-4"> : <sapan class="px-2"></span>0770798025</td>
                                        </tr>-->
                                        </table>
                                        </div>

                                        <div class="col-sm-3 offset-3">
                                            <table>
                                                <tr>
                                                    <td class="border-0 py-1">INVOICE NO</td>
                                                    <td class="border-0 px-4"> : <sapan class="px-2"></span>#${InvoiceId}</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="border-0 py-1">CURDATE</td>
                                                        <td class="border-0 px-4"> : <sapan class="px-2"></span>
                                                        <%
                                                            long millis = System.currentTimeMillis();
                                                            java.sql.Date date = new java.sql.Date(millis);
                                                            out.print(date);
                                                        %>
                                                        </td>
                                                        </tr>
                                                        </table>
                                                        </div>

                                                        </div>





                                                        <table class="table">
                                                            <thead class="text-white" style="background-color: #02746C">
                                                                <tr>
                                                                    <th scope="col" class="border border-white border-right-0 border-top-0"></th>
                                                                    <th scope="col" class="border border-white border-right-0 border-left-0 border-top-0">ITEM DESCRIPTION</th>
                                                                    <th scope="col" class="border border-white border-right-0 border-left-0 border-top-0">QUANTITY</th>
                                                                    <th scope="col" class="border border-white border-right-0 border-left-0 border-top-0">UNIT PRICE</th>
                                                                    <th scope="col" class="border border-white border-left-0 border-top-0">TOTAL</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td scope="row" class="table-col-01 border border-white">1</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Membership Fee</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">${MembershipType}</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Rs. ${MembershipFee}</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Rs. ${MembershipFee}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td scope="row" class="table-col-01 border border-white">2</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">GYM Reservations</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">
                                                                        Yoga <span style="float:right;" class="mr-3"> ${YogaBookings}</span><hr>
                                                                        Cardio <span style="float:right" class="mr-3">${CardioBookings}</span> <hr>
                                                                        Pilates <span style="float:right" class="mr-3">${PilatesBookings}</span><hr>
                                                                        Weights <span style="float:right" class="mr-3">${WeightsBookings}</span>
                                                                    </td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0 ">Rs. 1000<hr>Rs. 1200<hr>Rs. 1300.0 <hr>Rs. 1400</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Rs. ${gymReservationTotal}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td scope="row" class="table-col-01 border border-white">3</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">SPORT Reservations</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">
                                                                        Badminton  <span style="float:right;" class="mr-3">${BadmintionBookings}</span><hr>
                                                                        TableTennis <span style="float:right;" class="mr-3">${TennisBookings}</span><hr>
                                                                        Futsal <span style="float:right;" class="mr-3">${FutsalBookings}</span><hr>
                                                                        Swimming <span style="float:right;" class="mr-3">${SwimmingBookings}</span>
                                                                    </td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Rs. 1000<hr>Rs. 1200<hr>Rs. 1300<hr>Rs. 1400</td>
                                                                    <td class="bg-light border border-white border-right-0 border-left-0">Rs. ${sportReservationTotal}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-white"></td>
                                                                    <td colspan="2" class="table-last-row border-bottom-0">Discounts</td>
                                                                    <td class="bg-light border border-white">${discountPercentage}% </td>
                                                                    <td class="table-last-row border border-white text-center">Rs. ${discountAmount}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-white border-top-0"></td>
                                                                    <td colspan="2" class="table-last-row border-top-0">TOTAL Payment</td>
                                                                    <td class="bg-light border border-white"></td>
                                                                    <td class="table-last-row border border-white text-center">Rs. ${TotalPayment}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="bg-white border-top-0"></td>
                                                                    <td colspan="3" class="bg-light border border-white border-right-0 border-left-0">** I hearby confirm I agree to all regulations stated by the organization and do my best to act on them</td>
                                                                    <td class="table-last-row-button border border-white btn btn-success btn-lg btn-block rounded-0" onclick="location.href = '/Fire_Fitness/PaymentConfirmed';">CONFIRM</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>

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