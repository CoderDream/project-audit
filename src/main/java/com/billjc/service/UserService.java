package com.billjc.service;

import java.util.List;

import com.billjc.model.User;

public interface UserService {
	int deleteByPrimaryKey(String id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(String id);
	
	User selectByWorkId(String workId);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKeyWithBLOBs(User record);

	int updateByPrimaryKey(User record);
	
	List<User> selectByParams(String value);
	
	List<User> selectByUsername(String username);
}