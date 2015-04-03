package com.smartphon.dao.product;

public class SmartPhoneDao extends ProductDao{

	
	protected SmartPhoneDao(SmartPhoneStanderDescriptionDao standDesc){
		this.setDes(standDesc);
	}
	
	
}
