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

	/**
	 * @param type
	 *            类型
	 * @return 审计科目键值对
	 */
	@ResponseBody
	@RequestMapping(value = "/audit", method = RequestMethod.GET)
	public Map<String, String> queryAuditItemsByType(String type) {
		Map<String, String> map = new HashMap<String, String>();
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
			map.put(dictionary.getKeyName(), dictionary.getValue());
		}

		return map;
	}

	/**
	 * @return 所有的审计科目键值对
	 */
	@ResponseBody
	@RequestMapping(value = "/audit-all", method = RequestMethod.GET)
	public Map<String, String> selectAllAuditItems() {
		Map<String, String> map = new HashMap<String, String>();
		List<Dictionary> dictionaryList = new ArrayList<Dictionary>();
		dictionaryList.addAll(dictionaryService.selectByType(Constants.REASONABLE_OBJECTIVE_INFO));
		dictionaryList.addAll(dictionaryService.selectByType(Constants.OPERATION_STANDARD_INFO));
		dictionaryList.addAll(dictionaryService.selectByType(Constants.ACCURATE_DATA_INFO));

		for (Dictionary dictionary : dictionaryList) {
			logger.debug(dictionary.toString());
			map.put(dictionary.getKeyName(), dictionary.getValue());
		}

		return map;
	}
}