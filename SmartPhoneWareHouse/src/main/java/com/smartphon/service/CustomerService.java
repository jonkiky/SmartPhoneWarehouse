package com.smartphon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BuyerDao;
import com.smartphone.model.Buyer;
@Service
public class CustomerService {
	
	private BuyerDao buyerDao=new BuyerDao();
	
	public Boolean login(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public Boolean createCustomer(Buyer buyer){
		return  buyerDao.createCustomer(buyer);
	}
	
	
	
	public Boolean updateProfile(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeCustomer(){
		throw new UnsupportedOperationException("Implement this");
	}
}
