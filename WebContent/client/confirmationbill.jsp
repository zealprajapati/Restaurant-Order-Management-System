<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
			int id = (Integer) session.getAttribute("loginid");
   			String status= "";
   			String unpaid= "unpaid";
   			String paid= "paid";
	       	Class.forName("com.mysql.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "root");
			Statement x = c.createStatement();
			ResultSet rs=x.executeQuery("select status from cart where TableID='"+id+"'");
			
       		while(rs.next())
       		{
       			
       			status= rs.getString("status");
       			System.out.println(status);
       		}
       		if(status.equals(unpaid))
			{
				x.executeUpdate("UPDATE cart set status='"+paid+"' WHERE TableID='"+id+"'");
				List lx = (List) session.getAttribute("listadded");
				List lx1 = (List) session.getAttribute("listprice");
				lx.removeAll(lx);
				lx1.removeAll(lx1);
				session.removeAttribute("loginid");
				int length = lx.size();
				System.out.println(length);
				response.sendRedirect("wifi.jsp");
			}
%>
        
</body>
</html>