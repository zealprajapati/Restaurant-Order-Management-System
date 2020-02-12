<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
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

		<!--=====
             header
        =======-->
		<jsp:include page="header.jsp"></jsp:include>
		<!--=====
             header end
        =======-->



		<!--site search-->
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

		<!--=====
             section-banner
        =======-->
		<section class="section-banner">
		<div class="banner-slider circle-arrow owl-carousel owl-theme">
			<div class="item">
				<img src="img/banner1.jpg" alt="Banner image">

				<div class="banner-content">
					<div class="container">
						<h1 class="title">Better food! Better life!</h1>
						<p class="sub-title">Love of beauty is taste. The creation of
							beauty is art.</p>
						<div>
							<img src="img/badge.png" alt="iMAGE">
						</div>
					</div>
					<!--container-->
				</div>
				<!--banner-content-->
			</div>
			<div class="item">
				<img src="img/banner2.jpg" alt="Banner image">

				<div class="banner-content">
					<div class="container">
						<h1 class="title">Food is taste of life</h1>
						<p class="sub-title">Love of beauty is taste. The creation of
							beauty is art.</p>
						<div>
							<img src="img/badge.png" alt="iMAGE">
						</div>
					</div>
					<!--container-->
				</div>
				<!--banner-content-->
			</div>
		</div>


		</section>
		<section class="section-opening-hours">
		<div class="opening-hours-block">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<p class="big-text ff-philo light mt-50 mb-25">Restaurant
							Hours</p>
					</div>
					<!--col-md-4-->
					<div class="col-md-8">
						<div class="reservation-hours">
							<div class="reserve-time">
								<span class="days">Monday - Friday</span> <span class="time">08:00
									AM - 10:00 PM</span>
							</div>
							<!--reserve-time-->
							<div class="reserve-time">
								<span class="days">Saturday - Sunday</span> <span class="time">09:30
									PM - 11:30 PM</span>
							</div>
							<!--reserve-time-->
						</div>
						<!--reservation-hours-->
					</div>
					<!--col-md-4-->
				</div>
				<!--row-->
			</div>
			<!--container-->
		</div>
		</section>

		<section class="section-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="section-heading text-center mb-25 mt-85">
						<h1 class="section-title-big">
							<span class="colored">Restaurant Name</span><br /> Since 2017
						</h1>
						<div class="divider">
							<img src="img/divider.png" alt="Divider Image">
						</div>
					</div>
					<div class="intro-text-block text-center lh30">information
						about restaurant</div>

				</div>
				<div class="col-md-3 col-xs-6">
					<figure class="img-wrapper"> <img src="img/abt-img1.jpg"
						alt="Image">
					<div class="border-frame">
						<img src="img/corner-left.png" alt="image" class="corner-left">
						<img src="img/corner-right.png" alt="image" class="corner-right">
					</div>
					</figure>
					<!--img-wrapper-->
				</div>
				<div class="col-md-3 col-xs-6">
					<figure class="img-wrapper"> <img src="img/abt-img2.jpg"
						alt="Image">
					<div class="border-frame">
						<img src="img/corner-left.png" alt="image" class="corner-left">
						<img src="img/corner-right.png" alt="image" class="corner-right">
					</div>
					</figure>
					<!--img-wrapper-->
				</div>
			</div>
			<!--row-->
		</div>
		<!--container--> </section>
		<!--=====
             section-intro end
        =======-->


		<!--=====
             section-carousel
        =======-->
		<section class="section-carousel bg-fixed">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="dish-carousel circle-arrow owl-carousel owl-theme">
						<div class="item">
							<div class="dish-carousel-inner">
								<div class="media">
									<img src="img/Pav-Bhaji.jpg" alt="Food dish image">
								</div>
								<div class="content">
									<h3 class="caro-title">Our Special Dishes</h3>
									<h4 class="caro-subtitle">Yummy Pav Bhaji</h4>
									<div class="rating">
										Clients Rating: <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i>
									</div>
									<p class="lh30">Whenever I am back in town I always get
										their bhaji pav. The taste is the same whichever location u go
										to. The service is polite and quick</p>
								</div>
							</div>
							<!--dish-carousel-inner-->
						</div>
						<!--item-->
						<div class="item">
							<div class="dish-carousel-inner">
								<div class="media">
									<img src="img/Samosa.jpg" alt="Food dish image">
								</div>
								<div class="content">
									<h3 class="caro-title">Our Special Dishes</h3>
									<h4 class="caro-subtitle">Yummy Samosas</h4>
									<div class="rating">
										Clients Rating: <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i>
									</div>
									<p class="lh30">always admiring this place as it never
										let's you down.The best place to have samosa's especially
										when u love a fusion of flavours ! Cute , little sitting area
										and the top of that they serve each and every samosa fresh.</p>
								</div>
							</div>
							<!--dish-carousel-inner-->
						</div>
						<div class="item">
							<div class="dish-carousel-inner">
								<div class="media">
									<img src="img/Pizza.jpg" alt="Food dish image">
								</div>
								<div class="content">
									<h3 class="caro-title">Our Special Dishes</h3>
									<h4 class="caro-subtitle">Yummy Pizza</h4>
									<div class="rating">
										Clients Rating: <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i>
									</div>
									<p class="lh30">After strolling around in busy Thamel IT is
										Nice to order a real Deal pizza here. We had the quattro
										formaggi and a pepperoni pizza with the house wine (red). All
										very good. Thin italian pizza. Fast delivery and nice
										atmosphere at the restaurant. Free wifi AS well.</p>
								</div>
							</div>
							<!--dish-carousel-inner-->
						</div>
						<!--item-->
						<div class="item">
							<div class="dish-carousel-inner">
								<div class="media">
									<img src="img/Dosa.jpg" alt="Food dish image">
								</div>
								<div class="content">
									<h3 class="caro-title">Our Special Dishes</h3>
									<h4 class="caro-subtitle">Yummy Dosa</h4>
									<div class="rating">
										Clients Rating: <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i>
									</div>
									<p class="lh30">Dosa with an egg sunny side up on top,
										paired with sambar (spicy Indian stew), plus a coconut and a
										tomato chutney, is so good, I’d love it for breakfast or lunch
										any day..</p>
								</div>
							</div>
							<!--dish-carousel-inner-->
						</div>
						<div class="item">
							<div class="dish-carousel-inner">
								<div class="media">
									<img src="img/Uttapam.jpg" alt="Food dish image">
								</div>
								<div class="content">
									<h3 class="caro-title">Our Special Dishes</h3>
									<h4 class="caro-subtitle">Yummy Uttapam</h4>
									<div class="rating">
										Clients Rating: <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star-half"></i>
									</div>
									<p class="lh30">The Best Mix Uttapam I have ever tasted..
										Trust me i have tried Uttapams at many different places n this
										was the best.. Heavily topped with onions,tomatoes coriander
										n proper amount of green chillies it was a perfect mixture to
										suffice your taste buds.. Served with Sambhar and 3 Chutneys
										it's definitely worth trying.. The red chutney is amazing..
										the quantity is sufficient for single person.. .</p>
								</div>
							</div>
							<!--dish-carousel-inner-->
						</div>
					</div>
					<!--owl-carousel-->
				</div>
			</div>
			<!--row-->
		</div>
		<!--container--> </section>
		<!--=====
             section-carousel
        =======-->



		<!--=====
             section-gallery
        =======-->
		<section class="section-gallery">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center mb-75">
						<h2 class="section-title">
							<span class="colored">Our awesome services</span>
						</h2>
						<div class="divider">
							<img src="img/divider.png" alt="Divider Image">
						</div>
					</div>
					<!--section-heading-->
				</div>
			</div>
			<!--row-->

			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="gallery-item img-wrapper">
						<figure> <img src="img/promo1.jpg" alt=""> </figure>
						<div class="details">
							<!--Frame image-->
							<div class="border-frame">
								<img src="img/corner-left.png" alt="image" class="corner-left">
								<img src="img/corner-right.png" alt="image" class="corner-right">
							</div>
							<div class="inner">
								<span class="icon"> <img src="img/ic-hv1.png"
									alt="Icon Image">
								</span>
								<p class="title">Fine dining</p>
								<a href="#" class="btn-primary btn-md btn-rad">Read more</a>
							</div>
							<!--inner-->
						</div>
					</div>
					<!--gallery-item img-wrapper-->
				</div>
				<!-- col- -->

				<div class="col-md-4 col-sm-6">
					<div class="gallery-item img-wrapper">
						<figure> <img src="img/promo4.jpg" alt=""> </figure>
						<div class="details">
							<!--Frame image-->
							<div class="border-frame">
								<img src="img/corner-left.png" alt="image" class="corner-left">
								<img src="img/corner-right.png" alt="image" class="corner-right">
							</div>
							<div class="inner">
								<span class="icon"> <img src="img/ic-hv1.png"
									alt="Icon Image">
								</span>
								<p class="title">buffet service</p>
								<a href="#" class="btn-primary btn-md btn-rad">Read more</a>
							</div>
							<!--inner-->
						</div>
					</div>
					<!--gallery-item img-wrapper-->
				</div>
				<!-- col- -->


				<div class="col-md-4 col-sm-6">
					<div class="gallery-item img-wrapper">
						<figure> <img src="img/promo6.jpg" alt=""> </figure>
						<div class="details">
							<!--Frame image-->
							<div class="border-frame">
								<img src="img/corner-left.png" alt="image" class="corner-left">
								<img src="img/corner-right.png" alt="image" class="corner-right">
							</div>
							<div class="inner">
								<span class="icon"> <img src="img/ic-hv1.png"
									alt="Icon Image">
								</span>
								<p class="title">Catering Service</p>
								<a href="#" class="btn-primary btn-md btn-rad">Read more</a>
							</div>
							<!--inner-->
						</div>
					</div>
					<!--gallery-item img-wrapper-->
				</div>
				<!-- col- -->
			</div>
		</div>
		<!--container--> </section>
		<!--=====
             section-gallery
        =======-->


		<!--=====
             section-food-menu
        =======-->
		<section class="section-food-menu bg-fixed">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="section-heading text-center mb-75">
						<h2 class="section-title">
							<span class="colored">Our food menu</span>
						</h2>
						<div class="divider">
							<img src="img/divider-white.png" alt="Divider Image">
						</div>
					</div>
					<!--section-heading-->
				</div>
			</div>
			<!--row-->

			<div class="row">
				<div class="col-md-12">
					<div class="food-menu-wrapper">

						<!-- Tab navs -->
						<ul class="food-nav" role="tablist">
							<li class="active"><a href="#fitem1" data-toggle="tab">
									<div class="food-nav-item">
										<div class="nav-icon">
											<img class="nrm-icon" src="img/breakfast_01.png"
												alt="Food nav icon"> <img class="hvr-icon"
												src="img/breakfast_02.png" alt="Food nav icon">
										</div>
										<div class="nav-text">
											<h5>Breakfast</h5>
											<div class="time">Time: 08.00 AM -11.30 AM</div>
										</div>
									</div>
							</a></li>
							<li><a href="#fitem2" data-toggle="tab">
									<div class="food-nav-item">
										<div class="nav-icon">
											<img class="nrm-icon" src="img/lunch_01.png"
												alt="Food nav icon"> <img class="hvr-icon"
												src="img/lunch_02.png" alt="Food nav icon">
										</div>
										<div class="nav-text">
											<h5>Lunch</h5>
											<div class="time">Time: 12.00 PM - 3.00 PM</div>
										</div>
									</div>
							</a></li>
							<li><a href="#fitem3" data-toggle="tab">
									<div class="food-nav-item">
										<div class="nav-icon">
											<img class="nrm-icon" src="img/dinner_01.png"
												alt="Food nav icon"> <img class="hvr-icon"
												src="img/dinner_02.png" alt="Food nav icon">
										</div>
										<div class="nav-text">
											<h5>Dinner</h5>
											<div class="time">Time: 07.00 PM -11.30 PM</div>
										</div>
									</div>
							</a></li>

						</ul>

						<!-- Tab panes -->
						<div class="tab-content food-content">
							<div class="tab-pane fade in active" id="fitem1">
								<div class="food-menu-list-wrapper">
									<div class="inner">
										<ul class="food-menu-list">
											<li><a
												href="<%=request.getContextPath()%>/additem?name=bhajipav&price=75">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Bhaji Pav</span> <span class="price">Rs.75
															</span>
														</div>

														<p>Butter/Cheese</p>
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=masaladosa&price=95">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->

													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Masala Dosa</span> <span
																class="price">Rs.95</span>
														</div>
														<p>Butter/Cheese</p>
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=Uttapam&price=70">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Uttapam</span> <span class="price">Rs.70
															</span>
														</div>
														<p>Tomato/Mix Veg.</p>
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=samosa&price=40">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Samosa</span> <span class="price">Rs.40
															</span>

														</div>
														<p>Small/Medium/Large</p>
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=ItalianPizza&price=100">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Italian Pizza</span> <span
																class="price">Rs.100</span>
														</div>
														<p>Extra Cheese</p>
													</div> <!--menu-details-->
											</a></li>

										</ul>
										<!--food-menu-list-->
									</div>
								</div>
								<!--food-menu-list-wrapper-->
							</div>
							<!--tab-pane-->
							<!--  <div class="footer-widget footer-feed">

								<a href="<%=request.getContextPath()%>/additem?done=yes"">
									<h2 class="section-title">
										<span class="colored"> Click To submit order.. </span>
									</h2>
								</a>
							</div>-->
							<div class="tab-pane fade" id="fitem2">
								<div class="food-menu-list-wrapper">
									<div class="inner">
										<ul class="food-menu-list">
											<li><a
												href="<%=request.getContextPath()%>/additem?name=Idli&price=50">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Idli</span> <span class="price">Rs.50</span>
														</div>
														<p></p>
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=TomatoSoup&price=100">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Tomato SOUP</span> <span
																class="price">Rs.100</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=Hot&SourSoup&price=120">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Hot & Sour Soup</span> <span
																class="price">Rs.120</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=FriedRice&price=125">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Fried Rice</span> <span class="price">Rs.125</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=JohnKiRoti&price=150">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">John Ki Roti</span> <span
																class="price">Rs.150</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
										</ul>
										<!--food-menu-list-->
									</div>
								</div>
								<!--food-menu-list-wrapper-->
							</div>
							<!--tab-pane-->
							<!--  <div class="footer-widget footer-feed">

								<a href="<%=request.getContextPath()%>/additem?done=yes"">
									<h2 class="section-title">
										<span class="colored"> Click To submit order.. </span>
									</h2>
								</a>
							</div>-->
							<div class="tab-pane fade" id="fitem3">
								<div class="food-menu-list-wrapper">
									<div class="inner">
										<ul class="food-menu-list">
											<li><a
												href="<%=request.getContextPath()%>/additem?name=StuffedStrawberry&price=300">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">STUFFED STRAWBERRY</span> <span
																class="price">Rs.300</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=SicilianMeatballs&price=200">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">SICILIAN MEATBALLS</span> <span
																class="price">Rs.200</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=RoastChicken&price=400">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">ROAST CHICKEN</span> <span
																class="price">Rs.400</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=PannerChillyDry&price=300">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Paneer Chilly Dry</span> <span
																class="price">Rs.300</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a
												href="<%=request.getContextPath()%>/additem?name=CheeseButterMasala&price=150">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Cheese Butter Masala</span> <span
																class="price">Rs.150</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
										</ul>
										<!--food-menu-list-->
									</div>
								</div>
								<!--food-menu-list-wrapper-->
							</div>
							<!--tab-pane-->
							<div class="footer-widget footer-feed">

								<a href="<%=request.getContextPath()%>/additem?done=yes"">
									<h2 class="section-title">
										<span class="colored"> Click To submit order.. </span>
									</h2>
								</a>
							</div>
							<div class="tab-pane fade" id="fitem4">
								<div class="food-menu-list-wrapper">
									<div class="inner">
										<ul class="food-menu-list">
											<li><a
												href="<%=request.getContextPath()%>/additem?name=SicilianMeatballs&price=50">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">SICILIAN MEATBALLS</span> <span
																class="price"></span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a href="#">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">SEAFOOD SALAD</span> <span
																class="price">$4.3</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a href="#">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">ITALIAN SPAGHETTI</span> <span
																class="price">$4.3</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a href="#">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">STUFFED STRAWBERRY</span> <span
																class="price">$4.3</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
											<li><a href="#">
													<div class="menu-media">
														<img src="img/menu-img1.png" alt="Menu image">
													</div> <!--menu-media-->
													<div class="menu-details">
														<div class="heading clearfix">
															<span class="title">Beef steak</span> <span class="price">$4.3</span>
														</div>
														
													</div> <!--menu-details-->
											</a></li>
										</ul>
										<!--food-menu-list-->
									</div>
								</div>
								<!--food-menu-list-wrapper-->
							</div>
							<!--tab-pane-->
						</div>
					</div>
				</div>
				<!--col-md-12-->
			</div>
			<!--row-->
		</div>
		<!--container--> </section>
		<!--=====
             section-food-menu end
        =======-->





		<!--=====
             section-focus-person
        =======-->







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
</body>
</html>