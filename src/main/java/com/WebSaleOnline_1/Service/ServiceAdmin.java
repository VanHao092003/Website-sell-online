package com.WebSaleOnline_1.Service;

import java.util.List;

import com.WebSaleOnline_1.ModelAdmin.Category;
import com.WebSaleOnline_1.ModelAdmin.Role;
import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;

public interface ServiceAdmin {

//	các chức năng cho tài khoản
	public List<Account> showListAccount();
	public void deleteAccount(int ID_Account);
	public void addAccount(Account account, User user);
	
	
//	các chức năng cho khách mua hàng
	public List<User> showListUser();
	public void updateUser(User user);
	public void deleteUser(int ID_User);
	
//	danh sách sản phẩm
	public List<Product> showListProduct();
	public void deleteProduct(int ID_Product);
	public void updateProduct(Product product);
	public void addProduct(Product  product);
	
//	danh sách phản hồi
	public List<Feedback> showFeedBack();
	public void deleteFeedBack(int ID_FeedBack);
	public User showUserByFeedBack(int user_ID);
	
//	danh sách đơn hàng
	//	hàm đơn hàng tổng(giỏ hàng)
	public Order order(int ID_User);
	//	lấy số lượng sản phẩm mua
	public List<ListProduct> ListProducts(int order_ID);
	//	danh sách các đơn hàng trong giỏ hàng
	public List<Product> Products(int product_ID);
	//	chi tiết đơn hàng trong gior hàng
	public Product detailProduct(int Product_ID);
	public User showUserByOrder(int user_ID);
	
//	danh sách thương hiệu
	public List<Category> showCategory();
	public void addCategory(Category category);
	public void deleteCategory(int ID_category);
	
//	danh sách các chức quyền trên web
	public List<Role> showRole();
	public void addRole(Role role);
	public void deleteRole(int role_ID);
}
