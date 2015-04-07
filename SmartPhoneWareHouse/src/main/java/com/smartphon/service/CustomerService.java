package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.MemberDao;
@Service
public class CustomerService {
	
	public BuyerDao buyer;
	
	public Boolean login(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean createCustomer(MemberDao member){
		Boolean flag =false;
          
		return flag;
	}
	
	public Boolean updateProfile(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeCustomer(){
		throw new UnsupportedOperationException("Implement this");
	}
}
