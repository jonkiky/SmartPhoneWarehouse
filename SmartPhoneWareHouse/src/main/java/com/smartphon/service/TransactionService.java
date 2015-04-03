package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.transaction.Order;
import com.smartphon.dao.transaction.ShoppingCart;
import com.smartphon.dao.user.Buyer;
@Service
public class TransactionService {
	

	public SmartPhoneDao phone;
	public Order order;
	public Buyer buyer;
	
	public void assembleOrder(){
		
	}
	
	public void notifyOrder(){
		
	}
	
	public void sendVerifyRequest(){
		
	}
	
	public void sendOrderRequest(){
		
	}
	
	public Order getOrderInfo(){
		throw new UnsupportedOperationException("Implement this");
	}

}
