package com.billjc.service;

import java.util.List;

import com.billjc.model.Dictionary;

public interface DictionaryService {

	void save(Dictionary user);

	List<Dictionary> selectByType(String type);
	
	List<Dictionary> findAll();
	
	List<Dictionary> selectByValue(String value, String type);
	
	Dictionary selectByKeyName(String keyName);
}