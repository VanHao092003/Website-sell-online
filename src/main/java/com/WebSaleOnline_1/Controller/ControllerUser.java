package com.WebSaleOnline_1.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class ControllerUser {
	
	@RequestMapping(value="/home")
	public String home(HttpServletRequest httpServletRequest){
		return "home";
	}
	
	@RequestMapping(value="login")
	public String login(HttpServletRequest httpServletRequest) {
		return "login";
	}
	
	@RequestMapping(value="detail")
	public String detail(HttpServletRequest httpServletRequest) {
		return "detail";
	}
	
	@RequestMapping(value="sale")
	public String sale(HttpServletRequest httpServletRequest) {
		return "sale";
	}
	
	@RequestMapping(value="shoes")
	public String shoes(HttpServletRequest httpServletRequest) {
		return "shoes";
	}
	
	@RequestMapping(value="hat")
	public String hat(HttpServletRequest httpServletRequest) {
		return "hat";
	}
	
	@RequestMapping(value="shirt")
	public String shirt(HttpServletRequest httpServletRequest) {
		return "shirt";
	}
	
	@RequestMapping(value="trousers")
	public String trousers(HttpServletRequest httpServletRequest) {
		return "trousers";
	}
	
	@RequestMapping(value="service")
	public String service(HttpServletRequest httpServletRequest) {
		return "service";
	}
	
	@RequestMapping(value="contact")
	public String contact(HttpServletRequest httpServletRequest) {
		return "contact";
	}
	
	@RequestMapping(value="contact", method = RequestMethod.POST)
	public String contact(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		return "redirect:/home";
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
