package com.smartphone.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.service.TransactionService;
import com.smartphone.model.Buyer;
import com.smartphone.webservice.util.JsonObject;

@Controller
public class TransactionController {
	 public TransactionService tranService = new TransactionService();
	 
	 
	 
	 
	
}
