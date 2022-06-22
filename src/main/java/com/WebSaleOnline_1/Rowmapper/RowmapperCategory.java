package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelAdmin.Category;

public class RowmapperCategory implements RowMapper<Category>{

	@Override
	public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
		Category category = new Category();
		category.setID_category(rs.getInt("ID"));
		category.setName(rs.getString("name"));
		return category;
	}

}
