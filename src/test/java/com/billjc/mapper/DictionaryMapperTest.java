package com.billjc.mapper;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.dao.DictionaryMapper;
import com.billjc.model.Dictionary;

public class DictionaryMapperTest extends BaseTest {

	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Test
	public void testSelectByPrimaryKey() {
		Integer id = 856;
		Dictionary dictionary = dictionaryMapper.selectByKey(id);
		System.out.println(dictionary);
	}

	@Test
	public void testFindAll() {
		List<Dictionary> dictionaryList = dictionaryMapper.findAll();
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
	}
}
