package com.smartphon.dao.transaction;

import java.util.List;

import com.smartphone.model.User;

public class ShoppingCartDao {
	private List<SmartPhoneForTransactionDao> phones;
	private User buyer;
	
	
	public List<SmartPhoneForTransactionDao> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransactionDao> phones) {
		this.phones = phones;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	
	
}
