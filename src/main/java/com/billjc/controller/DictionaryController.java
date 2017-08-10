package com.billjc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billjc.model.Dictionary;
import com.billjc.service.DictionaryService;
import com.billjc.util.Constants;

/**
 * @author xulin28709
 *
 */
@Controller
@RequestMapping("/dictionary")
public class DictionaryController {

	private static Logger logger = LoggerFactory.getLogger(DictionaryController.class);

	@Autowired
	private DictionaryService dictionaryService;

	@ResponseBody
	@RequestMapping(value = "/major", method = RequestMethod.GET)
	public Map<Integer, String> major(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.MAJOR_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/university", method = RequestMethod.GET)
	public Map<Integer, String> university(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.UNIVERSITY_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/education", method = RequestMethod.GET)
	public Map<Integer, String> education() {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByType(Constants.EDUCATION_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	/**
	 * 技能
	 * 
	 * @param value
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/skill", method = RequestMethod.GET)
	public Map<Integer, String> skill(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.SKILL_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	/**
	 * 熟练程度
	 * 
	 * @param value
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/proficiency", method = RequestMethod.GET)
	public Map<Integer, String> proficiency(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.PROFICIENCY_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	/**
	 * 领域
	 * 
	 * @param value
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/domain", method = RequestMethod.GET)
	public Map<Integer, String> domain(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.DOMAIN_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	/**
	 * 经验等级
	 * 
	 * @param value
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/experience", method = RequestMethod.GET)
	public Map<Integer, String> experienceLeve(String value) {
		logger.debug("like {}", value);
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.EXPERIENCE_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/city", method = RequestMethod.GET)
	public Map<Integer, String> city(String value) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.CANDIDATE_CITY_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/city-all", method = RequestMethod.GET)
	public Map<Integer, String> cityAll() {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByType(Constants.CANDIDATE_CITY_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/employee-state", method = RequestMethod.GET)
	public Map<Integer, String> state(String value) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = dictionaryService.selectByValue(value, Constants.EMPLOYEE_STATE_INFO);
		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/audit", method = RequestMethod.GET)
	public Map<Integer, String> queryAuditItemsByType(String type) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = new ArrayList<Dictionary>();
		switch (type) {
		case Constants.REASONABLE_OBJECTIVE_INFO:
			dictionaryList = dictionaryService.selectByType(Constants.REASONABLE_OBJECTIVE_INFO);
			break;

		case Constants.OPERATION_STANDARD_INFO:
			dictionaryList = dictionaryService.selectByType(Constants.OPERATION_STANDARD_INFO);
			break;

		case Constants.ACCURATE_DATA_INFO:
			dictionaryList = dictionaryService.selectByType(Constants.ACCURATE_DATA_INFO);
			break;

		default:
			break;
		}

		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/audit-all", method = RequestMethod.GET)
	public Map<Integer, String> selectAllAuditItems() {
		Map<Integer, String> map = new HashMap<Integer, String>();
		List<Dictionary> dictionaryList = new ArrayList<Dictionary>();
		dictionaryList.addAll(dictionaryService.selectByType(Constants.REASONABLE_OBJECTIVE_INFO));
		dictionaryList.addAll(dictionaryService.selectByType(Constants.OPERATION_STANDARD_INFO));
		dictionaryList.addAll(dictionaryService.selectByType(Constants.ACCURATE_DATA_INFO));

		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getId(), dictionary.getValue());
		}

		return map;
	}
}