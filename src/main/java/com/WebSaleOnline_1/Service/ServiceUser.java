package com.WebSaleOnline_1.Service;

import java.util.List;

import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;

public interface ServiceUser {

//	hàm đăng nhập tài khoản
	public Account logIn(String userName, String password);
	
//	hàm thông tin người dùng
	public User information(int ID_User);
	
//	hàm đơn hàng tổng(giỏ hàng)
	public Order order(int ID_User);
	
//	danh sách các đơn hàng trong giỏ hàng
	public List<Product> Products(int product_ID);
	
//	lấy số lượng sản phẩm mua
	public List<ListProduct> ListProducts(int order_ID);

	
}
