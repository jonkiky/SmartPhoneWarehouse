package com.smartphon.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smartphon.dao.product.CommentDao;


@Service
public class CommentService {
	
	public CommentDao comment;

	public CommentDao getComment(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public List<CommentDao> getCommentList(){
		throw new UnsupportedOperationException("Implement this");
	}
	
	public Boolean creatComment(){
		throw new UnsupportedOperationException("Implement this");
	}
	

	public Boolean removeComment(){
		throw new UnsupportedOperationException("Implement this");
	}
	
}
