package com.smartphone.webservice.respnose.model;
/**
 * StanderSingleObjResponse : Stander Response Structure , only contain one Object.
 *  @author Yizhen Chen
 */
public class StanderSingleObjResponse {

	private String Message;
	private String StatusCode;
	private Object obj;
	
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public String getStatusCode() {
		return StatusCode;
	}
	public void setStatusCode(String statusCode) {
		StatusCode = statusCode;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	
			
}
