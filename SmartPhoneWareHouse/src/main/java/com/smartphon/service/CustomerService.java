package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.ShippingAddressDao;
import com.smartphone.model.Buyer;
import com.smartphone.model.Shipping_Address;
@Service
public class CustomerService {
	
	private BuyerDao buyerDao=new BuyerDao();
	
	public int login(Buyer buyer){
		int flag = -1;
		if(!buyer.getUser_name().isEmpty()&&!buyer.getPassword().isEmpty()){
			Buyer buyerInDB=buyerDao.findCustomerbyName(buyer.getUser_name());
			if(null!=buyerInDB){
				if(buyerInDB.getPassword().equals(buyer.getPassword())){
					flag=buyerInDB.getId();
				}
			}
		}
		return flag;
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public int createCustomer(Buyer buyer){
		return  buyerDao.createCustomer(buyer);
	}
	
	
	
	public Boolean updateProfile(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeCustomer(){
		throw new UnsupportedOperationException("Implement this");
	}


	public boolean newAddress(Shipping_Address address) {
		ShippingAddressDao d=new ShippingAddressDao() ;
		return  d.createAddress(address);
	}
}
