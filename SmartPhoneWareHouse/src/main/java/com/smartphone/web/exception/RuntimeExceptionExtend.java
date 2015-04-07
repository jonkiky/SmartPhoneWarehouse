package com.smartphone.web.exception;
/**
 * This class extends RuntimeException and be used as custom exception.
 * 
 * @author Yizhen Chen
 */
public class RuntimeExceptionExtend extends RuntimeException {
	
	private static final long serialVersionUID = 1L;
	 
	private String errCode="400";
	private String errMsg;
 
	public String getErrCode() {
		return errCode;
	}
 
	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}
 
	public String getErrMsg() {
		return errMsg;
	}
 
	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
 
	public RuntimeExceptionExtend(String errCode, String errMsg) {
		this.errCode = errCode;
		this.errMsg = errMsg;
	}
	
	public RuntimeExceptionExtend() {
		
	}
 
}
