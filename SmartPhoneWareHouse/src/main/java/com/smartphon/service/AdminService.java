package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.AdministratorDao;
@Service
public class AdminService {

	public AdministratorDao admin;
	
	public Boolean login(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
	public Boolean logout(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean createAdmin(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean updateAdminProfile(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean removeAdmin(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	
}
