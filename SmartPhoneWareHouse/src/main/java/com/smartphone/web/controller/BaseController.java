package com.smartphone.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.Assert;

import com.smartphon.dao.user.BuyerDao;



public class BaseController {
	protected static final String ERROR_MSG_KEY = "errorMsg";

	/**
	 * Get Buyer store in session
	 * 
	 * @param request
	 * @return
	 */
	protected BuyerDao getSessionUser(HttpServletRequest request) {
		return (BuyerDao) request.getSession().getAttribute("buyer");
	}
   
	/**
	 * Store buyer in session
	 * @param request
	 * @param user
	 */
	protected void setSessionUser(HttpServletRequest request,BuyerDao buyer) {
		request.getSession().setAttribute("buyer",
				buyer);
	}
	


	
	
}
