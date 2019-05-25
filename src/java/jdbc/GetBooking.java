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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetBooking
 */
@WebServlet("/GetBooking")
public class GetBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBooking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession ses = request.getSession();
		PrintWriter out = response.getWriter();
		
		String member_ID = ses.getAttribute("userID").toString();
		Date date = Date.valueOf(ses.getAttribute("date").toString());
		String time_slot = ses.getAttribute("time").toString();
		String workout = ses.getAttribute("workout").toString();
		String trainer_ID = ses.getAttribute("trainer_ID").toString();
		String athletic = ses.getAttribute("Athletic").toString();
		
		ProcessBooking pb = new ProcessBooking(member_ID,trainer_ID,workout,date,time_slot);
		
		try {
			if (athletic.equalsIgnoreCase("Gym")) {
				if (pb.isInserted()) {
					response.sendRedirect("Profile.jsp");
				}
			}
			else if (athletic.equalsIgnoreCase("Sports")) {
				if (pb.isSportsInserted()) {
					response.sendRedirect("Profile.jsp");
				}
			}
			else {
				out.println("Booking is UNSUCCESSFULL");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.sendRedirect("exception.jsp");
			out.println(e);
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
