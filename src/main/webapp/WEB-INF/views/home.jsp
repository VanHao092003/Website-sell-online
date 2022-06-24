<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
				<c:forEach items="${productsHeader}" var="product">
					<div class="da-slide">
						<h2>Chào mường đến với aditii</h2>
						<p>${product.text}</p>
						<a href='<c:url value="/detail/${product.ID_product}"/>' class="da-link">Xem ngay</a>
						<div class="da-img"><img src='<c:url value="/resources/images/Product/${product.image}"/>' alt="" /></div>
					</div>
				</c:forEach>
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
		<c:forEach items="${productsWarHeader}" var="productsWarHeader">
			<div class="item" onclick="location.href='<c:url value = "/detail/${productsWarHeader.ID_product}"/>';">
				<div class="cau_left">
					<img class="lazyOwl" src='<c:url value = "/resources/images/Product/${productsWarHeader.image}"/>' alt="Lazy Owl Image">
				</div>
				<div class="cau_left">
					<h4><a href='<c:url value = "/detail/${productsWarHeader.ID_product}"/>'>Hàng hiệu</a></h4>
					<a href='<c:url value = "/detail/${productsWarHeader.ID_product}"/>' class="btn">Xem thêm</a>
				</div>
			</div>	
		</c:forEach>
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
			                   <li><a href='<c:url value = "/home/searchByCategory/adidas"/>'>adidas</a></li>
			                    <li><a href='<c:url value = "/home/searchByCategory/nike"/>'>nike</a></li>
			                    <li><a href='<c:url value = "/home/searchByCategory/gucci"/>'>gucci</a></li>                   
			                </ul>
			              </div>
					</div>
					<div class="sellers">
						<h4>Sản phẩn</h4>
						<div class="single-nav">
			                <ul>
			                   <li><a href='<c:url value = "/home/searchByCategory/shirt"/>'>Áo</a></li>
			                    <li><a href='<c:url value = "/home/searchByCategory/trousers"/>'>Quần</a></li>
			                    <li><a href='<c:url value = "/home/searchByCategory/shoes"/>'>Giày</a></li>
			                    <li><a href='<c:url value = "/home/searchByCategory/hat"/>'>mũ</a></li>		                    
			                </ul>
			              </div>
					</div>
				</div>
	<div class="main">
		<!-- start grids_of_3 -->
		<div style="text-align: center;
    margin: 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;" class="grids_of_3">
			<c:forEach items="${products}" var="product">
				 <div style="margin-left: 0px; margin-bottom: 20px;" class="grid1_of_3">
					<a href='<c:url value = "/detail/${product.ID_product}"/>'>
						<img src='<c:url value = "/resources/images/Product/${product.image}"/>' alt=""/>
						<h3>Hàng chính hãng</h3>
						<div class="price">
							<h4>${product.price}Đ<span>indulge</span></h4>
						</div>
						<span class="b_btm"></span>
					</a>
				</div>
			</c:forEach>
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