package com.smartphone.web.i18n;

public abstract class Language {
	public  String  userPremissionError;
	public  String  unKnow;
	public  String  success;
	public  String  createCustomerfailed;
	public  String  createCustomerSuccess;
	public String searchNeedKeywords;
	public String loginSuccess;
	public String loginFail;
	public String sigoutSuccess;
	public String addBankSuccess;
	public String addBankfail;
	public String removeBankSuccess;
	public String removeBankfail;
	public String canelOrderFail;
	public String canelOrderSuccess;
	public String createAddressSuccess;
	public String createAddressFail;
	public String recieveAddressesfail;
	public String updateCustomerSuccess;
	public String updateCustomerfailed;
	
	
	public Language(){
		userPremissionError= "User No Permission Error";
		unKnow="Unknow Problem";
		success="Success";
		createCustomerfailed="Create Customer Failed";
		createCustomerSuccess="Create Customer Success";
		searchNeedKeywords="Please provide a keywords for searching";
		loginSuccess="login Success";
		loginFail="login Fail";
		sigoutSuccess="sigout Success";
		addBankSuccess="New payment added.";
		addBankfail="New payment failed";
		removeBankSuccess="Remove payment success.";
		removeBankfail="Remove payment failed";
		canelOrderSuccess="Cancel Order Success";
		canelOrderFail="Cancel Order Fail";
		createAddressSuccess="Create Address Success";
		createAddressFail="Create Address Fail";
		recieveAddressesfail ="Recieve Delivery Address Fail";

		updateCustomerSuccess="Modify Profile Success";
		updateCustomerfailed="Modify Profile failed";
	}
}
