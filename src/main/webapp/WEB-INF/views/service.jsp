<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<title>Dịch vụ</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
<link href='<c:url value ="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script> 
<!-- start top_js_button -->
<script type="text/javascript"  src='<c:url value="/resources/js/move-top.js"/>'></script>
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
	
	<div class="main_bg">
<div class="wrap">	
	<div class="main">
	<!-- start service -->
	  <div class="service">
		<div style="width: 100%;" class="ser-main">
			<h4>Dịch vụ của chúng tôi</h4>
			<div class="ser-grid">
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon1.png"/>' alt=""></a>
					<h5><a href="#">Hỗ trợ khách hàng 24/7</a></h5>
					<p class="para">012345678</p>
				</div>
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon2.png"/>' alt=""></a>
					<h5><a href="#">Thương hiệu</a></h5>
					<p class="para"> Shop bán các thương hiệu nổi tiếng trên thế giới.</p>
				</div>
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon3.png"/>' alt=""></a>
					<h5><a href="#">Vận chuyển an toàn</a></h5>
					<p class="para">Đến với chúng tôi khách hàng hãy yên tâm về vân chuyển hàng nhanh và an toàn nhất.</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="ser-grid">
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon4.png"/>' alt=""></a>
					<h5><a href="#">Thẩm mỹ phong cách thời trang</a></h5>
					<p class="para">Sản phẩm trên shop luôn cập nhật các kiểu mẫu mới theo xu hướng thị trường.</p>
				</div>
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon5.png"/>' alt=""></a>
					<h5><a href="details.html">Sản phẩm chính hãng</a></h5>
					<p class="para"> 100% đồ bán trên shop là hàng chính hãng.</p>
				</div>
				<div class="ser-grid-list">
					<a href="#"><img src='<c:url value = "/resources/images/icon6.png"/>' alt=""></a>
					<h5><a href="details.html">100% bảo hàng</a></h5>
					<p class="para">Các sản phẩm trên shop đều có bảo hàng do nhà sản xuất đề ra.</p>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div style="width: 0px;" class="left_sidebar">
					<div class="sellers">
						
					</div>
				</div>
				<div class="clear"></div>
			</div>
	</div>
</div>
</div>
	
	<!-- start footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	<!-- start footer -->

</body>
</html>