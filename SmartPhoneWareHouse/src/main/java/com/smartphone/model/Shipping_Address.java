package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table( name = "shipping_address" )
public class Shipping_Address {
	private int id;
	private int buyerId;
	private String user_name ;
	private String company ;
	private String address;
	private String city ;
	private String state ;
	private String desc ;
	private int homePhone ;
	private int mobilePhone ;
	
	
	@Id
	@GeneratedValue
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column (name="user_name")
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	@Column (name="buyer_id")
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	
	
	@Column (name="company")
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	
	@Column (name="address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	@Column (name="city")
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	
	@Column (name="state")
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Column (name="descript")
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	@Column (name="homePhone")
	public int getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(int homePhone) {
		this.homePhone = homePhone;
	}
	
	@Column (name="mobilePhone")
	public int getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(int mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	
	
	
	
}
