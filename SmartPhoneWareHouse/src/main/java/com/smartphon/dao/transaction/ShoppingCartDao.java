package com.smartphon.dao.transaction;

import java.util.List;

import com.smartphon.dao.user.BuyerDao;

public class ShoppingCartDao {
	private List<SmartPhoneForTransactionDao> phones;
	private BuyerDao buyer;
	
	
	public List<SmartPhoneForTransactionDao> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransactionDao> phones) {
		this.phones = phones;
	}
	public BuyerDao getBuyer() {
		return buyer;
	}
	public void setBuyer(BuyerDao buyer) {
		this.buyer = buyer;
	}
	
	
	
}
