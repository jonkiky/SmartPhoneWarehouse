package com.smartphone.webservice.test;

import org.springframework.aop.aspectj.annotation.AspectJProxyFactory;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphone.web.controller.IndexController;
import com.smartphone.webservice.service.AccessControlService;

public class Test {
	public static void main(String arg[]) throws JsonProcessingException{
		IndexController ic = new IndexController();
		AspectJProxyFactory f = new AspectJProxyFactory();
		f.setTarget(ic);
		f.addAspect(AccessControlService.class);
		IndexController ic2=f.getProxy();
		ic2.greeting("ddd");
	}
}
