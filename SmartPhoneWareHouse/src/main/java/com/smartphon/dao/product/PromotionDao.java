package com.smartphon.dao.product;

import java.util.Date;

public abstract class PromotionDao {
	private int id;
	private String dsc;
	private ProductDao product;
	private Date startpoint;
	private int duration;
	private String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDsc() {
		return dsc;
	}
	public void setDsc(String dsc) {
		this.dsc = dsc;
	}
	public ProductDao getProduct() {
		return product;
	}
	public void setProduct(ProductDao product) {
		this.product = product;
	}
	public Date getStartpoint() {
		return startpoint;
	}
	public void setStartpoint(Date startpoint) {
		this.startpoint = startpoint;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
