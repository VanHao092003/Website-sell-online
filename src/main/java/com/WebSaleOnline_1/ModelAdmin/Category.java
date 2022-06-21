package com.WebSaleOnline_1.ModelAdmin;

public class Category {
	private int ID_category;
	private String name;
	
	public Category() {
		
	}
	
	public Category(int iD_category, String name) {
		super();
		ID_category = iD_category;
		this.name = name;
	}
	public int getID_category() {
		return ID_category;
	}
	public void setID_category(int iD_category) {
		ID_category = iD_category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
