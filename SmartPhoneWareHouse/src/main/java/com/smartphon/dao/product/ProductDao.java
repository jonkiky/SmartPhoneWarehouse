package com.smartphon.dao.product;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.smartphon.dao.user.SellerDao;
import com.smartphone.model.Buyer;
import com.smartphone.model.Product;
import com.smartphone.model.ProductImage;
import com.smartphone.webservice.repository.QueryRepo;
import com.smartphone.webservice.util.HibernateDbUtil;

public  class ProductDao {
	private int id;
	private String productTitle;
	private String name;
	private String Brand;
	private CategoryDao category;
	
	private double price;
	private String color;
	private List<String> img;
	private int numberInStroe;
	private String des;
	
	private String postTime;
	private StatusDao status;
	private Date modifyData;
	private SellerDao seller;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductTitle() {
		return productTitle;
	}
	public void setProductTitle(String productTitle) {
		this.productTitle = productTitle;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public CategoryDao getCategory() {
		return category;
	}
	public void setCategory(CategoryDao category) {
		this.category = category;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public List<String> getImg() {
		return img;
	}
	public void setImg(List<String> img) {
		this.img = img;
	}
	public int getNumberInStroe() {
		return numberInStroe;
	}
	public void setNumberInStroe(int numberInStroe) {
		this.numberInStroe = numberInStroe;
	}

	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}

	public String getPostTime() {
		return postTime;
	}
	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}
	public StatusDao getStatus() {
		return status;
	}
	public void setStatus(StatusDao status) {
		this.status = status;
	}
	public Date getModifyData() {
		return modifyData;
	}
	public void setModifyData(Date modifyData) {
		this.modifyData = modifyData;
	}
	public SellerDao getSeller() {
		return seller;
	}
	public void setSeller(SellerDao seller) {
		this.seller = seller;
	}
	
	public List<ProductDao> getNumbersOfProduct(int num){
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		List<Product> product=session.createQuery("from Product").setMaxResults(num).list();
		session.clear();
		session.close();
		if(null!=product){
			for(Product p : product){
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}

	public QueryRepo q = new QueryRepo();
 	
	public List<ProductDao> getProductbyKeyWords(String key){
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.SearchProductByKeywords);
		query.setParameter("key", "%"+key+"%");
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}
		
	
	
	public List<ProductDao> searchProductByBrand(String key){
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		
		Query query = session.createQuery(q.SearchProductByBrand);
		query.setParameter("key", "%"+key+"%");
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}
	
	
	public List<ProductDao> searchProductByPrice(String key){
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.SearchProductByKeywords);
		if(key.contains("@")){
			query = session.createQuery(q.SearchProductByPricebetween);
			query.setParameter("skey", Double.parseDouble(key.split("@")[0]));
			query.setParameter("bkey", Double.parseDouble(key.split("@")[1]));
		}
		if(key.contains(">")){
			query = session.createQuery(q.SearchProductByPriceBigger);
			query.setParameter("key", Double.parseDouble(key.replace(">", "")));
		}
		if(key.contains("<")){
			query = session.createQuery(q.SearchProductByPriceSmall);
			query.setParameter("key", Double.parseDouble(key.replace("<", "")));
		}
		
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}
	
	
	public List<ProductDao> searchProductByColor(String key){
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.SearchProductByColor);
		query.setParameter("key", "%"+key+"%");
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}
	
	
	public ProductDao getProductById(int key){
		ProductDao pd = new ProductDao();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getProductById);
		query.setParameter("key", key);
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				pd.setImg(getProductPic(p.getSeller_id()));
			}
		}
		
		return 	pd;
	}
	
	
	public List<ProductDao> getProductbySellerId(int key) {
		List<ProductDao> productDaoLs = new ArrayList<ProductDao>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery(q.getProductBySellerId);
		query.setParameter("key", key);
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				Product p=(Product) p2;
				ProductDao pd = new SmartPhoneDao();
				pd.setId(p.getId());
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				pd.setPrice(p.getPrice());
				pd.setNumberInStroe(p.getNumber_in_stroe());
				pd.setImg(getProductPic(p.getSeller_id()));
				productDaoLs.add(pd);
			}
		}
		
		return 	productDaoLs;
	}
	
	public boolean deleteProductById(int id){

		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete Product as b where b.id=:key");
		query.setParameter("key", id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
		return true;
		
	}
	public void updateProduct(Product p) {
		

		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery(" update Product "
				+ "set title=:title,"
				+ "name=:name,"
				+ "brand=:brand,"
				+ "price=:price,"
				+ "number_in_stroe=:number_in_stroe,"
				+ "des=:des,"
				+ "post_time=:post_time   ,"
				+ "seller_id=:seller_id   "
				+ "where id=:key");
		query.setParameter("title",p.getTitle() );
		query.setParameter("name",p.getName());
		query.setParameter("brand",p.getBrand());
		query.setParameter("price", p.getPrice());
		query.setParameter("number_in_stroe", p.getNumber_in_stroe());
		query.setParameter("des",p.getDes());
		query.setParameter("post_time",p.getPost_time());
		query.setParameter("seller_id", p.getId());
		query.setParameter("key", p.getId());
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
	}
	public int addProduct(Product p) {

			Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
			session.beginTransaction();
			session.save(p);
			int id = p.getId();
			
			session.getTransaction().commit();
			session.clear();
			session.close();
			
			return id;
	}
	public void deletePicBuyProductId(int product_id) {
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.getTransaction().begin();
		Query query = session.createQuery("delete ProductImage as b where b.product_id=:key");
		query.setParameter("key", product_id);
		int result = query.executeUpdate();
		session.getTransaction().commit();
		session.clear();
		session.close();
	}
	public void addProductPic(ProductImage pi) {

		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		session.beginTransaction();
		session.save(pi);
		int id = pi.getId();
		
		session.getTransaction().commit();
		session.clear();
		session.close();
		
	}
	
	
	public List<String> getProductPic(int sellerId) {
		List<String> imgs = new ArrayList<String>();
		Session session=HibernateDbUtil.getInstance().getSessionFactory().openSession();
		Query query = session.createQuery("from ProductImage where product_id=:key");
		query.setParameter("key", sellerId);
		List product = query.list();
		
		session.clear();
		session.close();
		if(null!=product){
			for(Object p2 : product){
				ProductImage pi = (ProductImage) p2;
				imgs.add(pi.getImageURl());
			}
		}
		return imgs;
		
	}
	
	
	
}
