package com.smartphon.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.product.SmartPhonePromotionDao;
import com.smartphone.model.Product;
@Service
public class ProductService {
	
	public SmartPhoneDao product ;
	public SmartPhonePromotionDao promotion;
	public ProductDao productDao = new SmartPhoneDao();
	
	public boolean createProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public boolean removeProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public boolean updateProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public SmartPhoneDao getSmartPhone(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public List<SmartPhoneDao> getSmartPhones(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public List<ProductDao> getProductForHomePage(){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.getNumbersOfProduct(8);
		return product;
	}

}
