package com.smartphon.dao.transaction;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphone.model.Product;
import com.smartphone.model.ShoppingCart;
import com.smartphone.webservice.repository.QueryRepo;
import com.smartphone.webservice.util.HibernateDbUtil;

public class ShoppingCartDao {
	private List<SmartPhoneForTransactionDao> phones;
	private BuyerDao buyer;
	
	
	public List<SmartPhoneForTransactionDao> getPhones() {
		return phones;
	}
	public void setPhones(List<SmartPhoneForTransactionDao> phones) {
		this.phones = phones;
	}
	public BuyerDao getBuyer() {
		return buyer;
	}
	public void setBuyer(BuyerDao buyer) {
		this.buyer = buyer;
	}
	public boolean addShoppingCart(ShoppingCart cart) {
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(cart);
		session.getTransaction().commit();
		session.clear();
		session.close();
		
		return true;
	}
	
	public QueryRepo q = new QueryRepo();
	public ProductDao dao = new ProductDao();
	public ShoppingCartDao getShoppingCartByBuyerId(int id) {
		ShoppingCartDao shoppingCart = new ShoppingCartDao();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getShippingCartByBuyerId);
		query.setParameter("key", id);
		List sc = query.list();
		session.clear();
		session.close();
		
		List<SmartPhoneForTransactionDao> sts = new ArrayList<SmartPhoneForTransactionDao>();
		if(null!=sc){
			for(Object p2 : sc){
				SmartPhoneForTransactionDao st = new SmartPhoneForTransactionDao();
				ShoppingCart p=(ShoppingCart) p2;
				
				ProductDao pd = dao.getProductById(p.getProductId());
				st.setBrand(pd.getBrand());
				st.setId(pd.getId());
				st.setName(pd.getName());
				st.setCount(p.getCount());
				st.setDes(pd.getDes());
				st.setPrice(pd.getPrice());
				sts.add(st);
			}
			
		}
		shoppingCart.setPhones(sts);
		return 	shoppingCart;
	
	}
	public void removeFromShoppingCart(int key) {
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete ShoppingCart as b where b.productId=:key");
		query.setParameter("key", key);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		
	}
	
	public void clearShoppingCart(int key) {
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete ShoppingCart as b where b.buyerId=:key");
		query.setParameter("key", key);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		
	}
}
