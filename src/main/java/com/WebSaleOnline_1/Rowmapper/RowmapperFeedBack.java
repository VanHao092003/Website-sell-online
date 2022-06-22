package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.Feedback;

public class RowmapperFeedBack implements RowMapper<Feedback>{

	@Override
	public Feedback mapRow(ResultSet rs, int rowNum) throws SQLException {
		Feedback feedback = new Feedback();
		feedback.setID(rs.getInt("ID"));
		feedback.setFullName(rs.getString("fullame"));
		feedback.setEmail(rs.getString("email"));
		feedback.setPhone(rs.getString("phone_number"));
		feedback.setSubject(rs.getString("subject"));
		feedback.setUser_ID(rs.getInt("user_ID"));
		return null;
	}

}
