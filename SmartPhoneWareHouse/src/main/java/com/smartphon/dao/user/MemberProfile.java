package com.smartphon.dao.user;

import java.util.List;

public abstract class MemberProfile {
	
	private String id;
	private String title;
	private String fName;
	private String lname;
	private String email;
	
	private int dayOfBirth;
	private int monthOfBirth;
	private int yearOfBirth;
	
	private int phoneNumber;
	private List<ShippingAddress> addresses;
	private Member member;
	
	
	
}
