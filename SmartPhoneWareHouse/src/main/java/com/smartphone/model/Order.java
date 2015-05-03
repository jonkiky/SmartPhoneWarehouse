package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table( name = "PhoneOrder" )
public class Order {
	private int id;
	private int bankinfoId ;
	private int shippinginfoId ;
	private int buyerId ;
	private String orderTime  ;
	private double totalPrice ;
	private int promtionId ;
	private String Status;
	
	
	@Id
	@GeneratedValue
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	@Column (name="bankinfo_id")
	public int getBankinfoId() {
		return bankinfoId;
	}
	public void setBankinfoId(int bankinfoId) {
		this.bankinfoId = bankinfoId;
	}
	
	

	@Column (name="shippinginfo_id")
	public int getShippinginfoId() {
		return shippinginfoId;
	}
	public void setShippinginfoId(int shippinginfoId) {
		this.shippinginfoId = shippinginfoId;
	}
	
	@Column (name="buyer_id")
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	
	
	@Column (name="order_time")
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	

	@Column (name="total_price")
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

	@Column (name="promtion_id")
	public int getPromtionId() {
		return promtionId;
	}
	public void setPromtionId(int promtionId) {
		this.promtionId = promtionId;
	}
	
	@Column (name="Status")
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	
	
}
