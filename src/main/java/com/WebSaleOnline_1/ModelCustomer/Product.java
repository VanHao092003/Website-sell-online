package com.WebSaleOnline_1.ModelCustomer;

import java.util.Date;

public class Product {
	private int ID_product;
	private String title;
	private int category_ID;
	private int price;
	private int discount;
	private String image;
	private String discription;
	private Date created_at;
	private Date updated_at;
	private int delete;
	private int sale;
	private String name;
	private String text;
	private int name_ID;
	
	public int getName_ID() {
		return name_ID;
	}

	public void setName_ID(int name_ID) {
		this.name_ID = name_ID;
	}

	public Product() {
		
	}
	
	public Product(int iD_product, String title, int category_ID, int price, int discount, String image,
			String discription, Date created_at, Date updated_at, int delete, int sale, String name, String text, int name_ID) {
		super();
		ID_product = iD_product;
		this.title = title;
		this.category_ID = category_ID;
		this.price = price;
		this.discount = discount;
		this.image = image;
		this.discription = discription;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.delete = delete;
		this.sale = sale;
		this.name = name;
		this.text = text;
		this.name_ID = name_ID;
	}
	public int getID_product() {
		return ID_product;
	}
	public void setID_product(int iD_product) {
		ID_product = iD_product;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCategory_ID() {
		return category_ID;
	}
	public void setCategory_ID(int category_ID) {
		this.category_ID = category_ID;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	public int getDelete() {
		return delete;
	}
	public void setDelete(int delete) {
		this.delete = delete;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	
	
}
