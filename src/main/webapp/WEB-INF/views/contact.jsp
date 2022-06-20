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
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script> 
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- start top_js_button -->
<script type="text/javascript" src='<c:url value="/resources/js/move-top.js"/>'></script>
<script type="text/javascript" src='<c:url value="/resources/js/easing.js"/>'></script>
   <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1200);
            });
            $(".submit").click(function(event){
            	alert('Cảm on bạn đã phản hồi cho chúng tôi.\n Chúng tôi sẽ trả lời bạn sớm nhất.')
            })
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
                <div class="contact">
                    <div class="contact_info">
                        <h2>Liên lạc</h2>
                        <div class="map">
                            <iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a
										href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265"
										style="color:#777777;text-align:left;font-size:13px;font-family:
										'Source Sans Pro', sans-serif;">xem bản đồ lớn hơn</a></small>
                        </div>
                    </div>
                    <div class="contact-form">
                        <h2>Liên hệ chúng tôi</h2>
                        <form method="post" action='<c:url value ="/contact"/>'>
                            <div>
                                <span><label>Họ và Tên</label></span>
                                <span><input name="userName" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>E-mail</label></span>
                                <span><input name="userEmail" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>Số điện thoại</label></span>
                                <span><input name="userPhone" type="text" class="textbox"></span>
                            </div>
                            <div>
                                <span><label>Chủ đề</label></span>
                                <span><textarea name="userMsg"> </textarea></span>
                            </div>
                            <div>
                                <span><input type="submit" class="submit" value="Gửi"></span>
                            </div>
                        </form>
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