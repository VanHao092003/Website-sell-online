     <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li>
                            <!-- User Profile-->
                            
                            <!-- End User Profile-->
                        </li>

                        <!-- User Profile-->

                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin"/>' aria-expanded="false"><i
                                        class="mdi mdi-account-network"></i><span
                                        class="hide-menu">Profile</span></a></li>
                                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list account"/>' aria-expanded="false"><i class="mdi
                                        mdi-border-all"></i><span
                                        class="hide-menu">Danh sách tài khoản</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list information account"/>' aria-expanded="false"><i class="mdi
                                        mdi-border-all"></i><span
                                        class="hide-menu">Danh sách khách hàng</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list product"/>' aria-expanded="false"><i class="mdi
                                        mdi-face"></i><span
                                        class="hide-menu">Danh sách sản phẩm</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list feedback"/>' aria-expanded="false"><i class="mdi
                                        mdi-file"></i><span
                                        class="hide-menu">Danh sách phản hồi</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list order"/>' aria-expanded="false"><i
                                        class="mdi mdi-alert-outline"></i><span
                                        class="hide-menu">Đơn hàng</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list order"/>' aria-expanded="false"><i
                                        class="mdi mdi-alert-outline"></i><span
                                        class="hide-menu">Danh sách thương hiệu</span></a></li>
                         <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list order"/>' aria-expanded="false"><i
                                        class="mdi mdi-alert-outline"></i><span
                                        class="hide-menu">Danh sách ảnh</span></a></li>
                         <li class="sidebar-item"> <a class="sidebar-link
                                    waves-effect waves-dark sidebar-link" href='<c:url value = "/admin/list order"/>' aria-expanded="false"><i
                                        class="mdi mdi-alert-outline"></i><span
                                        class="hide-menu">phân chức quyền</span></a></li>
                        <li class="text-center p-40 upgrade-btn">
                            <a href='<c:url value = "/home"/>' class="btn d-block w-100 btn-danger
                                    text-white" target="_blank">Quay về trang chủ</a>
                        </li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>