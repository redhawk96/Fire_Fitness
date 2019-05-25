package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Login() {
        super();
    
    }

	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String UserName = request.getParameter("user");
			String password = request.getParameter("password");
			String dbName = null;
			String dbPassword = null;
			
			String sql = "select * from member where ID=? AND password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project1", "root", "");
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, UserName);
			
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			PrintWriter out = response.getWriter();
			while(rs.next()) {
				
				dbName = rs.getString(1);
				dbPassword = rs.getString(3);
			}
			
			if(UserName.equals(dbName) && password.equals(dbPassword)) {
				HttpSession sohan = request.getSession();
				sohan.setAttribute("userID", UserName);
				sohan.setAttribute("pass", password);
				response.sendRedirect("Profile_new.jsp");
				out.println("You have successfully Logged In");
				
			}
			else {
				//response.sendRedirect("login.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("ErrorLogin.jsp");
				rd.include(request, response);
			}
			
		}
		
		catch (ClassNotFoundException e) {
			response.sendRedirect("404.jsp");
			e.printStackTrace();
		} catch (SQLException e) {
			response.sendRedirect("404.jsp");
			e.printStackTrace();
		}
	}

}
