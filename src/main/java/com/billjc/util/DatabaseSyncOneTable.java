package com.billjc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

import org.apache.log4j.Logger;

public class DatabaseSyncOneTable {

	public static void main(String[] args) {

		DatabaseSyncOneTable databaseSync = new DatabaseSyncOneTable();
		ConnectionFactory connectionFactory = new ConnectionFactory();
		databaseSync.setConnectionFactory(connectionFactory);
		databaseSync.setSyncThreadNum(10);
		try {
			databaseSync.syncData(0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private List<String> coreTBNames; // 要同步的核心库表名
	private ConnectionFactory connectionFactory;
	private Logger log = Logger.getLogger(getClass());

	private AtomicLong currentSynCount = new AtomicLong(0L); // 当前已同步的条数

	private AtomicLong insertSynCount = new AtomicLong(0L); // 当前已同步的条数

	private AtomicLong updateSynCount = new AtomicLong(0L); // 当前已同步的条数

	private int syncThreadNum; // 同步的线程数

	public void syncData(int businessType) throws Exception {

		// log.info("开始同步核心库" + tmpTBName + "表数据");
		// 获得核心库连接
		Connection coreConnection = connectionFactory.getDMSConnection(4);
		Statement coreStmt = coreConnection.createStatement();
		// 为每个线程分配结果集
		ResultSet coreRs = coreStmt.executeQuery(
						"SELECT COUNT(*) FROM OPENQUERY( [10.100.254.101], 'select * from BJC_Finance.dbo.ISBG_Project' ) ");
		coreRs.next();
		// 总共处理的数量
		long totalNum = coreRs.getLong(1);

		// 清空表
		// Boolean coreRs3 = coreStmt.execute("DELETE FROM Project ");

		// 得到本地的ID结果集
		ResultSet coreRs2 = coreStmt.executeQuery("SELECT ID FROM Project ");
		// ID set
		Set<String> ids = new HashSet<String>();
		while (coreRs2.next()) {
			ids.add(coreRs2.getString(1));
		}
		log.info("ids.size：" + ids.size());
		// 每个线程处理的数量
		long ownerRecordNum = (long) Math.ceil((totalNum / syncThreadNum) + 1);
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

			sqlBuilder.append(
							"SELECT [ID],[ProjectNewNo],[ProjectName],[ProjectMgr_WorkID],[ProjectMgr_Name],[ProjectStartDate],[ProjectEndDate],[IsFinish],[ProState]");
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

		while (currentSynCount.get() < totalNum) {
			// System.out.println(
			// "####" + currentSynCount.get() + "\t" + totalNum);
			;
		}
		// 休眠一会儿让数据库有机会commit剩余的批处理(只针对JUnit单元测试,因为单元测试完成后会关闭虚拟器，使线程里的代码没有机会作提交操作);
		// Thread.sleep(1000 * 3);
		log.info("核心库" + "表数据同步完成，共同步了" + currentSynCount.get() + "条数据，更新 "
						+ updateSynCount.get() + "条，新增" + insertSynCount.get()
						+ "条！");
	}// end for loop

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
			Connection coreConnection = connectionFactory.getConnection();
			Statement coreStmt = coreConnection.createStatement();
			// 获得目标库连接
			Connection targetConn = connectionFactory.getConnection();
			targetConn.setAutoCommit(false);// 设置手动提交
			PreparedStatement insertPstmt = targetConn.prepareStatement(
							"INSERT INTO Project VALUES (?,?,?,?,?,?,?,?,?)");

			StringBuilder stringBuilder = new StringBuilder();
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

			PreparedStatement updatePstmt = targetConn
							.prepareStatement(stringBuilder.toString());

			// log.error(Thread.currentThread().getName() + "'s Query SQL::"
			// + queryStr);
			ResultSet coreRs = coreStmt.executeQuery(queryStr);
			// log.error("ids: " + ids);
			// for (String id : ids) {
			// log.error("id: " + id);
			// }
			int batchInsertCounter = 0; // 累加的批处理数量
			int batchUpdateCounter = 0; // 累加的批处理数量
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

				// 存在，更新记录
				if (ids.contains(coreRs.getString(1))) {
					updatePstmt.setString(1, coreRs.getString(2));
					updatePstmt.setString(2, coreRs.getString(3));
					updatePstmt.setString(3, coreRs.getString(4));
					updatePstmt.setString(4, coreRs.getString(5));
					updatePstmt.setDate(5, coreRs.getDate(6));
					updatePstmt.setDate(6, coreRs.getDate(7));
					updatePstmt.setString(7, coreRs.getString(8));
					updatePstmt.setInt(8, coreRs.getInt(9));
					updatePstmt.setString(9, coreRs.getString(1));
					updatePstmt.addBatch();
					batchUpdateCounter++;
					currentSynCount.incrementAndGet();// 递增
					updateSynCount.incrementAndGet();// 递增
					if (batchUpdateCounter % 100 == 0) { // 1万条数据一提交
						updatePstmt.executeBatch();
						updatePstmt.clearBatch();
						targetConn.commit();
					}
				} else {
					insertPstmt.setString(1, coreRs.getString(1));
					insertPstmt.setString(2, coreRs.getString(2));
					insertPstmt.setString(3, coreRs.getString(3));
					insertPstmt.setString(4, coreRs.getString(4));
					insertPstmt.setString(5, coreRs.getString(5));
					insertPstmt.setDate(6, coreRs.getDate(6));
					insertPstmt.setDate(7, coreRs.getDate(7));
					insertPstmt.setString(8, coreRs.getString(8));
					insertPstmt.setInt(9, coreRs.getInt(9));
					insertPstmt.addBatch();
					batchInsertCounter++;
					currentSynCount.incrementAndGet();// 递增
					insertSynCount.incrementAndGet();// 递增
					if (batchInsertCounter % 100 == 0) { // 1万条数据一提交
						insertPstmt.executeBatch();
						insertPstmt.clearBatch();
						targetConn.commit();
					}
				}
			}
			// 提交剩余的批处理
			updatePstmt.executeBatch();
			updatePstmt.clearBatch();
			// 提交剩余的批处理
			insertPstmt.executeBatch();
			insertPstmt.clearBatch();
			targetConn.commit();

			// 释放连接
			connectionFactory.release(targetConn, updatePstmt, coreRs);
			connectionFactory.release(targetConn, insertPstmt, coreRs);
		}
	}
}