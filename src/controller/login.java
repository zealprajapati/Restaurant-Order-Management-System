package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import snippet.SMTP;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public login() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		SMTP mail= new SMTP();
		String getemail = request.getParameter("email");
		int o= mail.generateOTP(5);
		session.setAttribute("otp", o);
		
		System.out.println(o);
		mail.sendMail(getemail,o);
		String s=  request.getParameter("tbl");
		int i = Integer.parseInt(s);
		session.setAttribute("loginid",i);
		String type;
		if(i==123456)
		{
			type="admin";
		}
		else
		{
			type="customer";
		}
		String s1=  request.getParameter("email");
		PrintWriter out= response.getWriter();
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost/project","root","root");
		Statement x= c.createStatement();
		x.executeUpdate("INSERT INTO login (table_id,email_id,user_type) VALUES ('"+i+"','"+s1+"','"+type+"');");
		x.close();
		c.close();
		response.sendRedirect("client/otpverify.jsp?dv="+o);
		}
		catch(Exception e)
		{
			out.println(e);
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
