package com.billjc.util;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PowerUtilTest {

	private static Logger logger = LoggerFactory
			.getLogger(PowerUtilTest.class);

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testFindResourceIds() {
		String username = "B-28709";
		List<String> result = PowerUtil.findResourceIds(username);
		for (String long1 : result) {
			logger.debug("" + long1);
		}
		//
	}
	
	@Test
	public void testFindResourceIds02() {
		String username = "B-34196";
		List<String> result = PowerUtil.findResourceIds(username);
		for (String long1 : result) {
			logger.debug("" + long1);
		}
		//
	}

}
