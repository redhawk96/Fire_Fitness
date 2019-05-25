<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String id = request.getParameter("delete");
		//out.println(id);
	   //int i = Integer.parseInt(id);
	   
	   //out.println(id);
	   
	  Statement st = con.createStatement();
	   int result = st.executeUpdate("delete from invoice where invoice_ID = '" +id+"'");
	   
	   if(result > 0){
		   int resulty = st.executeUpdate("delete from member ID'"+id+"'");
		   response.sendRedirect("notPaid.jsp");
	   }
	  else
		   out.println("cannot be deleted");%>
	
</body>
</html>