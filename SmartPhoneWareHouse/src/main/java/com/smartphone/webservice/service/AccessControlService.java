package com.smartphone.webservice.service;

import javax.naming.NoPermissionException;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

import com.smartphone.web.exception.RuntimeExceptionExtend;
import com.smartphone.web.i18n.EnglishTextString;


/**
 * AuthorizationService : Access controller.  By using Aspect (AOP)
 *  @author Yizhen Chen
 */
@Aspect
public class AccessControlService  {

//	@Before("@annotation(com.itm.web.anno.Register)")
//	public void repgister(String name){
//		System.out.print("hello World");
//	}
//	
	// Register annotation
	private final String register ="@annotation(com.smartphone.web.annotation.Register)";
	
	/**
	 * Define Point Cut
	 * pointcuts determine join points of interest, and thus enable us to control when advice executes.
	 * @Pointcut annotation (the method serving as the pointcut signature must have a void return type).
	 * */
	@Pointcut(register)
	public void runtimeException() {}
	
	
	/**
	 * userAccessdControl: this function is for checking user access right.
	 * if user access right is yes then do nothing 
	 * 	  else
	 * Throw a RuntimeExceptionExtend
	 * 
	 * Before Advice is associated with a pointcut expression and runs before method executions matched by the pointcut.
	 * @param name
	 * @return
	 * @throws RuntimeExceptionExtend
	 */
	@Before(register+"&& args(name)")
	public String userAccessdControl(String name) throws RuntimeExceptionExtend{
		
		
		throw new RuntimeExceptionExtend("Err404",EnglishTextString.Err404); 
		//throw new UnsupportedOperationException("Null point to TYPE");
	}
	
	
}