package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {
			String UserName = request.getParameter("user");
			String password = request.getParameter("password");
			String EMail = request.getParameter("email");
			String member_type = request.getParameter("type");
			String Gender = request.getParameter("gender");
			int age = Integer.parseInt(request.getParameter("age"));
			
			Member m = new Member(UserName,password,member_type,EMail,Gender,age);
			
			if (m.isInserted()) {
				String id = m.getMemberID();
				HttpSession session = request.getSession();
				session.setAttribute("newID", id);
				response.sendRedirect("SuccessRegister.jsp");
			}
			else {
				response.sendRedirect("UnsuccessRegister.jsp");
			}


			
		}
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			out.println(e);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e);
		}
	}

}
