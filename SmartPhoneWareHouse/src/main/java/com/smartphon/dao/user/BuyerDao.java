package com.smartphon.dao.user;
import com.smartphone.model.Buyer;
import com.smartphone.webservice.util.HibernateDbUtil;
public class BuyerDao extends MemberDao {

	private MemberProfileDao profile;
	private HibernateDbUtil db = new HibernateDbUtil();
	public void convertEnityBuyer(Buyer buyer){
	
	}
	
	
	public Boolean createCustomer(MemberDao member){
		Boolean flag =false;
		
		return flag;
	}
}
