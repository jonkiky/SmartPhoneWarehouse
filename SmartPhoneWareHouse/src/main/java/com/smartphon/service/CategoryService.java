package com.smartphon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.CategoryDao;
@Service
public class CategoryService {

	public CategoryDao category;
	
	public List<CategoryDao> getCategories(){
		throw new UnsupportedOperationException("Implement this");
	}
	

	public Boolean creatCategory(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean updataCategory(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeCategory(){
		throw new UnsupportedOperationException("Implement this");
	}
	
}
