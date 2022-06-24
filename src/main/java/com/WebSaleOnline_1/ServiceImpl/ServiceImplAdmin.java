package com.WebSaleOnline_1.ServiceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WebSaleOnline_1.DAO.DAOAdmin;
import com.WebSaleOnline_1.ModelAdmin.Category;
import com.WebSaleOnline_1.ModelAdmin.Role;
import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;
import com.WebSaleOnline_1.Service.ServiceAdmin;
@Service
public class ServiceImplAdmin implements ServiceAdmin{

	@Autowired
	DAOAdmin daoAdmin;
	
//	các chức năng cho tài khoản
	@Override
	public List<Account> showListAccount() {
		daoAdmin.showListAccount();
		return null;
	}

	@Override
	public void deleteAccount(int ID_Account) {
		daoAdmin.deleteAccount(ID_Account);
	}

	@Override
	public void addAccount(Account account, User user) {
		daoAdmin.addAccount(account, user);
	}

//	các chức năng cho khách mua hàng
	@Override
	public List<User> showListUser() {
		return daoAdmin.showListUser();
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		daoAdmin.updateUser(user);
	}

	@Override
	public void deleteUser(int ID_User) {
		// TODO Auto-generated method stub
		daoAdmin.deleteUser(ID_User);
	}

//	danh sách sản phẩm
	@Override
	public List<Product> showListProduct() {
		daoAdmin.showListProduct();
		return null;
	}

	@Override
	public void deleteProduct(int ID_Product) {
		// TODO Auto-generated method stub
		daoAdmin.deleteProduct(ID_Product);
	}

	@Override
	public void updateProduct(Product product) {
		// TODO Auto-generated method stub
		daoAdmin.updateProduct(product);
	}

	@Override
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		daoAdmin.addProduct(product);
	}

//	danh sách phản hồi
	@Override
	public List<Feedback> showFeedBack() {
		daoAdmin.showFeedBack();
		return null;
	}

	@Override
	public void deleteFeedBack(int ID_FeedBack) {
		// TODO Auto-generated method stub
		daoAdmin.deleteFeedBack(ID_FeedBack);
	}

	@Override
	public User showUserByFeedBack(int user_ID) {
		daoAdmin.showUserByFeedBack(user_ID);
		return null;
	}

//	danh sách đơn hàng
	//	hàm đơn hàng tổng(giỏ hàng)
	@Override
	public Order order(int ID_User) {
		daoAdmin.order(ID_User);
		return null;
	}
	//	danh sách các đơn hàng trong giỏ hàng
	@Override
	public List<Product> Products(int Product_ID) {
		List<Product> products = new ArrayList<Product>();
		List<ListProduct> listProducts = daoAdmin.listProducts(Product_ID);
		for(ListProduct listProduct : listProducts) {
			products.add(daoAdmin.detailProduct(listProduct.getProduct_ID()));
		}
		return products;
	}
	//	lấy số lượng sản phẩm mua
	public List<ListProduct> ListProducts(int order_ID){
		return daoAdmin.listProducts(order_ID);
	}

	//	chi tiết đơn hàng trong gior hàng
	@Override
	public Product detailProduct(int Product_ID) {
		return daoAdmin.detailProduct(Product_ID);
	}

	@Override
	public User showUserByOrder(int user_ID) {
		return daoAdmin.showUserByOrder(user_ID);
	}

//	danh sách thương hiệu
	@Override
	public List<Category> showCategory() {
		return daoAdmin.showCategory();
	}

	@Override
	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		daoAdmin.addCategory(category);
	}

	@Override
	public void deleteCategory(int ID_category) {
		// TODO Auto-generated method stub
		daoAdmin.deleteCategory(ID_category);
	}

//	danh sách các chức quyền trên web
	@Override
	public List<Role> showRole() {
		// TODO Auto-generated method stub
		return daoAdmin.showRole();
	}

	@Override
	public void addRole(Role role) {
		// TODO Auto-generated method stub
		daoAdmin.addRole(role);
	}

	@Override
	public void deleteRole(int role_ID) {
		// TODO Auto-generated method stub
		daoAdmin.deleteRole(role_ID);
	}

}
