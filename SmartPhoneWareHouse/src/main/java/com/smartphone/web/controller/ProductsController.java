package com.smartphone.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
import com.smartphone.web.i18n.Language;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.util.JsonObject;


@Controller
public class ProductsController {

	public ProductService productService=new ProductService();
	private Language lang=i18nConfigure.getInstance().getLanguage();

	@RequestMapping(value = "/productsforHomePage", method = RequestMethod.POST)
	@ResponseBody
	public String getProductForHomePage() throws JsonProcessingException {
	
		List<ProductDao> productls=productService.getProductForHomePage();
			return JsonObject.objcetTOJson("Retrieve Data Success",productls);
			
		
	}
	
	
	
	@RequestMapping(value = "/search/{key}", method = RequestMethod.GET)
	public String searchProductByKeyWords( @PathVariable String key,ModelMap model) throws JsonProcessingException {
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			List<ProductDao> productls=productService.getProductbyKeyWords(key);
			model.addAttribute("Productlist", productls);
			return "/front/search";
		}
	
			
			
		
	}
	
	
	@RequestMapping(value = "/search/brand/{key}", method = RequestMethod.GET)
	public String searchProductByBrand(@PathVariable String key,ModelMap model) throws JsonProcessingException {
	
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			List<ProductDao> productls=productService.searchProductByBrand(key);
			model.addAttribute("Productlist", productls);
			return "/front/search";
		}
			
		
	}
	
	
	@RequestMapping(value = "/search/price/{key}", method = RequestMethod.GET)
	public String searchProductByPrice(@PathVariable String key,ModelMap model) throws JsonProcessingException {
	
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			List<ProductDao> productls=productService.searchProductByPrice(key);
			model.addAttribute("Productlist", productls);
			return "/front/search";
		}
			
		
	}
	
	
	@RequestMapping(value = "/search/color/{key}", method = RequestMethod.GET)
	public String searchProductByColor(@PathVariable String key,ModelMap model) throws JsonProcessingException {
	
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			List<ProductDao> productls=productService.searchProductByColor(key);
			model.addAttribute("Productlist", productls);
			return "/front/search";
		}
			
		
	}
	
	
	
	@RequestMapping(value = "/product_details/{key}", method = RequestMethod.GET)
	public String getProductById(@PathVariable String key,ModelMap model) throws JsonProcessingException {
	
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			ProductDao productls=productService.getProductById(key);
			model.addAttribute("product", productls);
			return "/front/product_details";
		}
			
		
	}
}
