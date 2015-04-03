package com.smartphone.webservice.respnose.model;

import java.util.List;
/**
 * StanderSingleObjResponse : Stander Response Structure , contain set of Objects.
 *  @author Yizhen Chen
 */
public class StanderMultiObjsResponse {

	private String Message;
	private String StatusCode;
	private List<Object> objls;
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
	public List<Object> getObjls() {
		return objls;
	}
	public void setObjls(List<Object> objls) {
		this.objls = objls;
	}
	
	
			
}
