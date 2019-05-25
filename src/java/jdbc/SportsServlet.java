package jdbc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SportsServlet
 */
@WebServlet("/SportsServlet")
public class SportsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SportsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String sport = request.getParameter("sports");
		
		if (sport.equalsIgnoreCase("Badminton"))
			response.sendRedirect("Badminton.jsp");
		else if (sport.equalsIgnoreCase("Futsal"))
			response.sendRedirect("Futsal.jsp");
		else if (sport.equalsIgnoreCase("Table Tennis"))
			response.sendRedirect("TableTennis.jsp");
		else if (sport.equalsIgnoreCase("Swimming"))
			response.sendRedirect("Swimming.jsp");
		
		HttpSession ses = request.getSession();
		ses.setAttribute("workout", sport);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
