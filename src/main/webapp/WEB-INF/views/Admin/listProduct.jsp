<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
 <link href='<c:url value ="/resources/admin/css/style.min.css"/>' rel="stylesheet" />
 <link href='<c:url value ="/resources/admin/css/style.css"/>' rel="stylesheet" /> 
</head>
<body>
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
		<jsp:include page="left-sidebar.jsp"></jsp:include>
		 <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <div>
                	<h2 style="text-align: center;">Bảng Danh sách tài khoản người dùng</h2>
                </div>
                <!-- ============================================================== -->
                <div class="row">                     
                    <div class="col-12">
                        <div class="card">
                            <div class="table-responsive m-t-20">
                            	
                                <table class="table table-bordered table-responsive-lg">
                                    <thead>
                                        <tr>
                                            <th scope="col">STT</th>
                                            <th scope="col">Mã tài khoản</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Số điện thoại</th>
                                            <th scope="col">Địa chỉ</th>
                                            <th scope="col">email</th>
                                            <th scope="col">ngày tạo</th>
                                            <th scope="col">Trạng thái</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>1</th>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                            <td>Table cell</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
            </div>
		
	</div>
	
              <script src='<c:url value = "/rsources/admin/js/jquery.min.js"/>'></script>
    <script src='<c:url value = "/rsources/admin/js/bootstrap.bundle.min.js"/>'></script>
    <script src='<c:url value = "/rsources/admin/js/app-style-switcher.js"/>'></script>
    <script src='<c:url value = "/rsources/admin/js/waves.js"/>'></script>
    <script src='<c:url value = "/rsources/admin/js/sidebarmenu.js"/>'></script>
    <script src='<c:url value = "/rsources/admin/js/custom.js"/>'></script>
</body>
</html>