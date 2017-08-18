package com.billjc.job;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.billjc.util.Constants;

public class TestJob extends QuartzJobBean {

	@Override
	protected void executeInternal(JobExecutionContext arg0)
					throws JobExecutionException {
		Date today = new Date();
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		System.out.println(sf.format(today));
	}
}