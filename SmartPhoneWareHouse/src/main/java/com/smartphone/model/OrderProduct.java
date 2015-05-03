package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table( name = "order_product" )
public class OrderProduct {
	private int id ;
	private int order_id ;
	private int product_id ; 
	private int count;
	private int package_tracking_code ;
	

	@Id
	@GeneratedValue
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column (name="order_id")
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	

	@Column (name="product_id")
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	


	@Column (name="count")
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	


	@Column (name="package_tracking_code")
	public int getPackage_tracking_code() {
		return package_tracking_code;
	}
	public void setPackage_tracking_code(int package_tracking_code) {
		this.package_tracking_code = package_tracking_code;
	}
	
	
	
}
