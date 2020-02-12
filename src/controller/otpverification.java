package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OTPCHECK
 */
@WebServlet("/otpverification")
public class otpverification extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public otpverification() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int s= (Integer)session.getAttribute("otp");
		String s1=request.getParameter("date");
		int i1 = Integer.parseInt(s1);
		if(s==i1)
		{
			response.sendRedirect("client/index.jsp");
		}
		else
		{
			response.sendRedirect("client/otpverify.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
