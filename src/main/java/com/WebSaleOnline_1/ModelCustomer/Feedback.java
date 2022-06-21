package com.WebSaleOnline_1.ModelCustomer;

public class Feedback {
	private int ID_Feedback;
	private String fullName;
	private String email;
	private String phone;
	private String subject;
	private int user_ID;
	
	public Feedback() {
		
	}
	
	public Feedback(int ID_Feedback, String fullName, String email, String phone, String subject, int user_ID) {
		super();
		this.ID_Feedback = ID_Feedback;
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.subject = subject;
		this.user_ID = user_ID;
	}
	public int getID() {
		return ID_Feedback;
	}
	public void setID(int ID_Feedback) {
		this.ID_Feedback = ID_Feedback;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
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
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getUser_ID() {
		return user_ID;
	}
	public void setUser_ID(int user_ID) {
		this.user_ID = user_ID;
	}
	
	
}
