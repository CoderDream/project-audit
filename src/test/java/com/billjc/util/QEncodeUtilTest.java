package com.billjc.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;

public class QEncodeUtilTest {

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void testEncrypt_01() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-13416");
		workIds.add("B-13385");
		workIds.add("B-13367");
		workIds.add("B-13158");
		workIds.add("B-13140");
		workIds.add("B-10700");
		workIds.add("B-10934");
		workIds.add("B-12659");
		workIds.add("B-14640");
		workIds.add("B-15870");
		workIds.add("B-13454");
		workIds.add("B-13545");
		workIds.add("B-13550");
		workIds.add("B-13585");
		workIds.add("B-13618");

		for (String string : workIds) {
			String encryptString = QEncodeUtil.encrypt(string);
			// 浏览器会自动解码
			try {
				encryptString = URLDecoder.decode(encryptString, Constants.ENCODING);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println(decryptString + "\t" + encryptString);
		}
	}

	@Test
	public void testEncrypt_02() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-11332");
		workIds.add("B-11504");
		workIds.add("B-12072");
		workIds.add("B-12738");
		workIds.add("B-12779");
		workIds.add("B-13030");
		workIds.add("B-13236");
		workIds.add("B-13817");
		workIds.add("B-13821");
		workIds.add("B-14205");
		workIds.add("B-14260");
		workIds.add("B-14264");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-28709");
		workIds.add("B-33966");

		for (String string : workIds) {
			String encryptString = QEncodeUtil.encrypt(string);
			System.out.println("加密后" + "：" + encryptString);

			// 浏览器会自动解码
			try {
				encryptString = URLDecoder.decode(encryptString, Constants.ENCODING);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println("解密后" + "：" + decryptString);
		}
	}

	@Test
	public void testEncrypt_03() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-27603");
		workIds.add("B-7382");
		workIds.add("B-23646");
		workIds.add("B-28708");
		workIds.add("B-32611");
		workIds.add("B-34196");
		workIds.add("B-16865");
		workIds.add("B-15550");
		workIds.add("B-28949");
		workIds.add("B-17735");
		workIds.add("B-589");
		workIds.add("B-025");
		workIds.add("B-19252");
		workIds.add("B-26026");

		for (String string : workIds) {
			String encryptString = QEncodeUtil.encrypt(string);
			System.out.println("加密后" + "：" + encryptString);

			// 浏览器会自动解码
			try {
				encryptString = URLDecoder.decode(encryptString, Constants.ENCODING);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println("解密后" + "：" + decryptString);
		}
	}

	/**
	 * new Option("[B-11332]杨作用", "Fjap6DtTbluYzY%2BHs2DjlxRy%2B0WsMKi5NZkAdaXPico%3D"),
	 */
	@Test
	public void testEncrypt_04() {
		Map<String, String> memberMap = new LinkedHashMap<String, String>();
		memberMap.put("B-27603", "胡萍萍");
		memberMap.put("B-7382", "全荃");
		memberMap.put("B-23646", "聂勤勤");
		memberMap.put("B-28708", "马兰");
		memberMap.put("B-32611", "孙娟");
		memberMap.put("B-34196", "李烜");
		memberMap.put("B-16865", "李培涛");
		memberMap.put("B-15550", "刘秋岭");
		memberMap.put("B-28949", "黄丽伟");
		memberMap.put("B-17735", "黄静");
		memberMap.put("B-589", "沈浩");
		memberMap.put("B-025", "胡亮");
		memberMap.put("B-19252", "田文谦");
		memberMap.put("B-26026", "沈志鹏");
		memberMap.put("B-29615", "陈青");
		memberMap.put("B-33966", "胡光");
		memberMap.put("B-28709", "许林");

		for (String workId : memberMap.keySet()) {
			String name = memberMap.get(workId);

			String encryptString = QEncodeUtil.encrypt(workId);
			// System.out.println("加密后" + "：" + encryptString);

			System.out.println("new Option(\"[" + workId + "]" + name + "\", \"" + encryptString + "\"), ");

			// 浏览器会自动解码
			try {
				encryptString = URLDecoder.decode(encryptString, Constants.ENCODING);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println("解密后" + "：" + decryptString);
		}

	}

	@Test
	public void testEncrypt02() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-11332");

		for (String string : workIds) {
			String encryptString = QEncodeUtil.encrypt(string);
			System.out.println("加密后" + "：" + encryptString);

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println("解密后" + "：" + decryptString);
		}
	}

	@Test
	public void testEncrypt03() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-28709");

		for (String string : workIds) {
			String encryptString = QEncodeUtil.encrypt(string);
			System.out.println("加密后" + "：" + encryptString);

			String decryptString = QEncodeUtil.decrypt(encryptString);
			System.out.println("解密后" + "：" + decryptString);
		}
	}

	@Test
	public void testDecrypt() {
		String workId = "1Dse7i7X5RLiISVIQQSb4iIra63DZ989rizk2hwjVFI=";
		String decryptString = QEncodeUtil.decrypt(workId);
		System.out.println("解密后" + "：" + decryptString);
	}

	@Test
	public void testDecrypt02() {
		String workId = "z/bT5wagRSWWJRGPXWhxa8SUNWMtvppQvsKA1Q+m77o=";
		String decryptString = QEncodeUtil.decrypt(workId);
		System.out.println("解密后" + "：" + decryptString);
	}

	@Test
	public void testDecrypt03() {
		String workId = "YhYtFdKPtIMYha7foIVoP0HtMOFjepEctoYiDSpmZOk=";
		String decryptString = QEncodeUtil.decrypt(workId);
		System.out.println("解密后" + "：" + decryptString);
	}

	@Test
	public void testDecrypt04() {
		String workId = "GTcQqU+PrDMngu3ndGyQ5v7CRnwUoNpWfHuvh5EBQ8w=";
		String decryptString = QEncodeUtil.decrypt(workId);
		System.out.println("解密后" + "：" + decryptString);
	}

}
