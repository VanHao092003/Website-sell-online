<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Shoes</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
<link href='<c:url value ="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<script src="js/jquery.min.js"></script> 
<!-- start top_js_button -->
<script type="text/javascript" src='<c:url value="/resources/js/move-top.js"/>'></script>
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
				</div>	
	<div class="main">
		<!-- start grids_of_3 -->
		<div style="text-align: center;
    margin: 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;" class="grids_of_3">
			<c:forEach items="${productsByName}" var="product">
				 <div style="margin-left: 0px; margin-bottom: 20px;" class="grid1_of_3">
					<a href='<c:url value = "/detail/${product.ID_product}"/>'>
						<img src='<c:url value = "/resources/images/Product/${product.image}"/>' alt=""/>
						<h3>Hàng chính hãng</h3>
						<div class="price">
							<h4>${product.price}Đ<span>Xem thêm</span></h4>
						</div>
						<span class="b_btm"></span>
					</a>
				</div>
			</c:forEach>
			<div class="clear"></div>
		</div>	
		<!-- end grids_of_3 -->
	</div>
</div>
</div>		
	<!-- start footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- start footer -->
</body>
</html>