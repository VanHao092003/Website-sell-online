package com.WebSaleOnline_1.Service;

import java.util.List;

import com.WebSaleOnline_1.ModelAdmin.Galery;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.Product;

public interface ServiceHome {

	
//	ID sản phẩm sẽ được chuyền theo yêu cầu của người quản lý trong trang quản trị
	public List<Product> listProductHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4);

//	ID sản phẩm sẽ được chuyền theo yêu cầu của người quản lý trong trang quản trị
	public List<Product> listProductWrapHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4, int IDProduct5, int IDProduct6, int IDProduct7);
	
//	tìm kiếm theo tên sản phẩm và thương hiệu
	public List<Product> searchProduct(String category_ID, String name_ID);
	
//	các sản phẩm được giảm giá
	public List<Product> listProductSell();
	
// 	phản hồi từ khách hàng
	public void contactUser(Feedback feedback);
	
//	tìm kiếm theo yêu cầu người dùng
	public List<Product> searchHeader(String search);
	
//	tất cả các sản phẩm có trên shop
	public List<Product> Product();
	
//	chi tiết sản phẩm
	public Product detailProduct(int Product_ID);
	
//	danh sách ảnh
	public List<Galery> galeries(int Product_ID);
	
	public List<Product> productsByName(String name_ID);

	
}
