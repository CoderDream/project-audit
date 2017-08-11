package com.billjc.util;

import static org.junit.Assert.*;

import java.util.Properties;
import java.util.Set;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PropertiesUtilTest {

	private static Logger logger = LoggerFactory.getLogger(PropertiesUtilTest.class);

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testGetProperties() {
		String fileName = null;
		Properties properties = PropertiesUtil.getProperties(fileName);
		Set<String> stringPropertyNames = properties.stringPropertyNames();
		for (String stringPropertyName : stringPropertyNames) {
			logger.debug(stringPropertyName);
		}
	}

	@Test
	public void testLoadProperties() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetPropertyStringString() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetPropertyString() {
		String name = "81";
		String value = PropertiesUtil.getProperty(name);
		logger.debug(value);
	}

}
