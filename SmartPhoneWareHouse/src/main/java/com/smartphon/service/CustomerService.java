package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.MemberDao;
import com.smartphone.model.Buyer;
@Service
public class CustomerService {
	
	public BuyerDao buyerDao;
	
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
