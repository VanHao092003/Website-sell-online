package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.User;

public class RowmapperUser implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setID(rs.getInt("ID"));
		user.setFullname(rs.getString("fullame"));
		user.setEmail(rs.getString("email"));
		user.setPhone(rs.getString("phone_number"));
		user.setAddress(rs.getString("address"));
		user.setCreated_at(rs.getDate("created_at"));
		user.setUpdate_at(rs.getDate("updated_at"));
		user.setDelete(rs.getInt("delete"));
		return user;
	}

}
