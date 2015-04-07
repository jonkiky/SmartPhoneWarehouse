package com.smartphone.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.service.RegisterService;
import com.smartphone.model.Buyer;

@Controller
public class RegisterController {

	public RegisterService registerService;
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	@ResponseBody 
	public String Index(@ModelAttribute Buyer customer) throws JsonProcessingException {
		
		//return  JsonObjcet.objcetTOJson();
		throw new UnsupportedOperationException("Implement this");
	}
}
