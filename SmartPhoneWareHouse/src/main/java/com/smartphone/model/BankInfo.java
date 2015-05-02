package com.smartphone.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "bankinfo" )
public class BankInfo {
	private int id ;
	private int buyerId; 
	private String type; 
	private String cardNumber;
	private String nameOnCard;  
	private int expirationDate;
	private int expirationYear ;
	private String status;
	private String securecode;
	

	@Id
	@Column (name="id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column (name="buyer_id")
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}

	@Column (name="type")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column (name="card_number")
	
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	@Column (name="name_on_card")
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	
	@Column (name="expiration_date")
	public int getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(int expirationDate) {
		this.expirationDate = expirationDate;
	}
	
	@Column (name="expiration_year")
	public int getExpirationYear() {
		return expirationYear;
	}
	public void setExpirationYear(int expirationYear) {
		this.expirationYear = expirationYear;
	}
	
	
	@Column (name="status")
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Column (name="securecode")
	public String getSecurecode() {
		return securecode;
	}
	public void setSecurecode(String securecode) {
		this.securecode = securecode;
	}
	
	
}
