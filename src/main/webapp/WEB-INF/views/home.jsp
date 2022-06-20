<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Trang chủ</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
<link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<!-- start slider -->		
	<link href='<c:url value="/resources/css/slider.css"/>' rel="stylesheet" type="text/css" media="all" />
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
	
	<script type="text/javascript" src='<c:url value = "/resources/js/modernizr.custom.28468.js"/>'></script>
	<script type="text/javascript" src='<c:url value="/resources/js/jquery.cslider.js"/>'></script>
	<script type="text/javascript">
		$(function() {
			$('#da-slider').cslider();
		});
	</script>
		<!-- Owl Carousel Assets -->
		<link href='<c:url value="/resources/css/owl.carousel.css"/>' rel="stylesheet">
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src='<c:url value="/resources/js/owl.carousel.js"/>'></script>
		        <script>
		    $(document).ready(function() {
		
		      $("#owl-demo").owlCarousel({
		        items : 4,
		        lazyLoad : true,
		        autoPlay : true,
		        navigation : true,
			    navigationText : ["",""],
			    rewindNav : false,
			    scrollPerPage : false,
			    pagination : false,
    			paginationNumbers: false,
		      });
		
		    });
		    </script>
		   <!-- //Owl Carousel Assets -->
		<!-- start top_js_button -->
		<script type="text/javascript" src='<c:url value = "/resources/js/move-top.js"/>'></script>
		<script type="text/javascript" src='<c:url value="/resources/js/easing.js"/>'></script>
		   <script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
					});
				});
			</script>
</head>
<body>
<!-- start header -->
	<jsp:include page="hearder section.jsp"></jsp:include>
<!-- start slider -->
			<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2>welcome to aditii</h2>
					<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>
					<a href='<c:url value="/detail"/>' class="da-link">shop now</a>
					<div class="da-img"><img src='<c:url value="/resources/images/slider1.png"/>' alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Easy management</h2>
					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
					<a href="details.html" class="da-link">shop now</a>
					<div class="da-img"><img src='<c:url value="/resources/images/slider2.png"/>' alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Revolution</h2>
					<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
					<a href="details.html" class="da-link">shop now</a>
					<div class="da-img"><img src='<c:url value="/resources/images/slider3.png"/>' alt="image01" /></div>
				</div>
				<div class="da-slide">
					<h2>Quality Control</h2>
					<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
					<a href="details.html" class="da-link">shop now</a>
					<div class="da-img"><img src='<c:url value="/resources/images/slider4.png"/>' alt="image01" /></div>
				</div>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
        </div>
<!----start-cursual---->
<div class="wrap">
<!----start-img-cursual---->
	<div id="owl-demo" class="owl-carousel">
		<div class="item" onclick="location.href='<c:url value = "/detail"/>';">
			<div class="cau_left">
				<img class="lazyOwl" src='<c:url value = "/resources/images/c1.jpg"/>' alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded shoes</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" src='<c:url value = "/resources/images/c2.jpg"/>' alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded tees</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" src='<c:url value = "/resources/images/c3.jpg"/>' alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded jeens</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="images/c2.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded tees</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="images/c1.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded shoes</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="images/c2.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded tees</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onclick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="images/c3.jpg" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html">branded jeens</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
	</div>
	<!----//End-img-cursual---->
</div>
<!-- start main1 -->
<div class="main_bg1">
<div class="wrap">	
	<div class="main1">
		<h2>Các sản phẩm của Shop</h2>
	</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap_">	
	<div class="right_sidebar">
					<div class="sellers">
						<h4>Thương hiệu</h4>
						<div class="single-nav">
			                <ul>
			                   <li><a href="#">adidas</a></li>
			                    <li><a href="#">nike</a></li>
			                    <li><a href="#">gucci</a></li>		                    
			                </ul>
			              </div>
					</div>
					<div class="sellers">
						<h4>Sản phẩn</h4>
						<div class="single-nav">
			                <ul>
			                   <li><a href="#">Áo</a></li>
			                    <li><a href="#">Quần</a></li>
			                    <li><a href="#">Giày</a></li>
			                    <li><a href="#">mũ</a></li>		                    
			                </ul>
			              </div>
					</div>
				</div>
	<div class="main">
		<!-- start grids_of_3 -->
		<div class="grids_of_3">
			<div class="grid1_of_3">
				<a href='<c:url value = "/detail"/>'>
					<img src="images/pic1.jpg" alt=""/>
					<h3>branded shoes</h3>
					<div class="price">
						<h4>$300<span>indulge</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			<div class="clear"></div>
		</div>	
		<!-- end grids_of_3 -->
	</div>
				<div class="clear"></div>
			</div>
</div>
<!-- start footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- start footer -->
</body>
</html>