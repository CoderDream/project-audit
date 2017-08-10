package com.billjc.util;

/**  
 * Project Name:thread  
 * File Name:MD5Util.java  
 * Package Name:enc.dec  
 * Date:2015年10月21日下午3:58:02  
 * Copyright (c) 2015, chiwei@chinamobile.com All Rights Reserved.  
 *  
 */

import java.security.MessageDigest;

/**
 * ClassName:MD5Util <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason: TODO ADD REASON. <br/>
 * Date: 2015年10月21日 下午3:58:02 <br/>
 * 
 * @author chiwei
 * @version
 * @since JDK 1.6
 * @see
 */
public class MD5Util {

	public static String getMD5(String source) {
		String s = null;
		char[] hexChar = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(source.getBytes());// 使用指定的byte数组更新摘要
			byte[] hashCalc = md.digest();// 完成哈希计算
			char[] result = new char[16 * 2];// MD5结果返回的是32位字符串，每位是16进制表示的
			int k = 0;
			for (int i = 0; i < 16; i++) {// 循环16次，对每个字节进行操作转换
				byte everyByte = hashCalc[i];
				result[k++] = hexChar[everyByte >>> 4 & 0xf];// 对每个字节的高4位进行处理，逻辑右移，再相与
				result[k++] = hexChar[everyByte & 0xf];// 低4位转换
			}
			s = new String(result);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return s;
	}

	public static void main(String[] args) {
		System.out.println(getMD5("tree"));
	}

}
