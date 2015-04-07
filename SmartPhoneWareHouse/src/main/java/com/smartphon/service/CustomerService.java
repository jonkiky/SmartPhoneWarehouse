package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.Buyer;
import com.smartphon.dao.user.Member;
@Service
public class CustomerService {
	
	public Buyer buyer;
	
	public Boolean login(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean createCustomer(Member member){
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
