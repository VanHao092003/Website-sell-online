package com.WebSaleOnline_1.DAOImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.WebSaleOnline_1.DAO.DAOAdmin;
import com.WebSaleOnline_1.ModelAdmin.Category;
import com.WebSaleOnline_1.ModelAdmin.Role;
import com.WebSaleOnline_1.ModelCustomer.Account;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.ListProduct;
import com.WebSaleOnline_1.ModelCustomer.Order;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.ModelCustomer.User;
import com.WebSaleOnline_1.Rowmapper.RowmapperAccount;
import com.WebSaleOnline_1.Rowmapper.RowmapperCategory;
import com.WebSaleOnline_1.Rowmapper.RowmapperFeedBack;
import com.WebSaleOnline_1.Rowmapper.RowmapperListProduct;
import com.WebSaleOnline_1.Rowmapper.RowmapperOrder;
import com.WebSaleOnline_1.Rowmapper.RowmapperProduct;
import com.WebSaleOnline_1.Rowmapper.RowmapperRole;
import com.WebSaleOnline_1.Rowmapper.RowmapperUser;

@Repository
public class DAOImplAdmin implements DAOAdmin{
	
	@Autowired
	JdbcTemplate jdbcTemplate;

//	các chức năng cho tài khoản
	@Override
	public List<Account> showListAccount() {
		String SQL = "select * from Account where blok = 1";
		return jdbcTemplate.query(SQL, new RowmapperAccount());
	}

	@Override
	public void deleteAccount(int ID_Account) {
		String SQL = "update Account set blok = ? where ID = ?" ;
		jdbcTemplate.update(SQL, 1, ID_Account);
	}

	@Override
	public void addAccount(Account account, User user) {
		String SQLUser = "insert into User (ID, fullName, email, phone_munber, address, created_at, updated_at, delete) values (?, ?, ?, ?, ?, ?, ?)";
		String SQLAccount = "insert into Account (ID, userName, password, user_ID, role_ID, blok) values (?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(SQLUser, user.getID(), user.getFullname(), user.getEmail(), user.getPhone(), user.getAddress(), user.getCreated_at(), user.getUpdate_at(), user.getDelete());
		jdbcTemplate.update(SQLAccount, account.getID_Account(), account.getUserName(), account.getPassword(), account.getUser_ID(), account.getRole_ID(), account.getBlok());
	}
	
	
	
//	các chức năng cho khách mua hàng
	@Override
	public List<User> showListUser() {
		String SQL = "select * from User where delete = 1";
		return jdbcTemplate.query(SQL, new RowmapperUser());
	}

	@Override
	public void updateUser(User user) {
		String SQL = "update User set fullName = ?, email = ?, phone_number = ?, address = ?, update_at = ? where ID = ?";
		jdbcTemplate.update(SQL, user.getFullname(), user.getEmail(), user.getPhone(), user.getAddress(), user.getUpdate_at(), user.getID());
	}

	@Override
	public void deleteUser(int ID_User) {
		String SQL = "update User set blok = ? where ID = ?" ;
		jdbcTemplate.update(SQL, 1, ID_User);	}
	
	
	
//	danh sách sản phẩm
	@Override
	public List<Product> showListProduct() {
		String SQL = "select * from Product where delete = 1";
		return jdbcTemplate.query(SQL, new RowmapperProduct());
	}

	@Override
	public void deleteProduct(int ID_Product) {
		String SQL = "update Product set delete = ? where ID = ?";
		jdbcTemplate.update(SQL, 1, ID_Product);
	}

	@Override
	public void updateProduct(Product product) {
		String SQL = "update Product set price = ?, discount = ?, sale = ? where ID = ?";
		jdbcTemplate.update(SQL, product.getPrice(), product.getDiscount(), product.getSale(), product.getID_product());
	}

	@Override
	public void addProduct(Product product) {
		String SQL = "insert into Product (title, category_ID, price, discount, image, discription, created_at, name, text, name_ID) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(SQL, product.getTitle(), product.getCategory_ID(), product.getPrice(), product.getDiscount(), product.getImage(), product.getDiscription(), product.getCreated_at(), product.getName(), product.getText(), product.getName_ID());
	}

	
	
//	danh sách phản hồi
	@Override
	public List<Feedback> showFeedBack() {
		String SQl = "select * from FeedBack ";
		return jdbcTemplate.query(SQl, new RowmapperFeedBack());
	}

	@Override
	public void deleteFeedBack(int ID_FeedBack) {
		String SQL = "delete from FeddBack where ID = ";
		jdbcTemplate.update(SQL, ID_FeedBack);
	}

	@Override
	public User showUserByFeedBack(int user_ID) {
		String SQL = "select * from User where ID =?";
		return jdbcTemplate.queryForObject(SQL,new RowmapperUser());
	}

	
	
	
//	danh sách đơn hàng
	
	@Override
	public Order order(int ID_User) {
		String SQl = "select * from Order where user_ID = " + ID_User;
		return jdbcTemplate.queryForObject(SQl, new RowmapperOrder());
	}

	@Override
	public List<ListProduct> listProducts(int order_ID) {
		String SQL = "select * from ListProduct where order_ID = " + order_ID;
		return jdbcTemplate.query(SQL, new RowmapperListProduct());
	}

	@Override
	public Product detailProduct(int Product_ID) {
		String SQL = "select * from Product where order_ID = " + Product_ID;
		return jdbcTemplate.queryForObject(SQL, new RowmapperProduct() );
	}

	@Override
	public User showUserByOrder(int user_ID) {
		String SQL = "select * from User where ID = " + user_ID;
		return jdbcTemplate.queryForObject(SQL, new RowmapperUser());
	}
	

	
	
//	danh sách thương hiệu
	@Override
	public List<Category> showCategory() {
		String SQL = "select * from Category";
		return jdbcTemplate.query(SQL, new RowmapperCategory());
	}

	@Override
	public void addCategory(Category category) {
		String SQL = "insert into Category (name) values (?)";
		jdbcTemplate.update(SQL, category.getName());
	}

	@Override
	public void deleteCategory(int ID_category) {
		String SQL = "delete from Category where ID = ?";
		jdbcTemplate.update(SQL, ID_category);
	}
	
	
	
	
//	danh sách các chức quyền trên web
	@Override
	public List<Role> showRole() {
		String SQL = "select * from Role";
		return jdbcTemplate.query(SQL, new RowmapperRole());
	}

	@Override
	public void addRole(Role role) {
		String SQL = "insert into Role (name) values (?)";
		jdbcTemplate.update(SQL, role.getName());
	}

	@Override
	public void deleteRole(int role_ID) {
		String SQL = "delete from Role where ID = ?";
		jdbcTemplate.update(SQL, role_ID);
	}

}
