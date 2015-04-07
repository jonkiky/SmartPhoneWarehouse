package com.smartphone.web.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smartphone.web.annotation.Register;

/**
 * IndexController : Response to request over HTTP protocol and send back a JSON
 * file.
 * 
 * @author Yizhen Chen
 */
@Controller
public class IndexController {

	@Register
	@RequestMapping(value = "/hw", method = RequestMethod.GET)
	@ResponseBody
	public void greeting(
			@RequestParam(value = "name", defaultValue = "World") String name)
			throws JsonProcessingException {

		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Index() {
		return "/front/index";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/compair", method = RequestMethod.GET)
	public String compair() {
		return "/front/compair";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/components", method = RequestMethod.GET)
	public String components() {
		return "/front/components";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {
		return "/front/contact";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/fag", method = RequestMethod.GET)
	public String fag() {
		return "/front/fag";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "/front/footer";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/forgetpass", method = RequestMethod.GET)
	public String forgetpass() {
		return "/front/forgetpass";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header() {
		return "/front/header";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/legal_notice", method = RequestMethod.GET)
	public String legalNotice() {
		return "/front/legal_notice";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "/front/login";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/normal", method = RequestMethod.GET)
	public String normal() {
		return "/front/normal";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/product_details", method = RequestMethod.GET)
	public String productDetails() {
		return "/front/product_details";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/product_summary", method = RequestMethod.GET)
	public String productSummary() {
		return "/front/product_summary";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products() {
		return "/front/products";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register() {
		return "/front/register";
		// return JsonObjcet.objcetTOJson(user);
	}

	@RequestMapping(value = "/special_offer", method = RequestMethod.GET)
	public String specialOffer() {
		return "/front/special_offer";
		// return JsonObjcet.objcetTOJson(user);
	}

}
