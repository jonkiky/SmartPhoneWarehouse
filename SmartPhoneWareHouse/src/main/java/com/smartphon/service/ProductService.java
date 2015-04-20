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
	
	public ProductDao getProductById(String key){
		ProductDao product = new ProductDao();
		product = productDao.getProductById(key);
		return product;
	}
	
	public List<SmartPhoneDao> getSmartPhones(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public List<ProductDao> getProductForHomePage(){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.getNumbersOfProduct(8);
		return product;
	}

	
	public List<ProductDao> getProductbyKeyWords( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.getProductbyKeyWords(key);
		return product;
	}
	
	public List<ProductDao> searchProductByBrand( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByBrand(key);
		return product;
	}
	
	public List<ProductDao> searchProductByPrice( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByPrice(key);
		return product;
	}
	
	public List<ProductDao> searchProductByColor( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByColor(key);
		return product;
	}
	
	
}
