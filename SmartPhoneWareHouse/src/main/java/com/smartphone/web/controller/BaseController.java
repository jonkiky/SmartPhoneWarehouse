package com.smartphone.web.controller;

import javax.servlet.http.HttpServletRequest;

import com.smartphone.model.Buyer;



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
	


	
	
}
