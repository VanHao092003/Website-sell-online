package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelAdmin.Galery;

public class RowmapperGallery implements RowMapper<Galery>{

	@Override
	public Galery mapRow(ResultSet rs, int rowNum) throws SQLException {
		Galery galery = new Galery();
		galery.setID_Galery(rs.getInt("ID"));
		galery.setProduct_ID(rs.getInt("product_ID"));
		galery.setImage(rs.getString("image"));
		return galery;
	}

}
