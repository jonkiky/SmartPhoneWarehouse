package com.smartphon.dao.transaction;

import java.util.List;

import com.smartphone.model.User;

public class ShoppingCart {
	private List<SmartPhoneForTransaction> phones;
	private User buyer;
	
	
	public List<SmartPhoneForTransaction> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransaction> phones) {
		this.phones = phones;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	
	
}
