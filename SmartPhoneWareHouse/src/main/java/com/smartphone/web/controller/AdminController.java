package com.smartphone.web.controller;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.transaction.OrderDao;
import com.smartphon.dao.user.AdministratorDao;
import com.smartphon.dao.user.BuyerDao;
import com.smartphon.dao.user.SellerDao;
import com.smartphon.service.AdminService;
import com.smartphon.service.CustomerService;
import com.smartphon.service.ProductService;
import com.smartphon.service.SellerService;
import com.smartphone.model.Admin;
import com.smartphone.model.Buyer;
import com.smartphone.model.Product;
import com.smartphone.model.ProductImage;
import com.smartphone.model.Seller;
import com.smartphone.web.annotation.Register;
import com.smartphone.web.i18n.Language;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.util.JsonObject;

/**
 * IndexController : Response to request over HTTP protocol and send back a JSON
 * file.
 * 
 * @author Yizhen Chen
 */
@Controller
public class AdminController extends BaseController{
	public ProductService productService=new ProductService();
	public SellerService dao = new SellerService();
	private Language lang=i18nConfigure.getInstance().getLanguage();
	
	
	
	@RequestMapping(value = "/admincheckLogin", method = RequestMethod.GET)
	public String admincheckLogin() {
		return "/front/admincheckLogin";
		// return JsonObjcet.objcetTOJson(user);
	}
	

	
	@RequestMapping(value = "/adminAddProduct", method = RequestMethod.GET)
	public String adminSideBar() {
		return "/front/adminAddProduct";
		// return JsonObjcet.objcetTOJson(user);
	}
	
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String login() {
		return "/front/adminLogin";
		// return JsonObjcet.objcetTOJson(user);
	}
	
	
	@RequestMapping(value = "/adminProducts", method = RequestMethod.GET)
	public String adminProduct() {
		return "/front/adminProducts";
		// return JsonObjcet.objcetTOJson(user);
	}
	
	
	@RequestMapping(value = "/adminEditProduct", method = RequestMethod.GET)
	public String admiEditnProduct() {
		return "/front/admiEditnProduct";
		// return JsonObjcet.objcetTOJson(user);
	}

	
	
