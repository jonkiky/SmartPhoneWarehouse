package com.smartphon.dao.user;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphone.model.Buyer;
import com.smartphone.model.Seller;
import com.smartphone.webservice.util.HibernateDbUtil;

public class SellerDao extends MemberDao {
	private MemberProfileDao profile;
	
	
	

	
	public int createCustomer(Seller seller){
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(seller);
		int id = seller.getId();
		
		session.getTransaction().commit();
		session.clear();
		session.close();
		
		return id;
	}
	
	public Seller findSellerbyName(String name){
		
		Seller seller= new Seller();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Seller as seller where seller.email=:name");
		query.setParameter("name", name);
		List list = query.list();
		if(null!=list){
			seller = (Seller)list.get(0);
		}
		
		session.clear();
		session.close();
		return seller;
	}
	
	
public Seller getCustomerbyId(int name){
		
		Seller seller= new Seller();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Seller as seller where seller.id=:name");
		query.setParameter("name", name);
		List list = query.list();
		if(null!=list){
			seller = (Seller)list.get(0);
		}
		
		session.clear();
		session.close();
		return seller;
	}
	
	
	public boolean deleteCustomer(int id){

		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete Seller as b where b.id=:key");
		query.setParameter("key", id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		return true;
		
	}


	public Seller updateSeller(Seller seller) {
		
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery(" update Seller "
				+ "set user_name =:userName,"
				+ "title=:title,"
				+ "fname=:fname,"
				+ "lname=:lname,"
				+ "email=:email,"
				+ "password=:password,"
				+ "birth=:birth,"
				+ "phone_number=:phone_number   "
				+ "where id=:key");
		query.setParameter("userName",seller.getUser_name() );
		query.setParameter("title",seller.getTitle() );
		query.setParameter("fname",seller.getFname() );
		query.setParameter("lname", seller.getLname());
		query.setParameter("email", seller.getEmail());
		query.setParameter("password",seller.getPassword() );
		query.setParameter("birth",seller.getBirth());
		query.setParameter("phone_number",seller.getPhone_number());
		query.setParameter("key", seller.getId());
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		Seller seller2= getCustomerbyId(seller.getId());
		return seller2;
	}
}
