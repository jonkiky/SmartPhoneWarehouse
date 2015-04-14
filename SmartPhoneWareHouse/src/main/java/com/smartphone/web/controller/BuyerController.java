package com.smartphone.web.controller;

import javax.servlet.http.HttpServletRequest;

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

public class BuyerController extends BaseController{

	public CustomerService buyerService= new CustomerService();
	private Language lang=i18nConfigure.getInstance().getLanguage();
	
	
	@RequestMapping(value = "/buyer/login", method = RequestMethod.POST)
	@ResponseBody
	public String buyerLogin(HttpServletRequest request,@RequestBody Buyer buyer ) throws JsonProcessingException {
		boolean flag=false;
		if(null!=buyer){
			flag=buyerService.login(buyer);
			
		}
		if(flag){
			setSessionUser(request, buyer);
			String msg = lang.createCustomerSuccess;
			return  JsonObject.objcetTOJson(msg, null);
		}else{
			String errMsg=lang.createCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	@RequestMapping(value = "/buyer/signout", method = RequestMethod.GET)
	@ResponseBody
	public String buyerSignout(HttpServletRequest request) throws JsonProcessingException {
		boolean flag=false;
		

			setSessionUser(request, null);
			String msg = lang.createCustomerSuccess;
			return  JsonObject.objcetTOJson(msg, null);
	
		
		
	}
}
