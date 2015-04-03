package com.smartphon.dao.product;

public class SpecialOfferDao extends ProductDao{

	private SmartPhonePromotionDao promotion;
	public double getSpecialPrice() {
		return promotion.getPrice();
	}
	
}
