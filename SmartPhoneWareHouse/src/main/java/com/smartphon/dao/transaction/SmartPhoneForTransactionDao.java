package com.smartphon.dao.transaction;

import java.util.Date;

import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.product.SmartPhoneStanderDescriptionDao;

public class SmartPhoneForTransactionDao extends SmartPhoneDao{

	public SmartPhoneForTransactionDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	private int count;
	private Date time;
	private OrderDao order;
	
	
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
	public OrderDao getOrder() {
		return order;
	}
	public void setOrder(OrderDao order) {
		this.order = order;
	}
	
	
	
}
