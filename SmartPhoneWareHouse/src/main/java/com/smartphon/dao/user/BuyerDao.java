package com.smartphon.dao.user;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphone.model.Buyer;
import com.smartphone.model.Product;
import com.smartphone.webservice.util.HibernateDbUtil;
public class BuyerDao extends MemberDao {

	private MemberProfileDao profile;
	public void convertEnityBuyer(BuyerDao buyer){
		
	
	}
	
	
	public int createCustomer(Buyer buyer){
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(buyer);
		int id = buyer.getId();
		
		session.getTransaction().commit();
		session.clear();
		session.close();
		
		return id;
	}
	
	public Buyer findCustomerbyName(String name){
		
		Buyer buyer= new Buyer();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Buyer as buyer where buyer.email=:name");
		query.setParameter("name", name);
		List list = query.list();
		if(null!=list){
			buyer = (Buyer)list.get(0);
		}
		
		session.clear();
		session.close();
		return buyer;
	}
	
	
public Buyer getCustomerbyId(int name){
		
		Buyer buyer= new Buyer();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Buyer as buyer where buyer.id=:name");
		query.setParameter("name", name);
		List list = query.list();
		if(null!=list){
			buyer = (Buyer)list.get(0);
		}
		
		session.clear();
		session.close();
		return buyer;
	}
	
	
	public boolean deleteCustomer(int id){

		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete Buyer as b where b.id=:key");
		query.setParameter("key", id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		return true;
		
	}


	public Buyer updateBuyer(Buyer buyer) {
		
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery(" update Buyer "
				+ "set user_name =:userName,"
				+ "title=:title,"
				+ "fname=:fname,"
				+ "lname=:lname,"
				+ "email=:email,"
				+ "password=:password,"
				+ "birth=:birth,"
				+ "phone_number=:phone_number   "
				+ "where id=:key");
		query.setParameter("userName",buyer.getUser_name() );
		query.setParameter("title",buyer.getTitle() );
		query.setParameter("fname",buyer.getFname() );
		query.setParameter("lname", buyer.getLname());
		query.setParameter("email", buyer.getEmail());
		query.setParameter("password",buyer.getPassword() );
		query.setParameter("birth",buyer.getBirth());
		query.setParameter("phone_number",buyer.getPhone_number());
		query.setParameter("key", buyer.getId());
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		Buyer buyer2= getCustomerbyId(buyer.getId());
		return buyer2;
	}
}
