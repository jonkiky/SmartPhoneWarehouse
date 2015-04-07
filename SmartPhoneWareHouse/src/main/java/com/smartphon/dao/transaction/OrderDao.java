package com.smartphon.dao.transaction;

import java.util.Date;
import java.util.List;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.user.BankInfoDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.ShippingAddressDao;

public class OrderDao {
	private int id ;
	private List<SmartPhoneForTransactionDao> phones;
	private BankInfoDao bankInfo;
	private ShippingAddressDao address;
	private BuyerDao buyer;
	private Date orderTime;
	private String Status;
	private int packageTrackingCode;
	private int code;
	private int totalPrice;
	
	
	
	public List<SmartPhoneForTransactionDao> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransactionDao> phones) {
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

	public BankInfoDao getBankInfo() {
		return bankInfo;
	}
	public void setBankInfo(BankInfoDao bankInfo) {
		this.bankInfo = bankInfo;
	}
	public ShippingAddressDao getAddress() {
		return address;
	}
	public void setAddress(ShippingAddressDao address) {
		this.address = address;
	}
	
	
	public BuyerDao getBuyer() {
		return buyer;
	}
	public void setBuyer(BuyerDao buyer) {
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
