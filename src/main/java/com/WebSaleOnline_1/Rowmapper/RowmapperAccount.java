package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.Account;

public class RowmapperAccount implements RowMapper<Account>{

	@Override
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		Account account = new Account();
		account.setID_Account(rs.getInt("ID"));
		account.setUserName(rs.getString("userName"));
		account.setPassword(rs.getString("password"));
		account.setUser_ID(rs.getInt("user_ID"));
		account.setRole_ID(rs.getInt("role_ID"));
		account.setBlok(rs.getInt("blok"));
		return account;
	}

}
