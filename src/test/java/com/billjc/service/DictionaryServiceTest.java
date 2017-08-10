package com.billjc.service;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.Dictionary;
import com.billjc.util.Constants;

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

	@Test
	public void testSelectByValue01() {
		String value = "湖南";
		String type = Constants.UNIVERSITY_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value,
				type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
	}

	@Test
	public void testSelectByValue02() {
		String value = "电子信息";
		String type = Constants.MAJOR_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value,
				type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
	}

	@Test
	public void testSelectByValue03() {
		String value = "武汉";
		String type = Constants.CANDIDATE_CITY_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value,
				type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
	}

	@Test
	public void testSelectByValue04() {
		String value = "离";
		String type = Constants.EMPLOYEE_STATE_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value,
				type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}

		assertEquals(2, dictionaryList.size());
	}
	

	@Test
	public void testSelectByValue05() {
		String value = "";
		String type = Constants.EMPLOYEE_STATE_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value,
				type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}

		assertEquals(3, dictionaryList.size());
	}

	@Test
	public void testSelectByType01() {
		String type = Constants.EDUCATION_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByType(type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
		assertEquals(4, dictionaryList.size());
	}

	@Test
	public void testSelectByType02() {
		String type = Constants.CANDIDATE_CITY_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByType(type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
		assertEquals(8, dictionaryList.size());
	}
	
	@Test
	public void testSelectByType03() {
		String type = Constants.EMPLOYEE_STATE_INFO;
		List<Dictionary> dictionaryList = dictionaryService.selectByType(type);
		for (Dictionary dictionary : dictionaryList) {
			System.out.println(dictionary);
		}
		assertEquals(3, dictionaryList.size());
	}
	
	@Test
	public void testSelectByType04() {
		// 熟练程度(了解:掌握:熟练:精通)
		String type1 = Constants.PROFICIENCY_INFO;
		List<Dictionary> dictionaryList1 = dictionaryService.selectByType(type1);
		for (Dictionary dictionary : dictionaryList1) {
			System.out.println(dictionary);
		}
		assertEquals(4, dictionaryList1.size());
		
		// 技能列表
		String type2 = Constants.SKILL_INFO;
		List<Dictionary> dictionaryList2 = dictionaryService.selectByType(type2);
		for (Dictionary dictionary : dictionaryList2) {
			System.out.println(dictionary);
		}
		assertEquals(17, dictionaryList2.size());
		
		// 领域列表 ERP | CRM | PLM | FIN | HR
		String type3 = Constants.DOMAIN_INFO;
		List<Dictionary> dictionaryList3 = dictionaryService.selectByType(type3);
		for (Dictionary dictionary : dictionaryList3) {
			System.out.println(dictionary);
		}
		assertEquals(5, dictionaryList3.size());
		
		// 经验程度
		String type4 = Constants.EXPERIENCE_INFO;
		List<Dictionary> dictionaryList4 = dictionaryService.selectByType(type4);
		for (Dictionary dictionary : dictionaryList4) {
			System.out.println(dictionary);
		}
		assertEquals(3, dictionaryList4.size());
	}
}
