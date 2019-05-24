/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shoppingCart;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
@WebServlet(name = "PaymentConfirmed", urlPatterns = {"/PaymentConfirmed"})
public class PaymentConfirmed extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String userId=(String)request.getSession().getAttribute("userID");
        int invoiceid=(int)request.getSession().getAttribute("InvoiceId");
        Double membershipFee=(Double)request.getSession().getAttribute("MembershipFee");
        Double gymReservationTotal=(Double)request.getSession().getAttribute("gymReservationTotal");
        Double sportReservationTotal=(Double)request.getSession().getAttribute("sportReservationTotal");
        Double totalPayment=(Double)request.getSession().getAttribute("TotalPayment");
        RegisterPayment registerPayment = new RegisterPayment();
                
        try (PrintWriter out = response.getWriter()) {
            
        	try {
        		
        		String checkConfirmationTimeStamp = registerPayment.getConfirmationTimeStamp(userId);

                if (checkConfirmationTimeStamp != "0") {
                    out.println("<html><body><script>window.alert('You have already confirmed for this month'); window.location.href='/Fire_Fitness/Payment';</script></body></html>");

                }
                
                if(checkConfirmationTimeStamp == "0") {
                	boolean status = registerPayment.registerMonthlyPayment(userId, invoiceid, gymReservationTotal, sportReservationTotal, membershipFee, totalPayment);
                    
                	if(status == true) {
                        out.println("<html><body><script>window.alert('You have successfully confirmed payemnt for this month'); window.location.href='/Fire_Fitness/Payment';</script></body></html>");
                	}
            }

        		
        	}catch(Exception e) {
        		out.println(e);
        	}//End of try catch
        	
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
