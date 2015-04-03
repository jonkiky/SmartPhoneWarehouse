package com.smartphon.dao.transaction;

import java.util.Date;
import java.util.List;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.user.BankInfo;
import com.smartphon.dao.user.ShippingAddress;
import com.smartphone.model.User;

public class Order {
	private int id ;
	private List<SmartPhoneForTransaction> phones;
	private BankInfo bankInfo;
	private ShippingAddress address;
	private User buyer;
	private Date orderTime;
	private String Status;
	private int packageTrackingCode;
	private int code;
	private int totalPrice;
	
	
	
	public List<SmartPhoneForTransaction> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransaction> phones) {
		this.phones = phones;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public BankInfo getBankInfo() {
		return bankInfo;
	}
	public void setBankInfo(BankInfo bankInfo) {
		this.bankInfo = bankInfo;
	}
	public ShippingAddress getAddress() {
		return address;
	}
	public void setAddress(ShippingAddress address) {
		this.address = address;
	}
	public User getBuyer() {
		return buyer;
	}
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public int getPackageTrackingCode() {
		return packageTrackingCode;
	}
	public void setPackageTrackingCode(int packageTrackingCode) {
		this.packageTrackingCode = packageTrackingCode;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	
	

}
