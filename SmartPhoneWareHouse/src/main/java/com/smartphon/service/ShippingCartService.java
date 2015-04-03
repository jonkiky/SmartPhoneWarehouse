package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.transaction.Order;
import com.smartphon.dao.transaction.ShoppingCart;
import com.smartphon.dao.user.Buyer;
@Service
public class ShippingCartService {

	public SmartPhoneDao phone;
	public Order order;
	public ShoppingCart shoppingCart;
	public Buyer buyer;
	
	public void addProduct(){
		
	}
	
	public void removeProduct(){
		
	}
	
	public boolean checkStorage(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public void submitToOrder(){
		
	}
	
}
