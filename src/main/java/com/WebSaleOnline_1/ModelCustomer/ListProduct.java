package com.WebSaleOnline_1.ModelCustomer;

public class ListProduct {
	private int ID;
	private int product_ID;
	private int order_ID;
	private int quantity;
	
	public ListProduct() {
		
	}
	
	
	public ListProduct(int iD, int product_ID, int order_ID, int quantity) {
		super();
		ID = iD;
		this.product_ID = product_ID;
		this.order_ID = order_ID;
		this.quantity = quantity;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public int getProduct_ID() {
		return product_ID;
	}
	public void setProduct_ID(int product_ID) {
		this.product_ID = product_ID;
	}
	public int getOrder_ID() {
		return order_ID;
	}
	public void setOrder_ID(int order_ID) {
		this.order_ID = order_ID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
}
