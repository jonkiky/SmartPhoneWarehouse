package com.smartphone.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.dao.transaction.ShoppingCartDao;
import com.smartphon.dao.transaction.SmartPhoneForTransactionDao;
import com.smartphon.service.ProductService;
import com.smartphone.model.Buyer;
import com.smartphone.model.Order;
import com.smartphone.model.OrderProduct;
import com.smartphone.model.Product;
import com.smartphone.model.ShoppingCart;
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
	public String searchProductByKeyWords( @PathVariable String key,Model model) throws JsonProcessingException {
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
			ProductDao productls=productService.getProductById(Integer.valueOf(key));
			model.addAttribute("product", productls);
			return "/front/product_details";
		}
			
		
	}
	
	 @RequestMapping(value = "/getOrderHistory", method = RequestMethod.POST)
		@ResponseBody
		public String buyerLogin(@RequestBody Buyer buyer ,Model model) throws JsonProcessingException {
		List<OrderDao> orders = productService.getOrderHistoryByBuyerId(buyer.getId());
		 return JsonObject.objcetTOJson("Retrieve Data Success",orders);
			
		}
	 
	 @RequestMapping(value = "/getOrderHistory/{id}", method = RequestMethod.GET)
		@ResponseBody
		public String getOrderHistory(@PathVariable int id) throws JsonProcessingException {
		List<OrderDao> orders = productService.getOrderHistoryByBuyerId(id);
		 return JsonObject.objcetTOJson("Retrieve Data Success",orders);
			
		}
	 
	 @RequestMapping(value = "/cancelOrder/{id}", method = RequestMethod.GET)
		@ResponseBody
		public String cancelOrder(@PathVariable int id ) throws JsonProcessingException {
		 OrderDao order = new OrderDao();
		 if(order.deleteOrder(id)){
		 return JsonObject.objcetTOJson(lang.canelOrderSuccess,null);
		 }else{
			 return JsonObject.objcetTOJson(lang.canelOrderFail,null);
		 }
		}
	
	
	
	 
	 
	 @RequestMapping(value = "/addToShoppingCart", method = RequestMethod.POST)
		@ResponseBody
		public String cancelOrder(@RequestBody ShoppingCart cart) throws JsonProcessingException {
		 ShoppingCartDao dao = new ShoppingCartDao();
		 if(dao.addShoppingCart(cart)){
		 return JsonObject.objcetTOJson(lang.canelOrderSuccess,null);
		 }else{
			 return JsonObject.objcetTOJson(lang.canelOrderFail,null);
		 }
		}
	 
	 
	 @RequestMapping(value = "/getShoppingCart/{id}", method = RequestMethod.GET)
		@ResponseBody
		public String getShoppingCart(@PathVariable int id ) throws JsonProcessingException {
		 ShoppingCartDao dao = new ShoppingCartDao();
		 ShoppingCartDao products = dao.getShoppingCartByBuyerId(id);
		 if(products!=null){
		 return JsonObject.objcetTOJson(lang.canelOrderSuccess,products);
		 }else{
			 return JsonObject.objcetTOJson(lang.canelOrderFail,null);
		 }
		}
	 
		@RequestMapping(value = "/removeFromShoppingCart/{key}", method = RequestMethod.GET)
		@ResponseBody
		public String searchProductByKeyWords( @PathVariable int key) throws JsonProcessingException {
			productService.removeFromShoppingCart(key);
				return  JsonObject.objcetTOJson("", null);
			}
		
		@RequestMapping(value = "/saveOrder", method = RequestMethod.POST)
		@ResponseBody
		public String saveOrder( @RequestBody OrderDao order) throws JsonProcessingException {
				return  JsonObject.objcetTOJson("", null);
			}
		

		@RequestMapping(value = "/clearShoppingCart/{id}", method = RequestMethod.GET)
		@ResponseBody
		public String clearShoppingCart(  @PathVariable int id) throws JsonProcessingException {
			
			ShoppingCartDao dao = new ShoppingCartDao();
			dao.clearShoppingCart(id);
				return  JsonObject.objcetTOJson("", null);
			}
		
		
		

		@RequestMapping(value = "/addTranscation", method = RequestMethod.POST)
		@ResponseBody
		public String addTransaction(@RequestBody OrderDao order) throws JsonProcessingException {
			OrderDao dao = new OrderDao();
			Order o = new Order();
			List<OrderProduct> opLs = new ArrayList<OrderProduct>();
			
			o.setBankinfoId(order.getBankInfo().getId());
			o.setBuyerId(Integer.parseInt(order.getBuyer().getId()));
			  Date date = new Date();
			o.setOrderTime(date.toString());
			o.setShippinginfoId(order.getAddress().getId());
			o.setStatus("processing");
			o.setTotalPrice(order.getTotalPrice());
			int order_id = dao.addOrder(o);
			for(SmartPhoneForTransactionDao st : order.getPhones()){
				OrderProduct op = new OrderProduct();
				op.setCount(st.getCount());
				op.setPackage_tracking_code(order.getPackageTrackingCode());
				op.setProduct_id(st.getId());
				op.setOrder_id(order_id);
				dao.addOrderProduct(op);
			}
			
				return  JsonObject.objcetTOJson("", null);
			}
		
	
}
