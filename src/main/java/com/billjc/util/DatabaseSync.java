package com.billjc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.apache.log4j.Logger;

public class DatabaseSync {
	
	public static void main(String[] args) {
		
		DatabaseSync databaseSync  = new DatabaseSync();
		List<String> coreTBNames = new ArrayList<String>();
		coreTBNames.add("ISBG_Project");
		databaseSync.setCoreTBNames(coreTBNames);
		ConnectionFactory connectionFactory = new ConnectionFactory();
		databaseSync.setConnectionFactory(connectionFactory);
		databaseSync.setSyncThreadNum(5);
		
	}

	private List<String> coreTBNames; // 要同步的核心库表名
	private ConnectionFactory connectionFactory;
	private Logger log = Logger.getLogger(getClass());

	private AtomicLong currentSynCount = new AtomicLong(0L); // 当前已同步的条数

	private int syncThreadNum; // 同步的线程数

	public void syncData(int businessType) throws Exception {

		for (String tmpTBName : coreTBNames) {
			log.info("开始同步核心库" + tmpTBName + "表数据");
			// 获得核心库连接
			Connection coreConnection = connectionFactory.getDMSConnection(4);
			Statement coreStmt = coreConnection.createStatement();
			// 为每个线程分配结果集
			ResultSet coreRs = coreStmt
							.executeQuery("SELECT count(*) FROM " + tmpTBName);
			coreRs.next();
			// 总共处理的数量
			long totalNum = coreRs.getLong(1);
			// 每个线程处理的数量
			long ownerRecordNum = (long) Math.ceil((totalNum / syncThreadNum));
			log.info("共需要同步的数据量：" + totalNum);
			log.info("同步线程数量：" + syncThreadNum);
			log.info("每个线程可处理的数量：" + ownerRecordNum);
			// 开启五个线程向目标库同步数据
			for (int i = 0; i < syncThreadNum; i++) {
				StringBuilder sqlBuilder = new StringBuilder();
				// 拼装后SQL示例
				// Select * From dms_core_ds Where id between 1 And 657398
				// Select * From dms_core_ds Where id between 657399 And
				// 1314796
				// Select * From dms_core_ds Where id between 1314797 And
				// 1972194
				// Select * From dms_core_ds Where id between 1972195 And
				// 2629592
				// Select * From dms_core_ds Where id between 2629593 And
				// 3286990
				// ..
				sqlBuilder.append("Select * From ").append(tmpTBName)
								.append(" Where id between ")
								.append(i * ownerRecordNum + 1).append(" And ")
								.append((i * ownerRecordNum + ownerRecordNum));
				Thread workThread = new Thread(
								new WorkerHandler(sqlBuilder.toString(),
												businessType, tmpTBName));
				workThread.setName("SyncThread-" + i);
				workThread.start();
			}
			while (currentSynCount.get() < totalNum)
				;
			// 休眠一会儿让数据库有机会commit剩余的批处理(只针对JUnit单元测试,因为单元测试完成后会关闭虚拟器，使线程里的代码没有机会作提交操作);
			// Thread.sleep(1000 * 3);
			log.info("核心库" + tmpTBName + "表数据同步完成，共同步了" + currentSynCount.get()
							+ "条数据");
		}
	}// end for loop

	public void setCoreTBNames(List<String> coreTBNames) {
		this.coreTBNames = coreTBNames;
	}

	public void setConnectionFactory(ConnectionFactory connectionFactory) {
		this.connectionFactory = connectionFactory;
	}

	public void setSyncThreadNum(int syncThreadNum) {
		this.syncThreadNum = syncThreadNum;
	}

	// 数据同步线程
	final class WorkerHandler implements Runnable {
		ResultSet coreRs;
		String queryStr;
		int businessType;
		String targetTBName;

		public WorkerHandler(String queryStr, int businessType,
						String targetTBName) {
			this.queryStr = queryStr;
			this.businessType = businessType;
			this.targetTBName = targetTBName;
		}

		@Override
		public void run() {
			try {
				// 开始同步
				launchSyncData();
			} catch (Exception e) {
				log.error(e);
				e.printStackTrace();
			}
		}

		// 同步数据方法
		void launchSyncData() throws Exception {
			// 获得核心库连接
			Connection coreConnection = connectionFactory.getDMSConnection(4);
			Statement coreStmt = coreConnection.createStatement();
			// 获得目标库连接
			Connection targetConn = connectionFactory
							.getDMSConnection(businessType);
			targetConn.setAutoCommit(false);// 设置手动提交
			PreparedStatement targetPstmt = targetConn
							.prepareStatement("INSERT INTO " + targetTBName
											+ " VALUES (?,?,?,?,?)");
			ResultSet coreRs = coreStmt.executeQuery(queryStr);
			log.info(Thread.currentThread().getName() + "'s Query SQL::"
							+ queryStr);
			int batchCounter = 0; // 累加的批处理数量
			while (coreRs.next()) {
				targetPstmt.setString(1, coreRs.getString(2));
				targetPstmt.setString(2, coreRs.getString(3));
				targetPstmt.setString(3, coreRs.getString(4));
				targetPstmt.setString(4, coreRs.getString(5));
				targetPstmt.setString(5, coreRs.getString(6));
				targetPstmt.addBatch();
				batchCounter++;
				currentSynCount.incrementAndGet();// 递增
				if (batchCounter % 10000 == 0) { // 1万条数据一提交
					targetPstmt.executeBatch();
					targetPstmt.clearBatch();
					targetConn.commit();
				}
			}
			// 提交剩余的批处理
			targetPstmt.executeBatch();
			targetPstmt.clearBatch();
			targetConn.commit();
			// 释放连接
			connectionFactory.release(targetConn, targetPstmt, coreRs);
		}
	}
}