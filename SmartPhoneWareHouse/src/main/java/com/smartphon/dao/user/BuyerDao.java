package com.smartphon.dao.user;
import org.hibernate.Session;

import com.smartphone.model.Buyer;
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
}
