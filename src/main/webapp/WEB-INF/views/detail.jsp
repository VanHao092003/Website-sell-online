<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Chi tiết sản phẩm</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'> 
<link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
<!-- start details -->
<link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/productviewgallery.css"/>' media="all" />
<script type="text/javascript" src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/cloud-zoom.1.0.3.min.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.fancybox.pack.js"/>' ></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.fancybox-buttons.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.fancybox-thumbs.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/productviewgallery.js"/>'></script>
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- start top_js_button -->
<script type="text/javascript" src='<c:url value="/resources/js/jquery.min.js"/>'></script>
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
<!-- start main -->
<div class="main_bg">
<div class="wrap">	
	<div style="width: 100%;" class="main">
	<!-- start content -->
	<div class="single">
			<!-- start span1_of_1 -->
			<div class="left_content">
			<div class="span1_of_1">
				<!-- start product_slider -->
				<div class="product-view">
				    <div class="product-essential">
				        <div class="product-img-box">
				    <div class="more-views" style="float:left;">
				        <div class="more-views-container">
				        <ul>
				        	
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href='<c:url value="/resources/images/Product/ao1_1.jpg"/>'  title="" alt="" id="more_view_item_1">
				            	<img src='<c:url value="/resources/images/Product/ao1_1.jpg"/>' src_main='<c:url value="/resources/images/Product/ao1_1.jpg"/>' title="" alt="" /></a>            
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href='<c:url value="/resources/images/Product/ao1_2.jpg"/>'  title="" alt="">
				            	<img src='<c:url value="/resources/images/Product/ao1_2.jpg"/>' src_main=""  title="" alt="" /></a>
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a> 
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>  
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>
				            </li>
				          </ul>
				        </div>
				    </div>
				    <div class="product-image"> 
				        <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href='<c:url value="/resources/images/Product/ao1_1.jpg"/>' title="Women Shorts" alt="Women Shorts">
				           	<img src='<c:url value="/resources/images/Product/ao1_1.jpg"/>' alt="Women Shorts" title="Women Shorts" />
				        </a>
				   </div>
					<script type="text/javascript">
						var prodGallery = jQblvg.parseJSON('{"prod_1":{"main":{"orig":"<c:url value="/resources/images/Product/${image1}"/>","main":"<c:url value="/resources/images/Product/${image1}"/>","thumb":"<c:url value="/resources/images/Product/${image1}"/>","label":""},"gallery":{"item_0":{"orig":"<c:url value="/resources/images/Product/${image1}"/>","main":"<c:url value="/resources/images/Product/${image1}"/>","thumb":"<c:url value="/resources/images/Product/${image1}"/>","label":""},"item_1":{"orig":"<c:url value="/resources/images/Product/${image2}"/>","main":"<c:url value="/resources/images/Product/${image2}"/>","thumb":"<c:url value="/resources/images/Product/${image2}"/>","label":""},"item_2":{"orig":"<c:url value="/resources/images/Product/${image5}"/>","main":"<c:url value="/resources/images/Product/${image5}"/>","thumb":"<c:url value="/resources/images/Product/${image5}"/>","label":""},"item_3":{"orig":"<c:url value="/resources/images/Product/${image3}"/>","main":"<c:url value="/resources/images/Product/${image3}"/>","thumb":"<c:url value="/resources/images/Product/${image3}"/>","label":""},"item_4":{"orig":"<c:url value="/resources/images/Product/${image4}"/>","main":"<c:url value="/resources/images/Product/${image4}"/>","thumb":"<c:url value="/resources/images/Product/${image4}"/>","label":""}},"type":"simple","video":false}}'),
						    gallery_elmnt = jQblvg('.product-img-box'),
						    galleryObj = new Object(),
						    gallery_conf = new Object();
						    gallery_conf.moreviewitem = '<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:75px;" href=""  title="" alt=""><img src="" src_main="" width="64" height="75" title="" alt="" /></a>';
						    gallery_conf.animspeed = 200;
						jQblvg(document).ready(function() {
						    galleryObj[1] = new prodViewGalleryForm(prodGallery, 'prod_1', gallery_elmnt, gallery_conf, '.product-image', '.more-views', 'http:');
						        jQblvg('.product-image .cs-fancybox-thumbs').absoluteClick();
						    jQblvg('.cs-fancybox-thumbs').fancybox({ prevEffect : 'none', 
						                             nextEffect : 'none',
						                             closeBtn : true,
						                             arrows : true,
						                             nextClick : true, 
						                             helpers: {
						                               thumbs : {
						                                   width: 64,
						                                   height: 85,
						                                   position: 'bottom'
						                               }
						                             }
						                             });
						    jQblvg('#wrap').css('z-index', '100');
						            jQblvg('.more-views-container').elScroll({type: 'vertical', elqty: 4, btn_pos: 'border', scroll_speed: 400 });
						        
						});
						
						function initGallery(a,b,element) {
						    galleryObj[a] = new prodViewGalleryForm(prods, b, gallery_elmnt, gallery_conf, '.product-image', '.more-views', '');
						};
					</script>
				</div>
				</div>
				</div>
				<!-- end product_slider -->
			</div>
			<!-- start span1_of_1 -->
			<div class="span1_of_1_des">
				  <div class="desc1">
					<h3>${product.name} </h3>
					<p>${product.text}</p>
					<h5>${product.price }Đ <a href="#"> giá trước: ${product.discount}Đ</a></h5>
					<div class="available">
						<h4>Tùy chọn có sẵn:</h4>
						<ul>
							<li>màu:
								<select name="color">
								<option>Màu bạc</option>
								<option>Màu đen</option>
								<option>Đen sẫm</option>
								<option>Màu đỏ</option>
							</select></li>
							<li>Size:
								<select name="size">
									<option>L</option>
									<option>XL</option>
									<option>S</option>
									<option>M</option>
								</select>
							</li>
							<li>Số lượng:
								<select name="quantity">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
								</select>
							</li>
						</ul>
						<div class="btn_form">
							<form action="/WebSaleOnline_1/detail/cart/${product.ID_product}">
								<input type="submit" value="add to cart" title="" />
							</form>
						</div>
						<div class="clear"></div>
					</div>
					<div class="share-desc">
						<div class="share">
							<h4>Share Product :</h4>
							<ul class="share_nav">
								<li><a href="https://www.facebook.com/"><img src='<c:url value="/resources/images/facebook.png"/>' title="facebook"></a></li>
								<li><a href="https://twitter.com/?lang=vi"><img src='<c:url value="/resources/images/twitter.png"/>' title="Twiiter"></a></li>
								<li><a href="#"><img src='<c:url value="/resources/images/rss.png"/>' title="Rss"></a></li>
								<li><a href="https://www.google.com/"><img src='<c:url value="/resources/images/gpluse.png"/>' title="Google+"></a></li>
				    		</ul>
						</div>
						<div class="clear"></div>
					</div>
			   	 </div>
			   	</div>
			   	<div class="clear"></div>
			   	<!-- start tabs -->
				   	<section class="tabs">
		            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
			        <label for="tab-1" class="tab-label-1">Chi tiết</label>
			
		            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2">
