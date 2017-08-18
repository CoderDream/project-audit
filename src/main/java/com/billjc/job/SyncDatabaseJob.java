package com.billjc.job;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.billjc.util.ConnectionFactory;
import com.billjc.util.Constants;
import com.billjc.util.DatabaseSyncOneTable;

public class SyncDatabaseJob {
	
	public void syncDatabase() {
		Date today = new Date();
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		System.out.println("doSomething: " + sf.format(today));
		
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
