package com.smartphon.service;

import org.springframework.stereotype.Service;

import com.smartphon.dao.user.Member;
import com.smartphon.dao.user.MemberProfile;
@Service
public class ContactService {

	public Member member;
	public MemberProfile getContact(){
		throw new UnsupportedOperationException("Implement this");
	}
}
