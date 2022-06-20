<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<script type="text/javascript" src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<link href='<c:url value="/resources/css/styleLogin.css"/>' rel="stylesheet" type="text/css" media="all" />
<link href='<c:url value="/resources/css/style.css"/>' rel="stylesheet" type="text/css" media="all" />
		<link href='<c:url value="/resources/css/styleFooter.css"/>' rel="stylesheet" type="text/css" media="all" />
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

</head>
<body>
	<jsp:include page="hearder section.jsp"></jsp:include>
	<div class="login-page">
  <div class="form">
    <form class="register-form">
    	<div>
    		<p style="font-size: 27px; font-weight: 1000; margin-bottom: 20px;">Nhập đầy đủ thông tin của bạn</p>
    	</div>
      <input type="text" placeholder="name"/>
      <input type="text" placeholder="email address"/>
      <input type="text" placeholder="phone"/>
      <input type="text" placeholder="address"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="passwordAgain"/>
      <button>create</button>
      <p style="font-size: 27px; font-weight: 1000; margin-top: 20px;" class="message_">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form class="login-form">
    	<div>
    		<p style="font-size: 27px; font-weight: 1000; margin-bottom: 20px;">Vui lòng nhập</p>
    	</div>
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p style="font-size: 27px; font-weight: 1000; margin-top: 20px;" class="message_">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
	  <script type="text/javascript">
	  	$('.message_ a').click(function(){
		   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
		});
	  </script>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>