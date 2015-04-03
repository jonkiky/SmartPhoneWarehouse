package com.smartphon.dao.product;

public class SmartPhonePromotionDao extends PromotionDao{

	private int code;
	private int price;
	


	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
	
}
