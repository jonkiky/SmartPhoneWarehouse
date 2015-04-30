package com.smartphon.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphone.model.BankInfo;
import com.smartphone.model.Order;
import com.smartphone.webservice.repository.QueryRepo;
import com.smartphone.webservice.util.HibernateDbUtil;


public  class BankInfoDao {

	private int id;
	private int cardNumber;
	private String nameOnCard;
	private int expirationDate;
	private int expirationYear;
	
	private String status;
	private BuyerDao user;
	private String type;
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getNameOnCard() {
		return nameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}
	public int getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(int expirationDate) {
		this.expirationDate = expirationDate;
	}
	public int getExpirationYear() {
		return expirationYear;
	}
	public void setExpirationYear(int expirationYear) {
		this.expirationYear = expirationYear;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public BuyerDao getUser() {
		return user;
	}
	public void setUser(BuyerDao user) {
		this.user = user;
	}
	

	public QueryRepo q = new QueryRepo();
	
	public List<BankInfo> getPaymentByBuyerId(int id) {
		
		List<BankInfo> Orders = new ArrayList<BankInfo>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getBankInfoBuyerId);
		query.setParameter("key", id);
		List Order = query.list();
		for(Object o : Order){
			Orders.add((BankInfo) o);
		}
		session.clear();
		session.close();
		return Orders;
	}
	public int addPayment(BankInfo bank) {
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(bank);
		int id = bank.getId();
		
		session.getTransaction().commit();
		session.clear();
		session.close();
		
		return id;
	}
	
public boolean deletePayment(int id) {
		
		
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();

		Query query = session.createQuery("delete BankInfo as b where b.id=:key");
		query.setParameter("key", id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		return true;
	}
	
	
	
}
