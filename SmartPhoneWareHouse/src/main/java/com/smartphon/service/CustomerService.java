package com.smartphon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.BankInfoDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.ShippingAddressDao;
import com.smartphone.model.*;
@Service
public class CustomerService {
	
	private BuyerDao buyerDao=new BuyerDao();
	
	public Buyer login(Buyer buyer){
		Buyer buyer2 = null;
		if(!buyer.getUser_name().isEmpty()&&!buyer.getPassword().isEmpty()){
			Buyer buyerInDB=buyerDao.findCustomerbyName(buyer.getUser_name());
			if(null!=buyerInDB){
				if(buyerInDB.getPassword().equals(buyer.getPassword())){
					buyer2=buyerInDB;
				}
			}
		}
		return buyer2;
	}
	
	
	
	public List<BankInfo> getPaymentByBuyerId(int id){
		BankInfoDao bank = new BankInfoDao();
		List<BankInfo> banks = bank.getPaymentByBuyerId(id);
		return banks;
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public int createCustomer(Buyer buyer){
		return  buyerDao.createCustomer(buyer);
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
		
			return 	buyerDao.deleteCustomer(id);
		}



		public Buyer update(Buyer buyer) {
			Buyer b = buyerDao.updateBuyer(buyer);
			return b;
		}
	
	
}
