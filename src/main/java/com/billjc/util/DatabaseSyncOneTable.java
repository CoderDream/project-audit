package com.billjc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

import org.apache.log4j.Logger;

public class DatabaseSyncOneTable {

	public static void main(String[] args) {

		DatabaseSyncOneTable databaseSync = new DatabaseSyncOneTable();
		databaseSync.setSyncThreadNum(5);
		try {
			databaseSync.syncData(0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Logger log = Logger.getLogger(getClass());

	private AtomicLong currentSynCount = new AtomicLong(0L); // 当前已同步的条数

	private int syncThreadNum; // 同步的线程数

	public void syncData(int businessType) throws Exception {

		// log.info("开始同步核心库" + tmpTBName + "表数据");
		// 获得核心库连接
		Connection coreConnection = ConnectionFactory.getConnection();
		Statement coreStmt = coreConnection.createStatement();
		// 为每个线程分配结果集
		ResultSet coreRs = coreStmt.executeQuery(
						"SELECT COUNT(*) FROM OPENQUERY( [10.100.254.101], 'select * from BJC_Finance.dbo.ISBG_Project' ) ");

		coreRs.next();
		// 总共处理的数量
		long totalNum = coreRs.getLong(1);
		

		// 清空表
		Boolean coreRs3 = coreStmt.execute("DELETE FROM Project ");

		// 得到本地的ID结果集
		ResultSet coreRs2 = coreStmt.executeQuery("SELECT ID FROM Project ");
		// ID set
		Set<String> ids = new HashSet<String>();
		while (coreRs2.next()) {
			ids.add(coreRs2.getString(1));
		}
		log.info("ids.size：" + ids.size());
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
			// sqlBuilder.append(
			// "SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY id ASC) AS
			// rowNumber, * FROM T_Users) AS temp WHERE rowNumber BETWEEN ")
			// .append(i * ownerRecordNum + 1).append(" And ")
			// .append((i * ownerRecordNum + ownerRecordNum));

			sqlBuilder.append("SELECT ");
			sqlBuilder.append("[ID],");
			sqlBuilder.append("[ProjectNo],");
			sqlBuilder.append("[ProjectName],");
			sqlBuilder.append("[ProjectMgr_WorkID],");
			sqlBuilder.append("[ProjectMgr_Name],");
			sqlBuilder.append("[ProjectStartDateTime],");
			sqlBuilder.append("[ProjectEndDateTime],");
			sqlBuilder.append("[IsFinish],");
			sqlBuilder.append("[ProState] ");
			sqlBuilder.append("FROM ");
			sqlBuilder.append("(");
			sqlBuilder.append("  SELECT ROW_NUMBER( ) OVER( ORDER BY id ASC )");
			sqlBuilder.append("  AS rowNumber,");
			sqlBuilder.append("         *");
			sqlBuilder.append("  FROM");
			sqlBuilder.append("  (");
			sqlBuilder.append("    SELECT *");
			sqlBuilder.append(
							"    FROM OPENQUERY( [10.100.254.101], 'SELECT * FROM BJC_Finance.dbo.ISBG_Project' )");
			sqlBuilder.append("  )");
			sqlBuilder.append(" AS A");
			sqlBuilder.append(")");
			sqlBuilder.append(" AS B");
			sqlBuilder.append(" WHERE rowNumber BETWEEN ");
			sqlBuilder.append(i * ownerRecordNum + 1).append(" AND ");
			sqlBuilder.append((i * ownerRecordNum + ownerRecordNum));

			log.error("sql: " + sqlBuilder.toString());
			Thread workThread = new Thread(
							new WorkerHandler(sqlBuilder.toString(), ids));
			workThread.setName("SyncThread-" + i);
			workThread.start();
		}
		while (currentSynCount.get() < totalNum)
			;
		// 休眠一会儿让数据库有机会commit剩余的批处理(只针对JUnit单元测试,因为单元测试完成后会关闭虚拟器，使线程里的代码没有机会作提交操作);
		// Thread.sleep(1000 * 3);
		log.info("核心库" + "表数据同步完成，共同步了" + currentSynCount.get() + "条数据");
	}// end for loop

	public void setSyncThreadNum(int syncThreadNum) {
		this.syncThreadNum = syncThreadNum;
	}

	// 数据同步线程
	final class WorkerHandler implements Runnable {
		ResultSet coreRs;
		String queryStr;
		Set<String> ids;

		public WorkerHandler(String queryStr, Set<String> ids) {
			this.queryStr = queryStr;
			this.ids = ids;
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
			Connection coreConnection = ConnectionFactory.getConnection();
			Statement coreStmt = coreConnection.createStatement();
			// 获得目标库连接
			Connection targetConn = ConnectionFactory.getConnection();
			targetConn.setAutoCommit(false);// 设置手动提交
			PreparedStatement targetPstmt = targetConn.prepareStatement(
							"INSERT INTO Project VALUES (?,?,?,?,?,?,?,?,?)");
			log.error(Thread.currentThread().getName() + "'s Query SQL::"
							+ queryStr);
			ResultSet coreRs = coreStmt.executeQuery(queryStr);
			log.error("ids: " + ids);
			for (String id : ids) {
				log.error("id: " + id);
			}
			int batchCounter = 0; // 累加的批处理数量
			while (coreRs.next()) {
				// [ID] varchar(250) NOT NULL ,
				// [ProjectNo] varchar(250) NULL ,
				// [ProjectName] varchar(250) NULL ,
				// [ProjectMgr_WorkID] varchar(250) NULL ,
				// [ProjectMgr_Name] varchar(250) NULL ,
				// [ProjectStartDate] datetime NULL ,
				// [ProjectEndDate] datetime NULL ,
				// [IsFinish] [bit] NULL,
				// [ProState] varchar(50) NULL
				targetPstmt.setString(1, coreRs.getString(1));
				targetPstmt.setString(2, coreRs.getString(2));
				targetPstmt.setString(3, coreRs.getString(3));
				targetPstmt.setString(4, coreRs.getString(4));
				targetPstmt.setString(5, coreRs.getString(5));
				targetPstmt.setDate(6, coreRs.getDate(6));
				targetPstmt.setDate(7, coreRs.getDate(7));
				targetPstmt.setString(8, coreRs.getString(8));
				targetPstmt.setInt(9, coreRs.getInt(9));
				targetPstmt.addBatch();
				batchCounter++;
				currentSynCount.incrementAndGet();// 递增
				if (batchCounter % 1000 == 0) { // 1万条数据一提交
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
			ConnectionFactory.release(targetConn, targetPstmt, coreRs);
		}

		// 同步数据方法
		void launchSyncDataBackup() throws Exception {
			// 获得核心库连接
			Connection coreConnection = ConnectionFactory.getConnection();
			Statement coreStmt = coreConnection.createStatement();
			// 获得目标库连接
			Connection targetConn = ConnectionFactory.getConnection();
			targetConn.setAutoCommit(false);// 设置手动提交
			PreparedStatement targetPstmt = null;
			log.error(Thread.currentThread().getName() + "'s Query SQL::"
							+ queryStr);
			ResultSet coreRs = coreStmt.executeQuery(queryStr);
			log.error("ids: " + ids);
			for (String id : ids) {
				log.error("id: " + id);
			}
			int batchCounter = 0; // 累加的批处理数量
			while (coreRs.next()) {
				StringBuilder stringBuilder = new StringBuilder();
				// 存在，更新记录
				if (ids.contains(coreRs.getString(9))) {
					stringBuilder.append("UPDATE Project SET ");
					stringBuilder.append("[Project_No]=?");
					stringBuilder.append(",[Project_Name]=?");
					stringBuilder.append(",[Project_Mgr_Work_ID]=?");
					stringBuilder.append(",[Project_Mgr_Name]=?");
					stringBuilder.append(",[Project_Start_Date]=?");
					stringBuilder.append(",[Project_End_Date]=?");
					stringBuilder.append(",[Is_Finish]=?");
					stringBuilder.append(",[Pro_State]=?");
					stringBuilder.append(" WHERE [ID]=?");
				}
				// 不存在，插入记录
				else {
					stringBuilder.append("INSERT INTO Project (");
					stringBuilder.append("[Project_No]");
					stringBuilder.append(",[Project_Name]");
					stringBuilder.append(",[Project_Mgr_Work_ID]");
					stringBuilder.append(",[Project_Mgr_Name]");
					stringBuilder.append(",[Project_Start_Date]");
					stringBuilder.append(",[Project_End_Date]");
					stringBuilder.append(",[Is_Finish]");
					stringBuilder.append(",[Pro_State]");
					stringBuilder.append(",[ID]");
					stringBuilder.append(")");
					stringBuilder.append(" VALUES (?,?,?,?,?,?,?,?,?)");
				}

				log.error(Thread.currentThread().getName() + "'s Query SQL::"
								+ stringBuilder.toString());
				targetPstmt = targetConn
								.prepareStatement(stringBuilder.toString());
				// [ID] varchar(250) NOT NULL ,
				// [ProjectNo] varchar(250) NULL ,
				// [ProjectName] varchar(250) NULL ,
				// [ProjectMgr_WorkID] varchar(250) NULL ,
				// [ProjectMgr_Name] varchar(250) NULL ,
				// [ProjectStartDate] datetime NULL ,
				// [ProjectEndDate] datetime NULL ,
				// [IsFinish] [bit] NULL,
				// [ProState] varchar(50) NULL
				targetPstmt.setString(1, coreRs.getString(1));
				targetPstmt.setString(2, coreRs.getString(2));
				targetPstmt.setString(3, coreRs.getString(3));
				targetPstmt.setString(4, coreRs.getString(4));
				targetPstmt.setDate(5, coreRs.getDate(5));
				targetPstmt.setDate(6, coreRs.getDate(6));
				targetPstmt.setString(7, coreRs.getString(7));
				targetPstmt.setInt(8, coreRs.getInt(8));
				targetPstmt.setString(9, coreRs.getString(9));
				targetPstmt.addBatch();
				batchCounter++;
				currentSynCount.incrementAndGet();// 递增
				if (batchCounter % 1000 == 0) { // 1万条数据一提交
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
			ConnectionFactory.release(targetConn, targetPstmt, coreRs);
		}
	}
}