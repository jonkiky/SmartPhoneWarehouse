package com.smartphon.dao.product;

public class SmartPhoneStanderDescriptionDao implements  ProductDescriptionDao{

	private String productInformation;
	private String dsc;
	private String features;
	
	public String getProductInformation() {
		return productInformation;
	}
	public void setProductInformation(String productInformation) {
		this.productInformation = productInformation;
	}
	public String getDsc() {
		return dsc;
	}
	public void setDsc(String dsc) {
		this.dsc = dsc;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	
}
