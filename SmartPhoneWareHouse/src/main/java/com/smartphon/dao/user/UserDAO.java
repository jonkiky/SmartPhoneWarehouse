package com.smartphon.dao.user;


/**
 *  UserDAO : Data Access Object for system use
 *  @see  com.smartphone.model.User
 *  @author Yizhen Chen
 */
public class UserDAO {
	private  int authorid;
	private String firstname;
	private String lastname;
	private String usename;
	private String type;
	

	public int getAuthorid() {
		return authorid;
	}
	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	
	public String getUsename() {
		return usename;
	}
	public void setUsename(String usename) {
		this.usename = usename;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
