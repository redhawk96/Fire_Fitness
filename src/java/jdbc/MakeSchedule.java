package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class MakeSchedule
 */
@WebServlet("/MakeSchedule")
public class MakeSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeSchedule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBConnection db = new DBConnection();
	
		
		PrintWriter out = response.getWriter();
		
		try {
			if (db.isConnected()) {
				String workout = request.getParameter("workout");
				HttpSession ses = request.getSession();
				ses.setAttribute("workout", workout);
				WorkoutHandler wh = new WorkoutHandler(workout);
				
				if (wh.getWorkout().equals("Yoga")) {
					//out.println("Yoga");
					response.sendRedirect("Yoga.jsp");
				}
				else if (wh.getWorkout().equals("Cardio")) { 
					response.sendRedirect("Cardio.jsp");
				}
				else if (wh.getWorkout().equals("Pilates")) {
					response.sendRedirect("Pilates.jsp");
				}
				else if (wh.getWorkout().equals("Weights")) {
					response.sendRedirect("Weights.jsp");
				}
				else
					response.sendRedirect("MakeSchedule.jsp");
				//out.println(trainer);
				/*try {
					out.println(sdf.parse(request.getParameter("date")));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					//e.printStackTrace();
					out.println("omg");
				}
				//Date day = new Date(request.getParameter("date"));
				
				/*PrintWriter out = response.getWriter();
				out.println(workout);
				out.println(trainer);*/
				//out.println(date);
				
			}
			else {
				out.println("not connected");
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
