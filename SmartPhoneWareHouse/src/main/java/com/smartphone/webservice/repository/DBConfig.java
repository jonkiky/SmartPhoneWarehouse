package com.smartphone.webservice.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * DBConfig : Contains features about DB, provide information for connecting database.
 *  @author Yizhen Chen
 */

public  class DBConfig {
	
	/** Default DB_URL */
	public static final String DB_URL = "jdbc:mysql://localhost:3306/itm";
	
	/** Database User Name */
	public static final String DB_USER = "root";
	
	/** Database password */
	public static final String DB_PW = "123456";
	
	/** Database connection driver */
	public static final String DB_DRIVER = "com.mysql.jdbc.Driver"; 
	
	/** Database connection URL from request */
	private String requestDBUrl;
	
	public String getRequestDBUrl() {
		return requestDBUrl;
	}

	public void setRequestDBUrl(String requestDBUrl) {
		this.requestDBUrl = requestDBUrl;
	}

	
	
}
