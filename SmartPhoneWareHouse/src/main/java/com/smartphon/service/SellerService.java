package com.smartphon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BankInfoDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.SellerDao;
import com.smartphon.dao.user.ShippingAddressDao;
import com.smartphone.model.BankInfo;
import com.smartphone.model.Buyer;
import com.smartphone.model.Seller;
import com.smartphone.model.Shipping_Address;
@Service
public class SellerService {
	public SellerDao sellerDao = new SellerDao();
	

	
	public Seller login(Seller seller){
		Seller seller2 = null;
		if(!seller.getUser_name().isEmpty()&&!seller.getPassword().isEmpty()){
			Seller buyerInDB=sellerDao.findSellerbyName(seller.getUser_name());
			if(null!=buyerInDB){
				if(buyerInDB.getPassword().equals(seller.getPassword())){
					seller2=buyerInDB;
				}
			}
		}
		return seller2;
	}
	
	
	

	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public int createCustomer(Seller seller){
		return  sellerDao.createCustomer(seller);
	}
	
	
	
	public Boolean updateProfile(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeCustomer(){
		throw new UnsupportedOperationException("Implement this");
	}


	public boolean newAddress(Shipping_Address address) {
		ShippingAddressDao d=new ShippingAddressDao() ;
		return  d.createAddress(address);
	}



	public boolean addPayment(BankInfo bank) {
		boolean flag = false;
		BankInfoDao bank2 = new BankInfoDao();
		int i = bank2.addPayment(bank);
		if(i>=0){
			flag = true;
		}
		return flag;
	}
	
	
	public boolean deletePayment(int id) {
		boolean flag = false;
		BankInfoDao bank2 = new BankInfoDao();
		flag = bank2.deletePayment(id);
		
		return flag;
	}


	// Get Shipping Address by buyer id 
	public List<Shipping_Address> getAddresses(int key) {
		ShippingAddressDao dao = new ShippingAddressDao();
		List<Shipping_Address> addresses = dao.getAddresses(key);
		return addresses;
	}
	
	
	// Get Shipping Address by  id 
		public Shipping_Address getAddress(int key) {
			ShippingAddressDao dao = new ShippingAddressDao();
			List<Shipping_Address> addresses = dao.getAddresses(key);
			return addresses.get(0);
		}



		public boolean deleteAddress(int key) {
			boolean flag = false;
			ShippingAddressDao sa = new ShippingAddressDao();
			flag = sa.deleteAddress(key);
			return flag;
		}



		public boolean deleteCustomer(int id) {
		
			return 	sellerDao.deleteCustomer(id);
		}



		public Seller update(Seller seller) {
			Seller b = sellerDao.updateSeller(seller);
			return b;
		}
	
	
}
