package com.WebSaleOnline_1.ModelAdmin;

public class Role {
	private int ID_Role;
	private String name;
	
	public Role() {
		
	}
	
	public Role(int iD_Role, String name) {
		super();
		ID_Role = iD_Role;
		this.name = name;
	}
	public int getID_Role() {
		return ID_Role;
	}
	public void setID_Role(int iD_Role) {
		ID_Role = iD_Role;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
