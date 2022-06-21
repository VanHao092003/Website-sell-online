package com.WebSaleOnline_1.ModelCustomer;

import java.util.Date;

public class User {
	private int ID;
	private String fullname;
	private String email;
	private String phone;
	private String address;
	private Date created_at;
	private Date update_at;
	private int delete;
	
	public User() {
		
	}
	
	public User(int iD, String fullname, String email, String phone, String address, Date created_at, Date update_at,
			int delete) {
		super();
		ID = iD;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.created_at = created_at;
		this.update_at = update_at;
		this.delete = delete;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdate_at() {
		return update_at;
	}
	public void setUpdate_at(Date update_at) {
		this.update_at = update_at;
	}
	public int getDelete() {
		return delete;
	}
	public void setDelete(int delete) {
		this.delete = delete;
	}
	
	
}
