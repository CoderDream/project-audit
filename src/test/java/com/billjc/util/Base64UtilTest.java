package com.billjc.util;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class Base64UtilTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testEncodeByteArray() {
		fail("Not yet implemented");
	}

	@Test
	public void testEncodeForUrl() {
		fail("Not yet implemented");
	}

	@Test
	public void testEncodeString() {
		
		fail("Not yet implemented");
	}

	@Test
	public void testDecode() {
		String str = "GTcQqU+PrDMngu3ndGyQ5v7CRnwUoNpWfHuvh5EBQ8w=";
		System.out.println(Base64Util.decodeToString(str));
	}

	@Test
	public void testDecodeForUrl() {
		
		
		fail("Not yet implemented");
	}

}
