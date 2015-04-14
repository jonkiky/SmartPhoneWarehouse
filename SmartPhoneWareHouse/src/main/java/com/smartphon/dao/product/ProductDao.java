package com.smartphon.dao.product;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;

import com.smartphon.dao.user.SellerDao;
import com.smartphone.model.Product;
import com.smartphone.webservice.util.HibernateDbUtil;

public abstract class ProductDao {
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
	
	private Date postTime;
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
	public Date getPostTime() {
		return postTime;
	}
	public void setPostTime(Date postTime) {
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
				pd.setBrand(p.getBrand());
				pd.setColor(p.getColor_id());
				pd.setDes(p.getDes());
				pd.setName(p.getName());
				pd.setProductTitle(p.getTitle());
				pd.setSeller(null);
				productDaoLs.add(pd);
			}
		}
	return 	productDaoLs;
	}

}
