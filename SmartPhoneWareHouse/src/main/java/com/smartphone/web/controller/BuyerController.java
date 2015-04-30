package com.smartphone.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.service.CustomerService;
import com.smartphone.model.BankInfo;
import com.smartphone.model.Buyer;
import com.smartphone.model.Shipping_Address;
import com.smartphone.web.i18n.Language;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.util.JsonObject;


@Controller

public class BuyerController extends BaseController{

	public CustomerService buyerService= new CustomerService();
	private Language lang=i18nConfigure.getInstance().getLanguage();
	
	
	@RequestMapping(value = "/buyer/login", method = RequestMethod.POST)
	@ResponseBody
	public String buyerLogin(HttpServletRequest request,@RequestBody Buyer buyer ) throws JsonProcessingException {
		Buyer flag=null;
		if(null!=buyer){
			flag=buyerService.login(buyer);
			
		}
		if(flag!=null){
			setSessionUser(request, flag);
			String msg = lang.loginSuccess;
			return  JsonObject.objcetTOJson(msg, flag);
		}else{
			String errMsg=lang.loginFail;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	@RequestMapping(value = "/buyer/signout", method = RequestMethod.GET)
	@ResponseBody
	public String buyerSignout(HttpServletRequest request) throws JsonProcessingException {
		boolean flag=false;
		

			setSessionUser(request, null);
			String msg = lang.sigoutSuccess;
			return  JsonObject.objcetTOJson(msg, null);
	
		
		
	}
	
	
	@RequestMapping(value = "/buyer/welcome", method = RequestMethod.GET)
	public String buyerWelcome() throws JsonProcessingException {
	
			return "/front/welcome";
	
		
		
	}
	
	
	@RequestMapping(value = "/buyer/bankinfo", method = RequestMethod.GET)
	public String buyerBankInfo() throws JsonProcessingException {
	
			return "/front/bank";
	
		
		
	}
	
	

	@RequestMapping(value = "/newbankinfo", method = RequestMethod.GET)
	public String createBankInfo() throws JsonProcessingException {
	
			return "/front/Createbank";
	
		
		
	}
	
	
	@RequestMapping(value = "/buyer/setting", method = RequestMethod.GET)
	public String userSetting() throws JsonProcessingException {
	
			return "/front/setting";
	
		
		
	}
	
	@RequestMapping(value = "/buyer/deliveryaddress", method = RequestMethod.GET)
	public String getAddress() throws JsonProcessingException {
	
			return "/front/address";
	
		
		
	}
	
	

	@RequestMapping(value = "/buyer/editdeliveryaddress", method = RequestMethod.GET)
	public String editAddress() throws JsonProcessingException {
		
			return "/front/editaddress";
	
		
		
	}
	
	
	@RequestMapping(value = "/buyer/newAddress", method = RequestMethod.GET)
	public String newAddress() throws JsonProcessingException {
			
			return "/front/newAddress";
	
		
		
	}
	
	
	
	@RequestMapping(value = "/buyer/createAddress", method = RequestMethod.POST)
	@ResponseBody
	public String createAddress(@RequestBody Shipping_Address address) throws JsonProcessingException {
			if(buyerService.newAddress(address)){
				return JsonObject.objcetTOJson(lang.createAddressSuccess,null);
			}else{
				return JsonObject.customerExcetption(lang.createAddressFail);
			}
		
	}
	
	@RequestMapping(value = "/buyer/getAddresses/{key}", method = RequestMethod.GET)
	@ResponseBody
	public String getAddresses(@PathVariable int key,Model model) throws JsonProcessingException {
			List<Shipping_Address> addresses = buyerService.getAddresses(key);
			if(addresses!=null){
				return JsonObject.objcetTOJson("Recieve Data success",addresses);
			}
			else{
				return JsonObject.objcetTOJson(lang.recieveAddressesfail,null);
			}
	
		
		
	}
	
	@RequestMapping(value = "/buyer/getAddresses/{key}", method = RequestMethod.POST)
	@ResponseBody
	public String getAddress(@PathVariable int key,Model model) throws JsonProcessingException {
		Shipping_Address address = buyerService.getAddress(key);
		if(address!=null){
			return JsonObject.objcetTOJson("Recieve Data success",address);
		}
		else{
			return JsonObject.objcetTOJson(lang.recieveAddressesfail,null);
		}
		
		
	}
	
	@RequestMapping(value = "/deleteAddress/{key}", method = RequestMethod.GET)
	@ResponseBody
	public String deleteAddress(@PathVariable int key) throws JsonProcessingException {
	 CustomerService cs = new CustomerService();
	 if(cs.deleteAddress(key)){
		 return JsonObject.objcetTOJson(lang.removeBankSuccess,null);
	 }
	 else{
			return JsonObject.customerExcetption(lang.removeBankfail);
	 }
	}
	
	
	 @RequestMapping(value = "/getBankInfo/{key}", method = RequestMethod.GET)
		@ResponseBody
		public String buyerLogin(@PathVariable int key,Model model) throws JsonProcessingException {
		 CustomerService cs = new CustomerService();
		List<BankInfo> banks = cs.getPaymentByBuyerId(key);
		 return JsonObject.objcetTOJson("Retrieve Data Success",banks);
			
		}

	 @RequestMapping(value = "/addNewBankCard", method = RequestMethod.POST)
		@ResponseBody
		public String newPayment(@RequestBody BankInfo bank) throws JsonProcessingException {
		 CustomerService cs = new CustomerService();
		 if(cs.addPayment(bank)){
			 return JsonObject.objcetTOJson(lang.addBankSuccess,null);
		 }
		 else{
				return JsonObject.customerExcetption(lang.addBankfail);
		 }
		}
	 
	 
	 @RequestMapping(value = "/deleteBankInfo/{key}", method = RequestMethod.GET)
		@ResponseBody
		public String deletePayment(@PathVariable int key) throws JsonProcessingException {
		 CustomerService cs = new CustomerService();
		 if(cs.deletePayment(key)){
			 return JsonObject.objcetTOJson(lang.removeBankSuccess,null);
		 }
		 else{
				return JsonObject.customerExcetption(lang.removeBankfail);
		 }
		}
	
}
