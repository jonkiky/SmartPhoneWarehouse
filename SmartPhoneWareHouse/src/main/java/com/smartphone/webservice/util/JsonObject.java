package com.smartphone.webservice.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smartphone.web.exception.RuntimeExceptionExtend;
import com.smartphone.webservice.respnose.model.StanderSingleObjResponse;

public final class JsonObject {

	public static String  objcetTOJson (String msg,Object inputObj) throws JsonProcessingException{
		StanderSingleObjResponse obj = new StanderSingleObjResponse();
		obj.setMessage(msg);
		obj.setObj(inputObj);
		obj.setStatusCode("200");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(obj);
	}
	
	
	public static String  runTimeException(String code,String msg,Object inputObj) throws JsonProcessingException{
		RuntimeExceptionExtend obj = new RuntimeExceptionExtend();
		obj.setErrMsg(msg);
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(obj);
	}
	
	public static String  customerExcetption (String msg) throws JsonProcessingException{
		RuntimeExceptionExtend obj = new RuntimeExceptionExtend();
		obj.setErrMsg(msg);
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(obj);
	}
}
