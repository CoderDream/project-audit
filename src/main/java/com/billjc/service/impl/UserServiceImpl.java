package com.billjc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.UserMapper;
import com.billjc.model.User;
import com.billjc.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public User selectByPrimaryKey(String id) {
		User user = userMapper.selectByPrimaryKey(id);
		return user;
	}

	// @Override
	// public void save(User user) {
	// userMapper.insertSelective(user);
	// // System.out.println(10 / 0); // 用于测试事务，不测试时注释
	// // userMapper.insertSelective(user); // 用于测试事务，不测试时注释
	// }

	@Override
	public int deleteByPrimaryKey(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(User record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(User record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User selectByWorkId(String workId) {
		return userMapper.selectByWorkId(workId);
	}

	@Override
	public List<User> selectByParams(String value) {
		return userMapper.selectByParams(value);
	}

	@Override
	public List<User> selectByUsername(String username) {
		return userMapper.selectByUsername(username);
	}
}
