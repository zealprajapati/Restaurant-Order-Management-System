<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html>
    <head>
        <title>Restaurant  - Template</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta charset="utf-8">
        <meta name="author" content="Restaurant template">
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <!-- CSS -->
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Philosopher:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-datetimepicker.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="css/main.css">
</head>
<body>

<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

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
        
        <!--=====
             header
        =======-->
        <jsp:include page="header.jsp"></jsp:include>
        <!--=====
             header end
        =======-->
   


	<!--site search-->
	<div class="site-search">
		<button type="button" class="close search-close"><span class="fa fa-close"></span></button>
		<div class="form-container">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 col-xl-6 col-xl-offset-3">
					<form role="search" method="get" class="search-form form" action="#">
						<label class="sr-only">Search for:</label>
						<div class="input-group">
							<input name="s" class="search-field form-control" placeholder="Enter Keyword" required="" type="search">
							<span class="input-group-btn">
							<button type="submit" class="search-submit btn btn-primary"><span>Search</span><span><i class="icon icon-search"></i></span></button>
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
<div  class="para-bg" data-enllax-ratio=".5" data-enllax-direction="vertical" style="background:url(img/banner1.jpg) no-repeat;"></div>
    <div class="container">
         <div class="section-heading text-center">
             <h1 class="section-title-big"><span class="colored">Hotel Name</span></h1>
            <div class="divider">
                <img src="img/divider-white.png" alt="Divider Image">
            </div>
        </div><!--section-heading-->
    </div>
</section>
<!-- page-banner -->

<!--main blog-->
<section class="page-section-wrapper bg-light">
    <div class="container">
       <% 
       		int bill = (Integer) session.getAttribute("bill");
  			int id = (Integer) session.getAttribute("loginid");
   			
       	%>
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
               <div class="col-md-12"><h2 class="title-md text-center mb-35">PAY BILL</h2></div>
               <p align="center" style="color: teal"><b>Table Number: <%=id %></b></p></h2>
               <div class="col-md-12"><h2 class="title-md text-center mb-35"><p style="color: teal">Your Bill is <%=bill %> Rs.</p></h2></div>
	                <div class="contact-form-wrap">
    	                <form class="reservation-form img-icon-input" action="confirmationbill.jsp">
        	                <div class="col-md-6">
                            <div class="input-group ">
                                <input type="submit"  class="form-control" name="date" value="By Cash" style="color: teal">
                            </div><!-- /input-group -->
                        </div>
                        <div class="col-md-6">
                            <div class="input-group ">
                                <input type="submit"  class="form-control" name="date" value="By Card" style="color: teal">
                            </div><!-- /input-group -->
                        </div>

                   
                        
                    </form><!-- .comment-form -->
                    
                
                </div><!-- .contact-form-wrap -->
           
            </div><!--col-sm-8-->
            
        </div> <!--row-->
    </div> <!--container-->
</section>
<!--page-section-wrapper-->

<section class="reservation-contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="call-numbers text-center slash clearfix">
                    <div>
                        <span class="number">+1-202-555-0128   </span>
                        <span class="text">Call For Table Reservation</span>
                    </div>
                    <div>
                        <span class="number">+1-202-555-0128   </span>
                        <span class="text">Call For Table Reservation</span>
                    </div>
                </div><!--call-number-->
            </div>
        </div>
    </div>
</section><!--reservation-contact-->


    
        <!--=====
             Footer
        =======-->
<jsp:include page="footer.jsp"></jsp:include>
        <!--=====
             Footer end
        =======-->
        
        
    </div>
    <!--section wrapper end-->
    
    
    <!-- Js reference -->
    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAJkyG8lQ1g7gd7kVSMZfHbQlqR-PofYPc&sensor=false&amp;language=en"></script>
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