	@RequestMapping(value = "/adminRegister", method = RequestMethod.GET)
	public String adminRegister() {
		return "/front/adminRegister";
		// return JsonObjcet.objcetTOJson(user);
	}

	
	@RequestMapping(value = "/adminTransations", method = RequestMethod.GET)
	public String adminTransations() {
		return "/front/adminTransations";
		// return JsonObjcet.objcetTOJson(user);
	}
	

	
	
	
	@RequestMapping(value = "/seller/login", method = RequestMethod.POST)
	@ResponseBody
	public String buyerLogin(HttpServletRequest request,@RequestBody Seller seller ) throws JsonProcessingException {
		Seller flag=null;
		if(null!=seller){
			flag=dao.login(seller);
			
		}
		if(flag!=null){
			setSessionSeller(request, flag);
			String msg = lang.loginSuccess;
			return  JsonObject.objcetTOJson(msg, flag);
		}else{
			String errMsg=lang.loginFail;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	@RequestMapping(value = "/seller/signout", method = RequestMethod.GET)
	@ResponseBody
	public String buyerSignout(HttpServletRequest request) throws JsonProcessingException {
		boolean flag=false;
		

		setSessionSeller(request, null);
			String msg = lang.sigoutSuccess;
			return  JsonObject.objcetTOJson(msg, null);
	
		
		
	}
	
	
	@RequestMapping(value = "/seller/register", method = RequestMethod.POST)
	@ResponseBody
	public String CreateCustomerAccount(@RequestBody Seller seller ) throws JsonProcessingException {
		int flag=-1;
		if(null!=seller){
			flag=dao.createCustomer(seller);
		}
		if(flag!=-1){
			String msg = lang.createCustomerSuccess;
			return  JsonObject.objcetTOJson(msg,flag);
		}else{
			String errMsg=lang.createCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	
	
	@RequestMapping(value = "/eidtSeller", method = RequestMethod.POST)
	@ResponseBody
	public String eidtBuyer(@RequestBody Seller seller ) throws JsonProcessingException {
		boolean flag=false;
		Seller cs = null;
		SellerDao dao = new SellerDao();
		if(null!=seller){
			cs=dao.updateSeller(seller);
		}
		
		if(cs!=null){
			String msg = lang.updateCustomerSuccess;
			return  JsonObject.objcetTOJson(msg,cs);
		}else{
			String errMsg=lang.updateCustomerfailed;
			return JsonObject.customerExcetption(errMsg);
			}
		
		
	}
	
	
	
	

	@RequestMapping(value = "/getproductsbySellerId/{key}", method = RequestMethod.POST)
	@ResponseBody
	public String searchProductByKeyWords( @PathVariable String key,Model model) throws JsonProcessingException {
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			List<ProductDao> productls=productService.getProductbySellerId(Integer.parseInt(key));
			return  JsonObject.objcetTOJson(lang.pageLoadSuccess,productls);
		}
	
			
			
		
	}
	
	
	
	@RequestMapping(value = "/deleteProductByid/{key}", method = RequestMethod.GET)
	@ResponseBody
	public String deleteProductByid( @PathVariable int key,Model model) throws JsonProcessingException {
		 ProductDao cs = new ProductDao();
		 if(cs.deleteProductById(key)){
			 return JsonObject.objcetTOJson(lang.removeBankSuccess,null);
		 }
		 else{
				return JsonObject.customerExcetption(lang.removeBankfail);
		 }
			
			
		
	}
	
	
	@RequestMapping(value = "/adminEditProduct/{key}", method = RequestMethod.GET)

	public String getProductById(@PathVariable String key,ModelMap model) throws JsonProcessingException {
	
		if(key.isEmpty()){
			String errMsg=lang.searchNeedKeywords;
			return JsonObject.customerExcetption(errMsg);
		}else{
			ProductDao productls=productService.getProductById(Integer.valueOf(key));
			model.addAttribute("product", productls);
			return "/front/adminEditProduct";
		}
			
		
	}

	
	
	
	
	

	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	@ResponseBody
	public String updateProduct( @RequestBody Product p) throws JsonProcessingException {
		    ProductDao dao =new ProductDao();
		    dao.updateProduct(p);
			return  JsonObject.objcetTOJson(lang.pageLoadSuccess,null);
		}
	
	
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.POST)
	@ResponseBody
	public String addProduct( @RequestBody Product p) throws JsonProcessingException {
		    ProductDao dao =new ProductDao();
		    int pid=dao.addProduct(p);
			return  JsonObject.objcetTOJson(lang.pageLoadSuccess,pid);
		}
	
	
	
	
	@RequestMapping(value = "/addProductPic", method = RequestMethod.POST)
	@ResponseBody
	public String addProductPic( @RequestBody List<ProductImage> imgs) throws JsonProcessingException {
		    ProductDao dao =new ProductDao();
		    dao.deletePicBuyProductId(imgs.get(0).getProduct_id());
		    for(ProductImage pi : imgs){
		    	if(!pi.getImageURl().isEmpty())
		    	 {
		    		dao.addProductPic(pi);
		    	 }
		    	}
		   
			return  JsonObject.objcetTOJson(lang.pageLoadSuccess,null);
		}
	
	
	
	
	
	@RequestMapping(value = "/updateTranscation/{pid}/{pcode}/{status}", method = RequestMethod.GET)
	@ResponseBody
	public String updateTranscation(@PathVariable int pid,@PathVariable int pcode,@PathVariable String status) throws JsonProcessingException {
	
			OrderDao dao =new OrderDao();

		    dao.updateOrderStatus(pid,status);
			dao.updateOrderPackage(pid,pcode);
			return  JsonObject.objcetTOJson(lang.pageLoadSuccess,null);
		}
			
		
	
	
	 @RequestMapping(value = "/getOrderHistory", method = RequestMethod.GET)
		@ResponseBody
		public String buyerLogin() throws JsonProcessingException {
		List<OrderDao> orders = productService.getOrderHistory();
		 return JsonObject.objcetTOJson("Retrieve Data Success",orders);
			
		}
	
	
	
}
