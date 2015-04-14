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
	
	
	public Boolean createCustomer(Buyer buyer){
		Boolean flag =true;
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(buyer);
		session.getTransaction().commit();
		session.clear();
		session.close();
		return flag;
	}
	
	public Buyer findCustomerbyName(String name){
		
		Buyer buyer= new Buyer();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from Buyer as buyer where buyer.user_name=:name");
		query.setParameter("name", name);
		List list = query.list();
		if(null!=list){
			buyer = (Buyer)list.get(0);
		}
		
		session.clear();
		session.close();
		return buyer;
	}
}
