package com.billjc.job;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.billjc.util.ConnectionFactory;
import com.billjc.util.Constants;
import com.billjc.util.DatabaseSyncOneTable;

public class SyncDatabaseJob {

	private static Logger logger = LoggerFactory
					.getLogger(SyncDatabaseJob.class);

	public void syncDatabase() {
		Date today = new Date();
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		logger.debug("syncDatabase at: " + sf.format(today));

		DatabaseSyncOneTable databaseSync = new DatabaseSyncOneTable();
		ConnectionFactory connectionFactory = new ConnectionFactory();
		databaseSync.setConnectionFactory(connectionFactory);
		databaseSync.setSyncThreadNum(10);
		try {
			databaseSync.syncData(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
