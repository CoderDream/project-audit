package com.billjc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.DictionaryMapper;
import com.billjc.model.Dictionary;
import com.billjc.service.DictionaryService;

@Service
public class DictionaryServiceImpl implements DictionaryService {

	@Autowired
	private DictionaryMapper dictionaryMapper;

	@Override
	public Dictionary selectByPK(Integer id) {
		Dictionary dictionary = dictionaryMapper.selectByKey(id);
		return dictionary;
	}

	@Override
	public void save(Dictionary dictionary) {
		dictionaryMapper.insertSelective(dictionary);
		// System.out.println(10 / 0); // 用于测试事务，不测试时注释
		// dictionaryMapper.insertSelective(dictionary); // 用于测试事务，不测试时注释
	}

	@Override
	public List<Dictionary> findAll() {
		return dictionaryMapper.findAll();
	}

	@Override
	public List<Dictionary> selectByValue(String value, String type) {
		return dictionaryMapper.selectByValue(value.trim(), type.trim());
	}

	@Override
	public List<Dictionary> selectByType(String type) {
		return dictionaryMapper.selectByType(type.trim());
	}

}
