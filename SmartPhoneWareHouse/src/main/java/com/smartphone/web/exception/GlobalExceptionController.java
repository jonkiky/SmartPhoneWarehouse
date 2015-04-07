package com.smartphone.web.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.smartphone.web.i18n.Language;
import com.smartphone.web.i18n.i18nConfigure;
import com.smartphone.webservice.respnose.model.StanderMultiObjsResponse;
import com.smartphone.webservice.util.JsonObject;


/**
 * GlobalExceptionController : A controller advice allows you to use exception
 * handling techniques but apply them across the whole application, not just to
 * an individual controller. You can think of them as an annotation driven
 * interceptor.
 * 
 * @author Yizhen Chen
 */

@ControllerAdvice
public class GlobalExceptionController {
	i18nConfigure cfg = i18nConfigure.getInstance();
	private Language lang=cfg.getLanguage();
	

	/**
	 * All the RuntimeExceptionExtend exception will active this function before send to client.
	 * This function will grasp errcode and errmsg and store them into CustomException.
	 * Convernt customException into Json and sent to client. 
	 * @param RuntimeExceptionExtend ex
	 *            the class that contain the exception info.
	 * @return Json 
	 */
	@ExceptionHandler(RuntimeExceptionExtend.class)
	@ResponseBody
	public String handleCustomException(RuntimeExceptionExtend ex)
			throws JsonProcessingException {
		
		return JsonObject.runTimeException(ex.getErrCode(),ex.getErrMsg(),null);

	}
	

	/**
	 * Default ExceptionHandler: if exception does not customized , this function will be active.
	 * 
	 * @param Exception ex
	 *            the class that contain the exception info.
	 * @return Json 
	 * @throws JsonProcessingException 
	 */

	@ExceptionHandler(Exception.class)
	@ResponseBody
	public String handleAllException(Exception ex) throws JsonProcessingException {
		return JsonObject.runTimeException("500",lang.unKnow,null);
	}

}