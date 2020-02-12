package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/deleteorder")
public class deleteorder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public deleteorder() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		int id = (Integer) session.getAttribute("loginid");
		System.out.println(id);
		
		String x = request.getParameter("number");
		int c = Integer.parseInt(x);
		List lx = (List) session.getAttribute("listadded");
		List lx1 = (List) session.getAttribute("listprice");
		lx.remove(c);
		lx1.remove(c);
		try
		{
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/project","root","root"); 
			Statement st=con.createStatement();
			st.executeUpdate("UPDATE cart set ItemName='"+lx.toString()+"',Price='"+lx1.toString()+"' WHERE TableID='"+id+"'");
		}
		catch(Exception e)
		{
			out.println(e);
		}
		response.sendRedirect("client/displaydata.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
