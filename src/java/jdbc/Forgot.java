package jdbc;


import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	
	
    
    public Forgot() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
			
				
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
		

		String query="UPDATE member SET password= '"+pass+ "' where EMail = '"+email+ "'";
		
		

		Statement stmt = conn.createStatement();
	 	int result = stmt.executeUpdate(query);
	 	
	 	if (result > 0)
	 		response.sendRedirect("Success.jsp");
	 	else 
	 		response.sendRedirect("ForgotPasswordProblem.jsp");
	 		out.print("sorry");	
		}
		
		catch(Exception e){
			
			out.println(e);
		}
		
	}

}
