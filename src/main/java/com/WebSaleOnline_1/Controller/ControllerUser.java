package com.WebSaleOnline_1.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.WebSaleOnline_1.Service.ServiceUser;

@org.springframework.stereotype.Controller
public class ControllerUser {
	
	@Autowired
	ServiceUser serviceUser;
	
	@RequestMapping(value="login")
	public String login(HttpServletRequest httpServletRequest) {
		return "login";
	}
	
	@RequestMapping(value="cart")
	public String cart(HttpServletRequest httpServletRequest) {
		return "cart";
	}
	
	@RequestMapping(value="successfull")
	public String successfull(HttpServletRequest httpServletRequest) {
		return "successfull";
	}
	
	@RequestMapping(value="information")
	public String information(HttpServletRequest httpServletRequest) {
		return "information";
	}
	
}
