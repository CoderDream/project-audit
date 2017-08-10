package com.billjc.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.dao.UserMapper;

public class UserMapperTest extends BaseTest {

	@Autowired
	private UserMapper userMapper;

	@Test
	public void testSelectByWorkId() {
		System.out.println(userMapper.selectByWorkId("B-28709"));
	}

}
