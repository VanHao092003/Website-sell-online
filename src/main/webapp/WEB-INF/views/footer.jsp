
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <div class="footer-basic">
        <footer>
            <div class="social">
            	<a href="https://www.instagram.com/"><i class="icon ion-social-instagram"></i></a>
            	<a href="https://www.snapchat.com/"><i class="icon ion-social-snapchat"></i></a>
            	<a href="https://twitter.com/?lang=vi"><i class="icon ion-social-twitter"></i></a>
            	<a href="https://www.facebook.com/"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul style="display: flex; justify-content: center;" class="list-inline">
                <li class="list-inline-item"><a href="#">Trang chủ</a></li>
                <li class="list-inline-item"><a href='<c:url value = "/service"/>'>Dịch vụ</a></li>
                <li class="list-inline-item"><a href='<c:url value = "/contact"/>'>Cảm nhận</a></li>
            </ul>
        </footer>
    </div>