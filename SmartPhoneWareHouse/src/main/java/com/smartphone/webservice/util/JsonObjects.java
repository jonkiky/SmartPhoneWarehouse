package com.smartphone.webservice.util;

import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smartphone.webservice.respnose.model.StanderMultiObjsResponse;

public final class JsonObjects {

	public static String  objcetTOJson (String msg,List<Object> inputObjs) throws JsonProcessingException{
		StanderMultiObjsResponse obj = new StanderMultiObjsResponse();
		obj.setMessage(msg);
		obj.setObjls(inputObjs);
		obj.setStatusCode("200");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(obj);
	}
}
