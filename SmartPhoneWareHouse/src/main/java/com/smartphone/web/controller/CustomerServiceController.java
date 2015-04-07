package com.smartphone.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.service.CustomerService;
import com.smartphone.model.Buyer;
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
		boolean flag=false;
		if(null!=buyer){
			flag=customerService.createCustomer(buyer);
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
