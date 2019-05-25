package jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetTrainer
 */
@WebServlet("/GetTrainer")
public class GetTrainer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTrainer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		String trainer = request.getParameter("trainer");
		String athletic = session.getAttribute("Athletic").toString();
		String trainer_ID = null;
		PrintWriter out = response.getWriter();
		
		out.println(trainer);
		//out.println(athletic);
		
		new ProcessTrainer(trainer);
		
		try {
			if (athletic.equalsIgnoreCase("Sports"))
				trainer_ID = ProcessTrainer.getSportsTrainerID();
			else if (athletic.equalsIgnoreCase("Gym"))
				trainer_ID = ProcessTrainer.getGymTrainerID();
			
			if (trainer_ID != null) {
				session.setAttribute("trainer_ID", trainer_ID);
				session.setAttribute("trainer_name", trainer);
				response.sendRedirect("SelectTime.jsp");
			}
			else
				out.println(trainer_ID);
				//response.sendRedirect("MakeSchedule.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
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
