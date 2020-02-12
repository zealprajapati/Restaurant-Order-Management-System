package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/additem")
public class additem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List ls = new ArrayList();
	List ls1 = new ArrayList();

	public additem() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		String status = "unpaid";
		String s = request.getParameter("name");
		String s1 = request.getParameter("price");
		String s2 = request.getParameter("done");
		if (s != null && s1 != null) {
			int i1 = Integer.parseInt(s1);
			ls.add(s);
			ls1.add(i1);
			response.sendRedirect("client/index.jsp");
		}
		int loginid = (Integer) session.getAttribute("loginid");
		if (s2 != null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");

				Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "root");
				Statement x = c.createStatement();
				x.executeUpdate("INSERT INTO cart (TableID,ItemName,Price,status) VALUES ('" + loginid + "','"
						+ ls.toString() + "','" + ls1.toString() + "','" + status + "');");
				HttpSession ssn = request.getSession();
				ssn.setAttribute("listadded", ls);
				
				ssn.setAttribute("listprice", ls1);
				
				x.close();
				c.close();
			} catch (Exception e) {
				out.println(e);
			}
			response.sendRedirect("client/displaydata.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
