package com.smartphon.dao.user;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphone.model.BankInfo;
import com.smartphone.model.Buyer;
import com.smartphone.model.Shipping_Address;
import com.smartphone.webservice.repository.QueryRepo;
import com.smartphone.webservice.util.HibernateDbUtil;

public  class ShippingAddressDao {

	private MemberDao member;
	private String fname;
	private String lname;
	private String company;
	private String address;
	private String city;
	private String state;
	private String desc;
	private int homePhone;
	private int mobilePhone;
	
	
	public MemberDao getMember() {
		return member;
	}
	public void setMember(MemberDao member) {
		this.member = member;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public int getHomePhone() {
		return homePhone;
	}
	public void setHomePhone(int homePhone) {
		this.homePhone = homePhone;
	}
	public int getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(int mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	
	
	public QueryRepo q = new QueryRepo();
	public boolean createAddress(Shipping_Address address2) {
		
			Boolean flag =true;
			Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
			session.beginTransaction();
			session.save(address2);
			session.getTransaction().commit();
			session.clear();
			session.close();
		
		
		return true;
	}
	
	public List<Shipping_Address> getAddresses(int key) {
		List<Shipping_Address> addresses = new ArrayList<Shipping_Address>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getAddressByBuyerId);
		query.setParameter("key", key);
		List Order = query.list();
		for(Object o : Order){
			addresses.add((Shipping_Address) o);
		}
		session.clear();
		session.close();
		return addresses;
	}
	
	
	public List<Shipping_Address> getAddress(int key) {
		List<Shipping_Address> addresses = new ArrayList<Shipping_Address>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getAddressById);
		query.setParameter("key", key);
		List Order = query.list();
		for(Object o : Order){
			addresses.add((Shipping_Address) o);
		}
		session.clear();
		session.close();
		return addresses;
	}
	
	public boolean deleteAddress(int key) {
	
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery(q.deleteAddress);
		query.setParameter("key", key);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		return true;
	}
	
	
}
