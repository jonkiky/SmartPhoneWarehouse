package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table( name = "shoppingcart_product" )
public class ShoppingCart {
	private int id;
	private int shoppingcartId ;
	private int productId;
	private int count ;
	private int buyerId;
	
	@Id
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column (name="shoppingcart_id")
	public int getShoppingcartId() {
		return shoppingcartId;
	}
	public void setShoppingcartId(int shoppingcartId) {
		this.shoppingcartId = shoppingcartId;
	}
	
	@Column (name="product_id")
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	@Column (name="count")
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Column (name="buyer_id")
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	
	
	
}
