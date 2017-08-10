package com.billjc.util;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtilTest {

	private static Logger logger = LoggerFactory.getLogger(JsonUtilTest.class);

	private ObjectMapper objectMapper = null;

	@Before
	public void init() {

		objectMapper = new ObjectMapper();
	}

	@After
	public void destory() {
		objectMapper = null;
	}

	/**
	 * <b>function:</b>json字符串转换成list<map>
	 * 
	 * @author hoojo
	 * @createDate 2010-11-23 下午06:12:01
	 */
	@SuppressWarnings("unchecked")
	@Test
	public void readJson2List() {
		String json = "[{\"address\": \"address2\",\"name\":\"haha2\",\"id\":2,\"email\":\"email2\"},"
				+ "{\"address\":\"address\",\"name\":\"haha\",\"id\":1,\"email\":\"email\"}]";
		try {
			List<LinkedHashMap<String, Object>> list = objectMapper.readValue(json, List.class);
			logger.debug("" + list.size());
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> map = list.get(i);
				Set<String> set = map.keySet();
				for (Iterator<String> it = set.iterator(); it.hasNext();) {
					String key = it.next();
					logger.debug("" + key + ":" + map.get(key));
				}
			}
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Test
	public void readJson2List02() {
		String json = "[{\"queryString\":[\"3575\",\"3577\"],\"conditionType\":\"workPlace\"}]";
		try {
			List<LinkedHashMap<String, Object>> list = objectMapper.readValue(json, List.class);
			logger.debug("" + list.size());
			for (int i = 0; i < list.size(); i++) {
				Map<String, Object> map = list.get(i);
				Set<String> set = map.keySet();
				for (Iterator<String> it = set.iterator(); it.hasNext();) {
					String key = it.next();
					logger.debug("" + key + ":" + map.get(key));
				}
			}

			List<String> queryStringList = (List<String>) list.get(0).get("queryString");
			for (String string : queryStringList) {
				logger.debug("" + string);
			}

			String conditionType = (String) list.get(0).get("conditionType");
			logger.debug("" + "conditionType: " + conditionType);
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// {"queryString":["3575","3577"],"conditionType":"workPlace"}

}
