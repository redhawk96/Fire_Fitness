<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Status Page</title>
<style>
	body
	{
		background-color:teal;
	}
	.errorPage
	{
		position:fixed;
		left:0;
		top:10%;
		right:0;
		width:100%;
		height:100%;
		background-color:teal;
		text-align:center;
		z-index:10;
	}
	label
	{
		font-size:40px;
		font-family:Calibri;
		color:whitesmoke;
	}
	button
	{
		background-color:whitesmoke;
		border: 4px solid whitesmoke;
		padding:10px;
		width:50%;
		font-size:40px;
		font-family:calibri;
		margin-top:50px;
		outline:none;
		transition-durartion:0.5s;
	}
	button:hover
	{
		background-color:teal;
		color:whitesmoke;
	}
	img
	{
		width:20%;
	}
</style>
</head>
<body>
	<div class="errorPage">
		<%@page import="java.sql.*,java.util.*" %>
		<%
			if(request.getParameter("btnupdateProfile") != null)
			{
				try
        		{
        			Class.forName("com.mysql.jdbc.Driver");
        		
        			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tcc","root","");
        		
        			Statement st = con.createStatement();
        		
        			String firstname = request.getParameter("firstname");
            		String lastname = request.getParameter("lastname");
            		String username = request.getParameter("username");
            		String email = request.getParameter("email");
            		String address = request.getParameter("address");
            		String password = request.getParameter("password");
        		
        			int i = st.executeUpdate("UPDATE userdetails SET firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',address='"+address+"',password='"+password+"' WHERE username='"+username+"'");
        			out.println("<img src='../Icon/done.png'>"+"<br/>");
        			out.println("<label>"+"Profile details updated successfully..."+"</label>");
        		}
        		catch(Exception e)
        		{
        			out.println("<img src='../Icon/wrong.png'/>"+"<br/>");
        			out.println("<label>"+"Error occured"+" "+e+"</label>");
        		}
			}
			else
			{
				out.println("<label>"+"Something Missed..."+"</label>");
			}
        %>
        <br/>
        <a href="Dashboard.jsp"><button>OK</button></a>
	</div>
</body>
</html>