package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
PrintWriter out = response.getWriter();
		
		String value = request.getParameter("yesno");
		out.println(value);
		
		if (value.equals("yes")) {
			String member_ID = request.getParameter("member_ID");
			Date date = Date.valueOf(request.getParameter("Date"));
			String trainer_ID = request.getParameter("trainer_ID");
			String schedule_ID = request.getParameter("schedule_ID");
			
			AbstractDeleteBooking del = new DeleteBooking(member_ID,trainer_ID,date,schedule_ID);
			
			try {
				if (del.isDeleted()) {
					response.sendRedirect("Profile.jsp");
					out.println("okay");
				}
				else {
					out.println("cannot be deleted");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				out.println(e);
			}
		}
		else if (value.equals("no"))  {
			response.sendRedirect("goBack.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
