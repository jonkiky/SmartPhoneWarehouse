package com.smartphon.dao.transaction;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.user.BankInfoDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.ShippingAddressDao;
import com.smartphone.model.Order;
import com.smartphone.model.OrderProduct;
import com.smartphone.model.Product;
import com.smartphone.webservice.repository.QueryRepo;
import com.smartphone.webservice.util.HibernateDbUtil;

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
	private double totalPrice;
	
	
	
	public List<SmartPhoneForTransactionDao> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransactionDao> phones) {
		this.phones = phones;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice2) {
		this.totalPrice = totalPrice2;
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
	
	
	
	
	
	
	
	
	
	
	public QueryRepo q = new QueryRepo();
	
	
	public  List<Order> getOrderHistoryByBuyerId(int id) {
		
		List<Order> Orders = new ArrayList<Order>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getOrderByBuyerId);
		query.setParameter("key", id);
		List Order = query.list();
		for(Object o : Order){
			Orders.add((Order) o);
		}
		session.clear();
		session.close();
			
		return Orders;
	}
	
	
public  List<Order> getOrderHistory() {
		
		List<Order> Orders = new ArrayList<Order>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Order");
		List Order = query.list();
		for(Object o : Order){
			Orders.add((Order) o);
		}
		session.clear();
		session.close();
		
		
		return Orders;
	}
	public List<OrderProduct> getOrderPrdoct(int id) {
		
		
		List<OrderProduct> Orders = new ArrayList<OrderProduct>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getOrderProductByOrderId);
		query.setParameter("key", id);
		List Order = query.list();
		for(Object o : Order){
			Orders.add((OrderProduct) o);
		}
		session.clear();
		session.close();
		return Orders;
	}
	
	
public boolean deleteOrder(int id) {
		
		
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete Order where id=:key");
		query.setParameter("key", id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		
		session.getTransaction().begin();
		Query query2 = session.createQuery("delete OrderProduct where order_id=:key");
		query2.setParameter("key", id);
		int result2 = query2.executeUpdate();
		session.getTransaction().commit();
		
		session.clear();
		session.close();
		return true;
	}
public void updateOrderPackage(int pid, int pcode) {

	Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
	session.getTransaction().begin();
	Query query = session.createQuery("update OrderProduct "
			+ "set package_tracking_code=:code   "
			+ "where id=:key");
	query.setParameter("code",pcode );
	query.setParameter("key", pid);
	int result = query.executeUpdate();
	session.getTransaction().commit();
	session.clear();
	session.close();
	
}
public void updateOrderStatus(int pid, String status2) {

	Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
	session.getTransaction().begin();
	Query query = session.createQuery(" update Order "
			+ "set Status=:Status   "
			+ "where id=:key");
	query.setParameter("Status",status2 );
	query.setParameter("key", pid);
	int result = query.executeUpdate();
	session.getTransaction().commit();
	session.clear();
	session.close();
	
}
	
public int addOrder(Order order) {
	Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
	session.beginTransaction();
	session.save(order);
	int id = order.getId();
	
	session.getTransaction().commit();
	session.clear();
	session.close();
	
	return id;

	
}
	
	
public int addOrderProduct(OrderProduct order) {
	Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
	session.beginTransaction();
	session.save(order);
	int id = order.getId();
	
	session.getTransaction().commit();
	session.clear();
	session.close();
	
	return id;

	
}

}
