package com.WebSaleOnline_1.ModelCustomer;

public class Account {
	private int ID_Account;
	private String userName;
	private String password;
	private int user_ID;
	private int role_ID;
	private int blok;
	
	public Account() {
		
	}
	
	public Account(int iD_Account, String userName, String password, int user_ID, int role_ID, int blok) {
		super();
		ID_Account = iD_Account;
		this.userName = userName;
		this.password = password;
		this.user_ID = user_ID;
		this.role_ID = role_ID;
		this.blok = blok;
	}
	
	public int getID_Account() {
		return ID_Account;
	}
	public void setID_Account(int iD_Account) {
		ID_Account = iD_Account;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUser_ID() {
		return user_ID;
	}
	public void setUser_ID(int user_ID) {
		this.user_ID = user_ID;
	}
	public int getRole_ID() {
		return role_ID;
	}
	public void setRole_ID(int role_ID) {
		this.role_ID = role_ID;
	}
	public int getBlok() {
		return blok;
	}
	public void setBlok(int blok) {
		this.blok = blok;
	}
	
	
}
