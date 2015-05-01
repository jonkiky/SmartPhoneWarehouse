package com.smartphone.web.controller;

import javax.servlet.http.HttpServletRequest;

import com.smartphone.model.Admin;
import com.smartphone.model.Buyer;
import com.smartphone.model.Seller;



public class BaseController {
	protected static final String ERROR_MSG_KEY = "errorMsg";

	/**
	 * Get Buyer store in session
	 * 
	 * @param request
	 * @return
	 */
	protected Buyer getSessionUser(HttpServletRequest request) {
		return (Buyer) request.getSession().getAttribute("buyer");
	}
   
	/**
	 * Store buyer in session
	 * @param request
	 * @param user
	 */
	protected void setSessionUser(HttpServletRequest request,Buyer buyer) {
		request.getSession().setAttribute("buyer",buyer);
	}
	

	/**
	 * Get Buyer store in session
	 * 
	 * @param request
	 * @return
	 */
	protected Admin getSessionAdmin(HttpServletRequest request) {
		return (Admin) request.getSession().getAttribute("admin");
	}
   
	/**
	 * Store buyer in session
	 * @param request
	 * @param user
	 */
	protected void setSessionAdmin(HttpServletRequest request,Admin admin) {
		request.getSession().setAttribute("admin",admin);
	}
	
	

	/**
	 * Get Buyer store in session
	 * 
	 * @param request
	 * @return
	 */
	protected Seller getSessionSeller(HttpServletRequest request) {
		return (Seller) request.getSession().getAttribute("seller");
	}
   
	/**
	 * Store buyer in session
	 * @param request
	 * @param user
	 */
	protected void setSessionSeller(HttpServletRequest request,Seller seller) {
		request.getSession().setAttribute("seller",seller);
	}
	
}
