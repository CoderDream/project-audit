package com.billjc.service;

import java.util.List;

import com.billjc.model.Dictionary;

public interface DictionaryService {
	Dictionary selectByPK(Integer id);

	void save(Dictionary user);

	List<Dictionary> selectByType(String type);
	
	List<Dictionary> findAll();
	
	List<Dictionary> selectByValue(String value, String type);
}