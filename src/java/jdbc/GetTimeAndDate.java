package jdbc;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetTimeAndDate
 */
@WebServlet("/GetTimeAndDate")
public class GetTimeAndDate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTimeAndDate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		
		Date d = Date.valueOf(request.getParameter("date"));
		String time = request.getParameter("time");
		String trainer_id = session.getAttribute("trainer_ID").toString();
		PrintWriter out = response.getWriter();
		out.println(d);
		out.println(time);
		
		ProcessTimeAndDate pta = new ProcessTimeAndDate(d,time,trainer_id);
		
		try {
			if (pta.checkAvailability()) {
				out.println("Successfull");
				HttpSession ses = request.getSession();
				ses.setAttribute("date", d);
				ses.setAttribute("time", time);
				response.sendRedirect("ConfirmBooking.jsp");
			}
			else {
				response.sendRedirect("Error.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
