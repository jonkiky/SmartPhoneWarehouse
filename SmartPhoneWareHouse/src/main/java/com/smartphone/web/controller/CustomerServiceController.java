package com.smartphone.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.service.CustomerService;
import com.smartphone.model.Buyer;
import com.smartphone.model.Shipping_Address;
import com.smartphone.web.i18n.Language;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.util.JsonObject;

@Controller
public class CustomerServiceController {
	
	private CustomerService customerService=new CustomerService(); 
	private Language lang=i18nConfigure.getInstance().getLanguage();
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	@ResponseBody
	public String CreateCustomerAccount(@RequestBody Buyer buyer ) throws JsonProcessingException {
		int flag=-1;
		if(null!=buyer){
			flag=customerService.createCustomer(buyer);
		}
		if(flag!=-1){
			String msg = lang.createCustomerSuccess;
			return  JsonObject.objcetTOJson(msg,flag);
		}else{
			String errMsg=lang.createCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	
	
	@RequestMapping(value = "/eidtBuyer", method = RequestMethod.POST)
	@ResponseBody
	public String eidtBuyer(@RequestBody Buyer buyer ) throws JsonProcessingException {
		boolean flag=false;
		Buyer cs = null;
		BuyerDao dao = new BuyerDao();
		if(null!=buyer){
			cs=customerService.update(buyer);
		}
		
		if(cs!=null){
			String msg = lang.updateCustomerSuccess;
			return  JsonObject.objcetTOJson(msg,cs);
		}else{
			String errMsg=lang.updateCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	

	@RequestMapping(value = "/newAddress", method = RequestMethod.POST)
	@ResponseBody
	public String CreateCustomerAccount(@RequestBody Shipping_Address  address ) throws JsonProcessingException {
		boolean flag=false;
		if(null!=address){
			flag=customerService.newAddress(address);
		}
		if(flag){
			String msg = lang.createCustomerSuccess;
			return  JsonObject.objcetTOJson(msg, null);
		}else{
			String errMsg=lang.createCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	

}
