package com.WebSaleOnline_1.DAOImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.WebSaleOnline_1.DAO.DAOUser;
import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;
import com.WebSaleOnline_1.Rowmapper.RowmapperAccount;
import com.WebSaleOnline_1.Rowmapper.RowmapperListProduct;
import com.WebSaleOnline_1.Rowmapper.RowmapperOrder;
import com.WebSaleOnline_1.Rowmapper.RowmapperProduct;
import com.WebSaleOnline_1.Rowmapper.RowmapperUser;

@Repository
public class DAOImplUser implements DAOUser{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Account logIn(String userName, String password) {
		// TODO Auto-generated method stub
		String SQL = "select * from Account where userName = " + userName + " and password = " + password;
		return jdbcTemplate.queryForObject(SQL, new RowmapperAccount());
	}

	@Override
	public User information(int ID_User) {
		String SQl = "select * from User where ID = " + ID_User;
		return jdbcTemplate.queryForObject(SQl, new RowmapperUser());
	}

	@Override
	public Order order(int ID_User) {
		String SQl = "select * from Order where user_ID = " + ID_User;
		return jdbcTemplate.queryForObject(SQl, new RowmapperOrder());
	}

	@Override
	public List<ListProduct> ListProducts(int order_ID) {
		String SQL = "select * from ListProduct where order_ID = " + order_ID;
		return jdbcTemplate.query(SQL, new RowmapperListProduct());
	}

	@Override
	public Product detailProduct(int Product_ID) {
		String SQL = "select * from Product where order_ID = " + Product_ID;
		return jdbcTemplate.queryForObject(SQL, new RowmapperProduct() );
	}

	@Override
	public List<Product> Products(int product_ID) {
		String SQL = "select * from ListProduct where order_ID = " + product_ID;
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

}
