package com.WebSaleOnline_1.ModelAdmin;

public class Status {
	private int ID_status;
	private String name;
	
	public Status() {
		
	}
	
	public Status(int iD_status, String name) {
		super();
		ID_status = iD_status;
		this.name = name;
	}
	public int getID_status() {
		return ID_status;
	}
	public void setID_status(int iD_status) {
		ID_status = iD_status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
