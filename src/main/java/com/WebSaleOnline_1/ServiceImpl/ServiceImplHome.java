package com.WebSaleOnline_1.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WebSaleOnline_1.DAO.DAOHome;
import com.WebSaleOnline_1.ModelAdmin.Galery;
import com.WebSaleOnline_1.ModelCustomer.Feedback;
import com.WebSaleOnline_1.ModelCustomer.Product;
import com.WebSaleOnline_1.Service.ServiceHome;
@Service
public class ServiceImplHome implements ServiceHome{

	@Autowired
	DAOHome daoHome;
//	ID sản phẩm sẽ được chuyền theo yêu cầu của người quản lý trong trang quản trị
	@Override
	public List<Product> listProductHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4) {
		return daoHome.listProductHeader(IDProduct1, IDProduct2, IDProduct3, IDProduct4);
	}

	@Override
	public List<Product> listProductWrapHeader(int IDProduct1, int IDProduct2, int IDProduct3, int IDProduct4,
			int IDProduct5, int IDProduct6, int IDProduct7) {
		return daoHome.listProductWrapHeader(IDProduct1, IDProduct2, IDProduct3, IDProduct4, IDProduct5, IDProduct6, IDProduct7);
	}

	@Override
	public List<Product> searchProduct(String category_ID, String name_ID) {
		return daoHome.searchProduct(category_ID, name_ID);
	}
	
	@Override
	public List<Product> listProductSell() {
		return daoHome.listProductSell();
	}

	@Override
	public void contactUser(Feedback feedback) {
		daoHome.contactUser(feedback);
	}

	@Override
	public List<Product> searchHeader(String search) {
		return daoHome.searchHeader(search);
	}

	@Override
	public List<com.WebSaleOnline_1.ModelCustomer.Product> Product() {
		return daoHome.Product();
	}

	@Override
	public com.WebSaleOnline_1.ModelCustomer.Product detailProduct(int Product_ID) {
		
		return daoHome.detailProduct(Product_ID);
	}

	@Override
	public List<Galery> galeries(int Product_ID) {
		return daoHome.galeries(Product_ID);
	}

	@Override
	public List<com.WebSaleOnline_1.ModelCustomer.Product> productsByName(String name_ID) {
		return daoHome.productsByName(name_ID);
	}

}
