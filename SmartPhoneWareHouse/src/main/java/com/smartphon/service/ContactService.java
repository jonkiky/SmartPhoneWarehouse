package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.MemberDao;
import com.smartphon.dao.user.MemberProfileDao;
@Service
public class ContactService {

	public MemberDao member;
	public MemberProfileDao getContact(){
		throw new UnsupportedOperationException("Implement this");
	}
}
