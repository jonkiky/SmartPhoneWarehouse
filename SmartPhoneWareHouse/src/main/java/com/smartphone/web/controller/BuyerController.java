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
		int flag=-1;
		if(null!=buyer){
			flag=buyerService.login(buyer);
			
		}
		if(flag!=-1){
			buyer.setId(flag);
			setSessionUser(request, buyer);
			String msg = lang.loginSuccess;
			return  JsonObject.objcetTOJson(msg, null);
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
	
	

	@RequestMapping(value = "/buyer/newbankinfo", method = RequestMethod.GET)
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
}
