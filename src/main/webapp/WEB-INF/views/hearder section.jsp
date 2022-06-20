<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="header_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href='<c:url value="/home"/>'><img src='<c:url value="/resources/images/logo.png"/>' alt=""/> </a>
		</div>
		<div class="h_icon">
		<ul class="icon1 sub-icon1">
			<li><a class="active-icon c1" href='<c:url value="/cart"/>'><i></a>
				<ul class="sub-icon1 list">
					<li><h3>shopping cart empty</h3><a href=""></a></li>
					<li><p>if items in your wishlit are missing, <a href="contact.html">contact us</a> to view them</p></li>
				</ul>
			</li>
		</ul>
		</div>
		<div class="h_search">
    		<form>
    			<input type="text"  value="" style="">
    			<input type="submit" value="">
    		</form>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
<div class="header_btm">
<div class="wrap">
	<div class="header_sub">
		<div class="h_menu">
			<ul>
				<li class="active"><a href='<c:url value="/home"/>'>Trang chủ</a></li> |
				<li><a href='<c:url value="/sale"/>'">Giảm giá</a></li> |
				<li><a href='<c:url value="/shoes"/>'>Giày</a></li> |
				<li><a href='<c:url value="/shirt"/>'>Áo</a></li> |
				<li><a href='<c:url value="/hat"/>'>Mũ</a></li> |
				<li><a href='<c:url value="/trousers"/>'>Quần</a></li>
			</ul>
		</div>
		<div class="h_menu_right h_menu">
			<ul style="height: 55px; display: flex; align-items: center;">
				<li><a href='<c:url value="/contact"/>'">Liên hệ</a></li> |
				<li><a href='<c:url value="/service"/>'">Dịch vụ</a></li> |
				<c:if test="#">
					<li style="width: 231px;display: inline-flex;height: 55px; /* align-items: center; */ margin-left: 15px;">
						<img class="avatar" alt="" style="height: 40px;border-radius: 50%;width: 40px;align-self: center;" src='<c:url value = "/resources/images/0001-1.jpg"/>'>
					<a style="width: 160px;" href='<c:url value = "/information"/>'>Thông tin Tài khoản</a></li> |
					<li><a href='<c:url value="/logOut"/>'">Thoát</a></li>
				</c:if>
				<li style="width: 231px;display: inline-flex;height: 55px; /* align-items: center; */ margin-left: 15px;">
					<img class="avatar" alt="" style="height: 40px;border-radius: 50%;width: 40px;align-self: center;" src='<c:url value = "/resources/images/0001-1.jpg"/>'>
				<a style="width: 160px;" href='<c:url value = "/information"/>'>Thông tin Tài khoản</a></li> |
				<li><a href='<c:url value="/admin"/>'">Admin</a></li>
				<li><a href='<c:url value="/login"/>'">Đăng nhập</a></li>
			</ul>
		</div>
	<div class="clear"></div>
</div>
</div>
</div>