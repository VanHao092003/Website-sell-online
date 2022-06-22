package com.WebSaleOnline_1.Rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.WebSaleOnline_1.ModelCustomer.Order;

public class RowmapperOrder implements RowMapper<Order>{

	@Override
	public Order mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order order = new Order();
		order.setID_Order(rs.getInt("ID"));
		order.setOrder_date(rs.getDate("order_date"));
		order.setStatus_ID(rs.getInt("status_ID"));
		order.setUser_ID(rs.getInt("user_ID"));
		order.setTotalMoney(rs.getInt("total_money"));
		order.setNote(rs.getString("note"));
		order.setQuantityTotal(rs.getInt("quantityTotal"));
		return order;
	}

}
