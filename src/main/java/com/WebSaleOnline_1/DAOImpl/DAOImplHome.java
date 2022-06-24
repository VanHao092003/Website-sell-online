package com.WebSaleOnline_1.DAOImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.WebSaleOnline_1.DAO.DAOHome;
import com.WebSaleOnline_1.ModelAdmin.Galery;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.Rowmapper.RowmapperGallery;
import com.WebSaleOnline_1.Rowmapper.RowmapperProduct;

@Repository
public class DAOImplHome implements DAOHome{

	@Autowired
	JdbcTemplate jdbcTemplate;
	@Override
	public List<Product> listProductHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4) {
		// TODO Auto-generated method stub
		List<Product> products = new ArrayList<Product>();
		int arrayProduct[] = {IDProduct1, IDProduct2, IDProduct3, IDProduct4};
		for(int i = 0; i <= 3; i++) {
			String SQL = "select * from Product where ID =" + arrayProduct[i];
			Product product = jdbcTemplate.queryForObject(SQL, new RowmapperProduct());
			products.add(product);
		}
		return products;
	}

	@Override
	public List<Product> listProductWrapHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4,
			int IDProduct5, int IDProduct6, int IDProduct7) {
		List<Product> products = new ArrayList<Product>();
		int arrayProduct[] = {IDProduct1, IDProduct2, IDProduct3, IDProduct4, IDProduct5, IDProduct6, IDProduct7};
		for(int i = 0; i <= 6; i++) {
			String SQL = "select * from Product where ID = " + arrayProduct[i];
			Product product = jdbcTemplate.queryForObject(SQL, new RowmapperProduct());
			products.add(product);
		}
		return products;
	}
		
	@Override
	public List<Product> searchProduct(String category_ID, String name_ID) {
		String category_IDString = category_ID;
		String name_IDString = name_ID;
		if(name_IDString.equals("0")) {
			name_IDString = "";
		}
		if(category_IDString.equals("0")) {
			category_IDString = "";
		}
		String SQL = "select * from Product where category_ID LIKE '%" + category_IDString + "%'" + " and name_ID LIKE '%" + name_IDString + "%'" ;
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

	@Override
	public List<Product> listProductSell() {
		String SQL = "select * from Product where sale = 1";
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

	@Override
	public void contactUser(Feedback feedback) {
		String SQL = "insert into FeedBack (fullame, email, phone_number, subject, user_ID) values (?, ?, ?, ?, ?)";
		jdbcTemplate.update(SQL, feedback.getFullName(), feedback.getEmail(), feedback.getPhone(), feedback.getSubject(), feedback.getUser_ID());
	}

	@Override
	public List<Product> searchHeader(String search) {
		String SQL = "select * from Product where name LIKE '%" + search + "%'";
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

	@Override
	public List<com.WebSaleOnline_1.ModelCustomer.Product> Product() {
		String SQL = "select * from Product where 'delete' != 1";
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

	@Override
	public Product detailProduct(int Product_ID) {
		String SQL = "select * from Product where ID = " + Product_ID;
		return jdbcTemplate.queryForObject(SQL, new RowmapperProduct() );
	}

	@Override
	public List<Galery> galeries(int Product_ID) {
		String SQL = "select * from Galery where product_ID = " + Product_ID;
		return jdbcTemplate.query(SQL, new RowmapperGallery());
	}

	@Override
	public List<com.WebSaleOnline_1.ModelCustomer.Product> productsByName(String name_ID) {
		String SQL = "select * from Product where name_ID = " + name_ID;
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

}
