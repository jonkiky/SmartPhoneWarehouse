package com.smartphone.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table( name = "product" )
public class Product {
	
	private int id ; 
	private String title;  
	private String name; 
	private String brand; 

	private double price; 
	private String color; 
	private int number_in_stroe;
	private String product_information;  
	private String des;
	private String feature;
	private Date post_time; 
	private String status;
	private Date modify_data;
	private Integer seller_id;
	
	@Column (name="color_id")
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

	@Id
	@GeneratedValue
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column (name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column (name="name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column (name="brand")
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}

	@Column (name="price")
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}

	@Column (name="number_in_stroe")
	public int getNumber_in_stroe() {
		return number_in_stroe;
	}
	public void setNumber_in_stroe(int number_in_stroe) {
		this.number_in_stroe = number_in_stroe;
	}
	@Column (name="product_information")
	public String getProduct_information() {
		return product_information;
	}
	public void setProduct_information(String product_information) {
		this.product_information = product_information;
	}
	@Column (name="des")
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	@Column (name="feature")
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	@Column (name="post_time")
	public Date getPost_time() {
		return post_time;
	}
	public void setPost_time(Date post_time) {
		this.post_time = post_time;
	}
	@Column (name="status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Column (name="modify_data")
	public Date getModify_data() {
		return modify_data;
	}
	public void setModify_data(Date modify_data) {
		this.modify_data = modify_data;
	}
	@Column (name="seller_id")
	public int getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(int seller_id) {
		this.seller_id = seller_id;
	}
		
	
}
