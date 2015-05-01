package com.smartphon.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.product.SmartPhonePromotionDao;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.dao.transaction.ShoppingCartDao;
import com.smartphon.dao.transaction.SmartPhoneForTransactionDao;
import com.smartphone.model.Order;
import com.smartphone.model.OrderProduct;
import com.smartphone.model.Product;
import com.smartphone.webservice.util.HibernateDbUtil;


@Service
public class ProductService {
	
	public SmartPhoneDao product ;
	public SmartPhonePromotionDao promotion;
	public ProductDao productDao = new SmartPhoneDao();

	OrderDao orderDao = new OrderDao();
	
	
	public boolean createProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public boolean removeProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public boolean updateProduct(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public ProductDao getProductById(int key){
		ProductDao product = new ProductDao();
		product = productDao.getProductById(key);
		return product;
	}
	
	public List<SmartPhoneDao> getSmartPhones(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public List<ProductDao> getProductForHomePage(){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.getNumbersOfProduct(8);
		return product;
	}

	
	public List<ProductDao> getProductbyKeyWords( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.getProductbyKeyWords(key);
		return product;
	}
	
	public List<ProductDao> searchProductByBrand( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByBrand(key);
		return product;
	}
	
	public List<ProductDao> searchProductByPrice( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByPrice(key);
		return product;
	}
	
	public List<ProductDao> searchProductByColor( String key){
		List<ProductDao> product = new ArrayList<ProductDao>();
			product = productDao.searchProductByColor(key);
		return product;
	}

	
	public List<OrderDao> getOrderHistoryByBuyerId(int id) {
		List<OrderDao> orderDaos = new ArrayList<OrderDao>();
		
				
		// Get Order by id
		List<Order> orders = orderDao.getOrderHistoryByBuyerId(id);
		
		
		for(Order o : orders){
			OrderDao od = new OrderDao();
			od.setId(o.getId());
			// Get Order's Product id by Order Id
			List<OrderProduct> orderProduct = orderDao.getOrderPrdoct(o.getId());
			double totalPrice =0;
			// Get Order's Product  by Product Id
			List<SmartPhoneForTransactionDao> phones = new ArrayList<SmartPhoneForTransactionDao>();
			for(OrderProduct p : orderProduct){
				ProductDao pd = productDao.getProductById(p.getProduct_id());
				SmartPhoneForTransactionDao st = new SmartPhoneForTransactionDao();
				st.setBrand(pd.getBrand());
				st.setColor(pd.getColor());
				st.setDes(pd.getDes());
				st.setId(pd.getId());
				st.setImg(pd.getImg());
				st.setName(pd.getName());
				st.setNumberInStroe(pd.getNumberInStroe());
				st.setPrice(pd.getPrice());
				st.setProductTitle(pd.getProductTitle());
				
				st.setCount(p.getCount());
				phones.add(st);
				totalPrice += st.getPrice()*st.getCount();
				
			}
			
			od.setPhones(phones);
			od.setTotalPrice(totalPrice);
			od.setStatus(o.getStatus());
			orderDaos.add(od);
		}
		
		return orderDaos;
	}

	public List<ProductDao> getProductbySellerId(int key) {
		List<ProductDao> product = new ArrayList<ProductDao>();
		product = productDao.getProductbySellerId(key);
	return product;
	}

	public List<OrderDao> getOrderHistory() {
		List<OrderDao> orderDaos = new ArrayList<OrderDao>();
		
		
		// Get Order by id
		List<Order> orders = orderDao.getOrderHistory();
		
		
		for(Order o : orders){
			OrderDao od = new OrderDao();
			od.setId(o.getId());
			// Get Order's Product id by Order Id
			List<OrderProduct> orderProduct = orderDao.getOrderPrdoct(o.getId());
			double totalPrice =0;
			// Get Order's Product  by Product Id
			List<SmartPhoneForTransactionDao> phones = new ArrayList<SmartPhoneForTransactionDao>();
			for(OrderProduct p : orderProduct){
				ProductDao pd = productDao.getProductById(p.getProduct_id());
				SmartPhoneForTransactionDao st = new SmartPhoneForTransactionDao();
				st.setBrand(pd.getBrand());
				st.setColor(pd.getColor());
				st.setDes(pd.getDes());
				st.setId(pd.getId());
				st.setImg(pd.getImg());
				st.setName(pd.getName());
				st.setNumberInStroe(pd.getNumberInStroe());
				st.setPrice(pd.getPrice());
				st.setProductTitle(pd.getProductTitle());
				
				st.setCount(p.getCount());
				phones.add(st);
				totalPrice += st.getPrice()*st.getCount();
				
			}
			
			od.setPhones(phones);
			od.setTotalPrice(totalPrice);
			od.setStatus(o.getStatus());
			orderDaos.add(od);
		}
		
		return orderDaos;
	}

	public void removeFromShoppingCart(int key) {
		
		ShoppingCartDao dao = new ShoppingCartDao();
		dao.removeFromShoppingCart(key);
		
	}
	
}
