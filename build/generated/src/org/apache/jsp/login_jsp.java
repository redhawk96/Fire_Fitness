package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>Login</title>\r\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\"  href=\"icon.jpeg\">\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css\" integrity=\"sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4\" crossorigin=\"anonymous\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"col-sm-12 p-0\" style=\"overflow: hidden; height: 100vh\">\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-sm-10\">\r\n");
      out.write("\t\t\t<img src=\"background.jpg\" class=\"img-fluid\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-sm-2 bg-white\">\r\n");
      out.write("\t\t\t\t<img src=\"FireFitness.png\" class=\"img-fluid\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<form style=\"margin-top: 50px\" class=\"pr-4\" action=\"Login\" method=\"POST\">\r\n");
      out.write("\t\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t\t    <label for=\"exampleInputEmail1\">Member Identification </label>\r\n");
      out.write("\t\t\t    <input type=\"text\" class=\"form-control\" placeholder=\"Identification Number\" name=\"user\" required>\r\n");
      out.write("\t\t\t    <small class=\"form-text text-muted\">Please safe keep your identification number after registering.</small>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t\t    <label for=\"password\">Password</label>\r\n");
      out.write("\t\t\t    <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"password\" required>\r\n");
      out.write("\t\t\t    <a class=\"text-center\" href = \"forgotPass.jsp\"  style=\"font-size:12px\"> Forgot Password ?</a>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t  <button type=\"submit\" class=\"btn btn-primary btn-block\" name=\"submit\">Login</button>\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t<hr>\r\n");
      out.write("\t\t\t<p class=\"pl-4\">Want to join? <a href=\"registration.jsp\" class=\"btn btn-outline-secondary btn-sm\" style=\"margin-top:-5px\">Sign up here </a></p>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js\" integrity=\"sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js\" integrity=\"sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
