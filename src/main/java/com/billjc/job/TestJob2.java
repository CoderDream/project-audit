package com.billjc.job;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.billjc.util.Constants;

public class TestJob2 {
	public void doSomething() {
		Date today = new Date();
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		System.out.println("doSomething: " + sf.format(today));
	}
}
