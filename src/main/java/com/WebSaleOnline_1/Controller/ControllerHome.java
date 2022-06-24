package com.WebSaleOnline_1.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.WebSaleOnline_1.ModelAdmin.Galery;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.Service.ServiceHome;
@Controller
public class ControllerHome {
	
	@Autowired
	ServiceHome serviceHome;
	
	@RequestMapping(value="/home")
	public String home(HttpServletRequest httpServletRequest, HttpSession httpSession){
		List<Product> productsHeader = serviceHome.listProductHeader(1, 5, 3, 6);
		httpServletRequest.setAttribute("productsHeader", productsHeader);
		List<Product> productsWarHeader = serviceHome.listProductWrapHeader(2, 4, 13, 14, 8, 9, 15);
		httpServletRequest.setAttribute("productsWarHeader", productsWarHeader);
		String check = (String) httpSession.getAttribute("check");
		if(check == null) {
			List<Product> products = serviceHome.Product();
			httpServletRequest.setAttribute("products", products);
		} else {
			String variable =(String) httpSession.getAttribute("variable");
			
			String variableName =(String) httpSession.getAttribute("variableName");
			List<Product> searchByCategoryAndName = serviceHome.searchProduct(variable, variableName);
			httpServletRequest.setAttribute("products", searchByCategoryAndName);
		}
		httpSession.setAttribute("check",null);
		//tìm kiếm theeo tên và theo thương hiệu		
		return "home";
	}
	
	@RequestMapping(value = "home/searchByName/{Name}")
	public String searchByName(HttpServletRequest httpServletRequest, @PathVariable(value = "Name") String name, HttpSession httpSession) {
		int variableName = 0;
		if(name.equals("shirt")) {
			variableName = 2;
			String variableNameString = String.valueOf(variableName);
			httpSession.setAttribute("variableName", variableNameString);
			return "redirect:/shirt";
		}
		else  if(name.equals("trousers")) {
			variableName = 3;
			String variableNameString = String.valueOf(variableName);
			httpSession.setAttribute("variableName", variableNameString);
			return "redirect:/trousers";
		}
		else if(name.equals("shoes")) {
			variableName = 1;
			String variableNameString = String.valueOf(variableName);
			httpSession.setAttribute("variableName", variableNameString);
			return "redirect:/shoes";
		}
		else {
			variableName = 4;
			String variableNameString = String.valueOf(variableName);
			httpSession.setAttribute("variableName", variableNameString);
			return "redirect:/hat";
		}
	}
	
	@RequestMapping(value = "home/searchByCategory/{name}")
	public String searchByCategoryAndName(HttpServletRequest httpServletRequest, @PathVariable(value = "name") String name, HttpSession httpSession) {
		int variable = 0;
		int variableName = 0;
		if(name.equals("adidas")) {
			variable = 1;
		} 
		if(name.equals("nike")) {
			variable = 2;
		} 
		if(name == "gucci") {
			variable = 4;
		}
		if(name.equals("shirt")) {
			variableName = 2;
		}
		if(name.equals("trousers")) {
			variableName = 3;
		}
		if(name.equals("shoes")) {
			variableName = 1;
		}
		if(name.equals("hat")) {
			variableName = 4;
		}
		String variableString = String.valueOf(variable);
		String variableNameString = String.valueOf(variableName);
		httpSession.setAttribute("check", "1");
		httpSession.setAttribute("variable", variableString);
		httpSession.setAttribute("variableName", variableNameString);
		return "redirect:/home";
	}
	
	@RequestMapping(value="detail/{ID_Product}")
	public String detail(HttpServletRequest httpServletRequest, @PathVariable(value = "ID_Product") int ID_Product) {
		Product product = serviceHome.detailProduct(ID_Product);
		httpServletRequest.setAttribute("product", product);
		List<Galery> galeries = serviceHome.galeries(ID_Product);
		// sử lý các tệp ảnh của chi tiết sản phẩm
		String[] arrayImages = new String[5];
		int i = 0;
		for(Galery galery : galeries) {
			arrayImages[i] = galery.getImage();
			i++;
		}
		// thứ tự từng ảnh để lấy dữ liệu sang trang jsp
		httpServletRequest.setAttribute("image1", arrayImages[0]);
		httpServletRequest.setAttribute("image2", arrayImages[1]);
		httpServletRequest.setAttribute("image3", arrayImages[2]);
		httpServletRequest.setAttribute("image4", arrayImages[3]);
		httpServletRequest.setAttribute("image5", arrayImages[4]);
		return "detail";
	}
	
	@RequestMapping(value="sale")
	public String sale(HttpServletRequest httpServletRequest) {
		List<Product> productsSell = serviceHome.listProductSell();
		httpServletRequest.setAttribute("productsSell", productsSell);
		return "sale";
	}
	
	@RequestMapping(value="/shoes")
	public String shoes(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		String variableName = (String) httpSession.getAttribute("variableName");
		List<Product> productsByName = serviceHome.productsByName(variableName);
		httpServletRequest.setAttribute("productsByName", productsByName);
		return "shoes";
	}
	
	@RequestMapping(value="/hat")
	public String hat(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		String variableName = (String) httpSession.getAttribute("variableName");
		List<Product> productsByName = serviceHome.productsByName(variableName);
		httpServletRequest.setAttribute("productsByName", productsByName);
		return "hat";
	}
	
	@RequestMapping(value="/shirt")
	public String shirt(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		String variableName = (String) httpSession.getAttribute("variableName");
		List<Product> productsByName = serviceHome.productsByName(variableName);
		httpServletRequest.setAttribute("productsByName", productsByName);
		return "shirt";
	}
	
	@RequestMapping(value="/trousers")
	public String trousers(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		String variableName = (String) httpSession.getAttribute("variableName");
		List<Product> productsByName = serviceHome.productsByName(variableName);
		httpServletRequest.setAttribute("productsByName", productsByName);
		return "trousers";
	}
	
	@RequestMapping(value="service")
	public String service(HttpServletRequest httpServletRequest) {
		return "service";
	}
	
	@RequestMapping(value="contact", method = RequestMethod.GET)
	public String contact(HttpServletRequest httpServletRequest) {
		return "contact";
	}
	
	@RequestMapping(value="contact", method = RequestMethod.POST)
	public String contact(HttpServletRequest httpServletRequest, HttpSession httpSession) {
		Feedback feedback = new Feedback();
		feedback.setFullName(httpServletRequest.getParameter("userName"));
		feedback.setEmail(httpServletRequest.getParameter("userEmail"));
		feedback.setPhone(httpServletRequest.getParameter("userPhone"));
		feedback.setSubject(httpServletRequest.getParameter("userMsg"));
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home/search")
	public String searchHeader(HttpServletRequest httpServletRequest ) {
		String searchHeader = httpServletRequest.getParameter("searchHeader");
		List<Product> productsSearchHeader =serviceHome.searchHeader(searchHeader);
		httpServletRequest.setAttribute("productsSearchHeader", productsSearchHeader);
		return "searchHeader";
	}
	
	
}
