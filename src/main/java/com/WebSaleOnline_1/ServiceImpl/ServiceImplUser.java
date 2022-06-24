package com.WebSaleOnline_1.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WebSaleOnline_1.DAO.DAOUser;
import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;
import com.WebSaleOnline_1.Service.ServiceUser;
@Service
public class ServiceImplUser implements ServiceUser{

	@Autowired
	DAOUser daoUser;
	
//	hàm đăng nhập tài khoản
	@Override
	public Account logIn(String userName, String password) {
		return daoUser.logIn(userName, password);
	}

//	hàm thông tin người dùng
	@Override
	public User information(int ID_User) {
		return daoUser.information(ID_User);
	}

//	hàm đơn hàng tổng(giỏ hàng)
	@Override
	public Order order(int ID_User) {
		return daoUser.order(ID_User);
	}

//	chi tiết đơn hàng trong gior hàng
	@Override
	public List<Product> Products(int product_ID) {
		List<Product> products = new ArrayList<Product>();
		List<ListProduct> listProducts = daoUser.ListProducts(product_ID);
		for(ListProduct listProduct : listProducts) {
			products.add(daoUser.detailProduct(listProduct.getProduct_ID()));
		}
		return products;
	}

	@Override
	public List<ListProduct> ListProducts(int order_ID) {
		return daoUser.ListProducts(order_ID);
	}

	
}
