<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title>Restaurant - Template</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta charset="utf-8">
<meta name="author" content="Restaurant template">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- CSS -->
<link href="https://fonts.googleapis.com/css?family=Great+Vibes"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Philosopher:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/rwd-table.css">
<link rel="stylesheet" href="css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.transitions.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-98816400-2', 'auto');
		ga('send', 'pageview');
	</script>


	<!--Preloader-->
	<div class="preload hidden">
		<div class="loader">Loading...</div>
	</div>
	<!--Preloader-->

	<!--section wrapper-->
	<div class="section-wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="site-search">
			<button type="button" class="close search-close">
				<span class="fa fa-close"></span>
			</button>
			<div class="form-container">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-lg-offset-3 col-xl-6 col-xl-offset-3">
							<form role="search" method="get" class="search-form form"
								action="#">
								<label class="sr-only">Search for:</label>
								<div class="input-group">
									<input name="s" class="search-field form-control"
										placeholder="Enter Keyword" required="" type="search">
									<span class="input-group-btn">
										<button type="submit" class="search-submit btn btn-primary">
											<span>Search</span><span><i class="icon icon-search"></i></span>
										</button>
									</span>
								</div>
							</form>
							<p>Input your search keywords and press Enter.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<section class="page-banner">
			<div class="para-bg" data-enllax-ratio=".5"
				data-enllax-direction="vertical"
				style="background: url(img/banner1.jpg) no-repeat;"></div>
			<div class="container">
				<div class="section-heading text-center">
					<h1 class="section-title-big">
						<span class="colored">Hotel Name</span>
					</h1>
					<div class="divider">
						<img src="img/divider-white.png" alt="Divider Image">
					</div>
				</div>
				<!--section-heading-->
			</div>
		</section>
		<!-- page-banner -->

		<!--main blog-->
		<section class="page-section-wrapper bg-light">
			<div class="container">
				<%
				Class.forName("com.mysql.jdbc.Driver");
					Connection c = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "root");
					Statement x = c.createStatement();
					int id = (Integer) session.getAttribute("loginid");
					List lx = (List) session.getAttribute("listadded");
					List lx1 = (List) session.getAttribute("listprice");
					
					int length = lx.size();
					System.out.println(length);
				%>
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="col-md-12">
							<h2 class="title-md text-center mb-35">
								WELCOME Table Number
								<%=id%>!!!
							</h2>

							<table class="table-fill">
								<thead>
									<tr>
										<th class="text-left">Table Number</th>
										<th class="text-left">Item Name</th>
										<th class="text-left">Delete Order</th>
										<th class="text-left">Item Price</th>
									</tr>
								</thead>
								<tbody class="table-hover">

									<%
										int totalprice = 0;
										for (int y = 0; y < length; y++) {
											out.println("<tr>");
											out.println("<td>");
											out.println(id);
											out.println("</td>");
											out.println("<td>");
											out.println(lx.get(y));
											out.println("</td>");
											out.println("<td>");%>
											<a href="<%=request.getContextPath()%>/deleteorder?number=<%=y%>">Delete item</a>
											<%out.println("</td>");
											out.println("<td>");
											out.println(lx1.get(y));
											out.println("</td>");
																							
											out.println("</tr>");
											totalprice = totalprice + (Integer) lx1.get(y);
										}
										out.println("<tr>");
										out.println("<td>");
										out.println("</td>");
										out.println("<td>");
										out.println("</td>");
										out.println("<td>");
										out.println("</td>");
										out.println("<td>");
										out.println(totalprice);
										out.println("</td>");
										out.println("</tr>");
										session.setAttribute("bill",totalprice );
									%>
								</tbody>
							</table>

						</div>

					</div>
					<!--col-sm-8-->

				</div>
				<!--row-->
			</div>
			<!--container-->
		</section>
		<form action="pay.jsp">
			<p align="center">
				<input type="submit" value="PROCEED TO BILL"
					style="font-size: 10pt; color: white; background-color: green; border: 2px solid #336600; padding: 3px">
			</p>
		</form>
		<jsp:include page="footer.jsp"></jsp:include>



	</div>
	<script src="js/jquery.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyAJkyG8lQ1g7gd7kVSMZfHbQlqR-PofYPc&sensor=false&amp;language=en"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/bootstrap-datetimepicker.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery.shuffle.min.js"></script>
	<script src="js/jquery.videobackground.js"></script>
	<script src="js/jquery.enllax.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.videobackground.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>
