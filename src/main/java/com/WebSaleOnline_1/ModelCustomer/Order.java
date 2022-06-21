package com.WebSaleOnline_1.ModelCustomer;

import java.util.Date;

public class Order {
	private int ID_Order;
	private Date order_date;
	private int status_ID;
	private int user_ID;
	private int totalMoney;
	private String note;
	private int quantityTotal;
	
	public Order() {
		
	}
	
	public Order(int iD_Order, Date order_date, int status_ID, int user_ID, int totalMoney, String note,
			int quantityTotal) {
		super();
		ID_Order = iD_Order;
		this.order_date = order_date;
		this.status_ID = status_ID;
		this.user_ID = user_ID;
		this.totalMoney = totalMoney;
		this.note = note;
		this.quantityTotal = quantityTotal;
	}
	
	public int getID_Order() {
		return ID_Order;
	}
	public void setID_Order(int iD_Order) {
		ID_Order = iD_Order;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public int getStatus_ID() {
		return status_ID;
	}
	public void setStatus_ID(int status_ID) {
		this.status_ID = status_ID;
	}
	public int getUser_ID() {
		return user_ID;
	}
	public void setUser_ID(int user_ID) {
		this.user_ID = user_ID;
	}
	public int getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getQuantityTotal() {
		return quantityTotal;
	}
	public void setQuantityTotal(int quantityTotal) {
		this.quantityTotal = quantityTotal;
	}
	
}
