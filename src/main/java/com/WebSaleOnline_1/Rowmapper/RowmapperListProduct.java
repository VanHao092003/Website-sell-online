package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.ListProduct;

public class RowmapperListProduct implements RowMapper<ListProduct>{

	@Override
	public ListProduct mapRow(ResultSet rs, int rowNum) throws SQLException {
		ListProduct listProduct = new ListProduct();
		listProduct.setID(rs.getInt("ID"));
		listProduct.setProduct_ID(rs.getInt("product_ID"));
		listProduct.setOrder_ID(rs.getInt("order_ID"));
		listProduct.setQuantity(rs.getInt("quantity"));
		return listProduct;
	}
	
}
