<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
</head>
<body>
	<!-- start header -->
	<jsp:include page="hearder section.jsp"></jsp:include>
	<!-- start slider -->
    <div style="width: 70%; margin: 100px auto; display:flex ; ">
        <div style="width: 30%; flex-direction: column;">
            <a href="images/0001-1.jpg"><img style="border-radius: 50%;
                        width: 200px; height: 200px;" src="images/0001-1.jpg" alt=""></a>
                        <div style="height: 100px; width: 70%">
                        	<p>Tải anh mới</p>
                       	</div>
					<div style="width: 70%; margin-top: 50px;" class="sellers">
						<h4>Chức năng khác</h4>
						<div class="single-nav hover_form">
			                <ul>
			                   <li>
			                   		<p class="password_p" style=" font-size: 16px; color: black;padding: 15px 20px;">Đổi mật khẩu</p>
			                   		<div class="changeThePassword" style="margin: auto; display: flex; justify-content: center; ">
			                   			 <form style="display: flex; width:90%; flex-direction: column;" action="/WebSellingShoes/">
							                <p style=" font-size:20px; font-weight:500px; margin: 0; padding: 0;">Mật khẩu cũ</p>
							                <input style=" font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="passwordOld_User" value="5656565" required />
							                <p style="font-size:20px; font-weight:500px; margin: 0; padding: 0;">Mật khẩu mới</p>
							                <input style="font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="passwordNew_User" placeholder="Tên người nhận" required />
							                <p style="font-size:20px; font-weight:500px; margin: 0; padding: 0;">Nhập lại mật khẩu</p>
							                <input style="font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="passwordNewAgain_User" placeholder="Tên người nhận" required />
							                <div style="display: flex; justify-content: center;" >
								                <a style="width: 200px;" href="#">
								                	<button class="password_p" style=" width: 200px; padding: 10px; border-radius: 10px;" type="submit" class="button">Thay doi mật khẩu</button>
								                </a>
							               	</div>
							            </form>
			                   		</div>
			                   </li>
			                    <li ><a style="padding: 15px 20px;font-size: 16px; color: black;" href='<c:url value ="/information"/>'>Thông tin cá nhân</a></li>
			                    <li><a style="padding: 15px 20px;font-size: 16px; color: black;" href='<c:url value = "/cart" />'>Giỏ hàng</a></li>		                    
			                </ul>
			              </div>
					</div>
             
        </div>
        <div style="width: 70%; margin-top: 100px;" class="rightside">
            <form style="display: flex; flex-direction: column;" action="/WebSellingShoes/">
                <p style=" font-size:20px; font-weight:500px; margin: 0; padding: 0;">Họ và tên:</p>
                <input style=" font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="name_User" value="5656565" required />
                <p style="font-size:20px; font-weight:500px; margin: 0; padding: 0;">Email:</p>
                <input style="font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="email_User" placeholder="Tên người nhận" required />
                <p style="font-size:20px; font-weight:500px; margin: 0; padding: 0;">Số điện thoại:</p>
                <input style="font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="phone_User" placeholder="Địa chỉ nhận hàng" required />
                <p style="font-size:20px; font-weight:500px; margin: 0; padding: 0;">Địa chỉ:</p>
                <input style="font-size:20px; font-weight:500px; width: auto; border-style: none; padding: 10px 20px 10px 20px; border-bottom: 2px solid black; border-radius:10px ; margin-bottom:10px ;" type="text" class="inputbox" name="address_User" placeholder="Số điện thoại" required />
                <input type="hidden" name="ID_customer" value="${randomInt}" required />
                </p>
                <div style="display: flex; justify-content: center;" >
                <a style="width: 200px;" href="#">
                <button style=" width: 200px; padding: 10px; border-radius: 10px;" type="submit" class="button">Thay doi thoong tin</button>
                </a>
                </div>
            </form>
        </div>
    </div>
	<!-- start footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- start footer -->
	<script src='<c:url value="/resources/js/jquery.min.js"/>'></script> 
	<script type="text/javascript">
		$(function() {
			$('.changeThePassword').slideUp();
			$('.password_p').click(function(event) {
				$(this).next().slideToggle();
			});;
		});
	</script>

</body>
</html>