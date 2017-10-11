package mail;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.Mail;
import mail.Checkmail;

/**
 * Servlet implementation class send
 */
@WebServlet("/send")
public class send extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public send() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession ses=request.getSession(false);
		out.print("<html>");
		out.print("<body>");
		out.print("<form action='send' method='post'>");
		out.print("Email:<input type='email' name='email' required>");
		out.print("Email:<input type='submit' value='send'>");
		out.print("</form>");
		out.print("</body>");
		out.print("</html>");
		
		String mail= request.getParameter("email");                 // (String)ses.getAttribute("mailId");      //
		 String otp=(String)ses.getAttribute("otp");
		Checkmail.email=mail;
		Checkmail.rcvotp=otp;
		Checkmail.sendmail();
		
		response.sendRedirect("enterotp.jsp");
	}

}
