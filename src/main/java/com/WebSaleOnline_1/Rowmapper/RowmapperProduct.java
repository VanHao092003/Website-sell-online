package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.Product;

public class RowmapperProduct implements RowMapper<Product>{

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Product product = new Product();
		product.setID_product(rs.getInt("ID"));
		product.setTitle(rs.getString("title"));
		product.setCategory_ID(rs.getInt("category_ID"));
		product.setPrice(rs.getInt("price"));
		product.setDiscount(rs.getInt("discount"));
		product.setImage(rs.getString("image"));
		product.setDiscription(rs.getString("discription"));
		product.setCreated_at(rs.getDate("created_at"));
		product.setUpdated_at(rs.getDate("updated_at"));
		product.setDelete(rs.getInt("delete"));
		product.setSale(rs.getInt("sale"));
		product.setName(rs.getString("name"));
		product.setText(rs.getString("text"));
		product.setName_ID(rs.getInt("name_ID"));
		return product;
	}

}
