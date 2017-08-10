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
		List<Integer> result = PowerUtil.findResourceIds(username);
		for (Integer long1 : result) {
			logger.debug("" + long1);
		}
		//
	}

}