<!-- 			        <label for="tab-2" class="tab-label-2">Bảo quản</label>
 -->			
		           <!--  <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3">
			        <label for="tab-3" class="tab-label-3">semiconductor</label> -->
	          
				    <div class="clear-shadow"></div>
					
			        <div class="content">
				        <div class="content-1">
				        	<p class="para top"><span style="font-size: 18px;">${product.title} </span>${product.discription}</p>
							<ul>
							</ul>
							<div class="clear"></div>
						</div>
				        <div class="content-2">
							<p class="para"><span>WELCOME </span> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
							<ul class="qua_nav">
								<li>Multimedia Systems</li>
								<li>Digital media adapters</li>
								<li>Set top boxes for HDTV and IPTV Player applications on various Operating Systems and Hardware Platforms</li>
							</ul>
						</div>
				        <div class="content-3">
				        	<p class="para top"><span>LOREM IPSUM</span> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
							<ul>
								<li>Research</li>
								<li>Design and Development</li>
								<li>Porting and Optimization</li>
								<li>System integration</li>
								<li>Verification, Validation and Testing</li>
								<li>ntenance and Support</li>
							</ul>
							<div class="clear"></div>
						</div>
			        </div>
			        </section>
		         	<!-- end tabs -->
			   	</div>
			   	<!-- start sidebar -->
			 <div style="width: 23%;" class="left_sidebar">
					<div class="sellers">
						<h4>Vận chuyển</h4>
						<div class="single-nav">
			                        
			              </div>
						  <div class="banner-wrap bottom_banner color_link">
								<a href="#" class="main_link">
								<figure><img src='<c:url value="/resources/images/delivery.png"/>' alt=""></figure>
								<h5><span>Free Shipping</span><br> cho đơn hàng trên 1.000.000</h5></a>
						 </div>
					</div>
				</div>
					<!-- end sidebar -->
          	    <div class="clear"></div>
	       </div>	
	<!-- end content -->
	</div>
</div>
</div>		
<!-- start footer -->
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>