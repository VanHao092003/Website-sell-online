package com.WebSaleOnline_1.ModelAdmin;

public class Galery {
	private int ID_Galery;
	private int product_ID;;
	private String image;
	
	public Galery() {
		
	}
	
	public Galery(int iD_Galery, int product_ID, String image) {
		super();
		ID_Galery = iD_Galery;
		this.product_ID = product_ID;
		this.image = image;
	}
	public int getID_Galery() {
		return ID_Galery;
	}
	public void setID_Galery(int iD_Galery) {
		ID_Galery = iD_Galery;
	}
	public int getProduct_ID() {
		return product_ID;
	}
	public void setProduct_ID(int product_ID) {
		this.product_ID = product_ID;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
