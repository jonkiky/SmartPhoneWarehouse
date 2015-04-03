package com.smartphon.dao.transaction;

import java.util.Date;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.product.SmartPhoneStanderDescriptionDao;

public class SmartPhoneForTransaction extends SmartPhoneDao{

	SmartPhoneForTransaction(SmartPhoneStanderDescriptionDao standDesc) {
		super(standDesc);
		// TODO Auto-generated constructor stub
	}

	private int count;
	private Date time;
	private Order order;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
	
	
}
