package com.billjc.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.Dictionary;

public class DictionaryServiceTest extends BaseTest {

	@Autowired
	private DictionaryService dictionaryService;

	@Test
	public void testFindAll() {
		List<Dictionary> dictionaryList = dictionaryService.findAll();
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
	}

}
