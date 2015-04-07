package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.dao.user.BuyerDao;
@Service
public class TransactionService {
	

	public SmartPhoneDao phone;
	public OrderDao order;
	public BuyerDao buyer;
	
	public void assembleOrder(){
		
	}
	
	public void notifyOrder(){
		
	}
	
	public void sendVerifyRequest(){
		
	}
	
	public void sendOrderRequest(){
		
	}
	
	public OrderDao getOrderInfo(){
		throw new UnsupportedOperationException("Implement this");
	}

}
