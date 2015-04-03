package com.smartphon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.ProductDao;
import com.smartphon.dao.product.SmartPhoneDao;
@Service
public class ComparationService {

	public SmartPhoneDao phone;
	
	public List<SmartPhoneDao> Compare() {
		throw new UnsupportedOperationException("Implement this");
	}
}
