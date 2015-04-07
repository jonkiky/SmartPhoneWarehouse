package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.dao.transaction.ShoppingCartDao;
import com.smartphon.dao.user.BuyerDao;


@Service
public class ShippingCartService {

	public SmartPhoneDao phone;
	public OrderDao order;
	public ShoppingCartDao shoppingCart;
	public BuyerDao buyer;
	
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
