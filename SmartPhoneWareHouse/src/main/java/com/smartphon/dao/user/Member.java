package com.smartphon.dao.user;

import java.util.List;

public abstract class Member {
	
	private String id;
	private String userName;
	private String title;
	private String fName;
	private String lname;
	private String email;
	private String password;
	private MemberProfile profile;
	private List<ShippingAddress> billAddress;
	private List<BankInfo> bank;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public MemberProfile getProfile() {
		return profile;
	}
	public void setProfile(MemberProfile profile) {
		this.profile = profile;
	}
	public List<ShippingAddress> getBillAddress() {
		return billAddress;
	}
	public void setBillAddress(List<ShippingAddress> billAddress) {
		this.billAddress = billAddress;
	}
	public List<BankInfo> getBank() {
		return bank;
	}
	public void setBank(List<BankInfo> bank) {
		this.bank = bank;
	}
	

	
}
