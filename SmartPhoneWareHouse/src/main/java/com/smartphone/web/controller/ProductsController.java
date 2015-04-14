package com.smartphone.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.service.ProductService;
import com.smartphone.model.Buyer;
import com.smartphone.model.Product;
import com.smartphone.webservice.util.JsonObject;


@Controller
public class ProductsController {

	public ProductService productService=new ProductService();
	

	@RequestMapping(value = "/productsforHomePage", method = RequestMethod.POST)
	@ResponseBody
	public String getProductForHomePage() throws JsonProcessingException {
	
		List<ProductDao> productls=productService.getProductForHomePage();
			return JsonObject.objcetTOJson("Retrieve Data Success",productls);
			
		
	}
	
}
