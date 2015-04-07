package com.smartphone.web.controller;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smartphon.dao.user.Administrator;
import com.smartphon.service.AdminService;
import com.smartphone.web.annotation.Register;

/**
 * IndexController : Response to request over HTTP protocol and send back a JSON
 * file.
 * 
 * @author Yizhen Chen
 */
@Controller
public class AdminController {

	public AdminService admin;

}
