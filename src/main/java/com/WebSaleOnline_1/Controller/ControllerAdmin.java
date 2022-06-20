package com.WebSaleOnline_1.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControllerAdmin {
	
	@RequestMapping(value ="admin")
	public String admin(HttpServletRequest httpServletRequest) {
		return "Admin/admin";
	}
	
	@RequestMapping(value = "admin/list information account")
	public String informationListAccount(HttpServletRequest httpServletRequest) {
		return "Admin/listAccount";
	}
	
	@RequestMapping(value = "admin/list account")
	public String listAccount(HttpServletRequest httpServletRequest) {
		return "Admin/listAccount";
	}
	
	@RequestMapping(value = "/admin/list product")
	public String listProduct(HttpServletRequest httpServletRequest) {
		return "Admin/listProduct";
	}
	
	@RequestMapping(value = "/admin/list feedback")
	public String listFeedback(HttpServletRequest httpServletRequest) {
		return "Admin/listFeedBack";
	}
	
	@RequestMapping(value = "/admin/list order")
	public String listOrder(HttpServletRequest httpServletRequest) {
		return "Admin/listOrders";
	}
	@RequestMapping(value = "/admin/table category")
	public String tableCategory(HttpServletRequest httpServletRequest) {
		return "Admin/TableCategory";
	}
}
