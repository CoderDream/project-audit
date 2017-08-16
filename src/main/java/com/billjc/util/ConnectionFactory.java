package com.billjc.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class ConnectionFactory {

	public Connection getDMSConnection(int i) {
		Properties prop = new Properties();// 属性集合对象
		InputStream fis;
		try {
			fis = ConnectionFactory.class.getClassLoader()
							.getResourceAsStream("jdbc.properties");
			prop.load(fis);// 将属性文件流装载到Properties对象中
		} catch (Exception e1) {
			e1.printStackTrace();
		} // 属性文件流

		String username = prop.getProperty("jdbc.username");
		String password = prop.getProperty("jdbc.password");
		String url = prop.getProperty("jdbc.url");// 使用从库的域名
		String driver = prop.getProperty("jdbc.driverClassName");
		Connection con = null;
		try {
			Class.forName(driver).newInstance();
			// con = DriverManager.getConnection(url +
			// "?useServerPrepStmts=true", username, password);
			// con = DriverManager.getConnection(url +
			// "?useUnicode=true&characterEncoding=utf8", username, password);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public void release(Connection con, PreparedStatement ps, ResultSet rs) {
		try {
			if (null != con) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			if (null != ps) {
				ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			if (null != rs) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	/**
	 * @return
	 */
	public Connection getConnection() {
		Properties prop = new Properties();// 属性集合对象
		InputStream fis;
		try {
			fis = ConnectionFactory.class.getClassLoader()
							.getResourceAsStream("jdbc.properties");
			prop.load(fis);// 将属性文件流装载到Properties对象中
		} catch (Exception e1) {
			e1.printStackTrace();
		} // 属性文件流

		String username = prop.getProperty("jdbc.username");
		String password = prop.getProperty("jdbc.password");
		String url = prop.getProperty("jdbc.url");// 使用从库的域名
		String driver = prop.getProperty("jdbc.driverClassName");
		Connection con = null;
		try {
			Class.forName(driver).newInstance();
			// con = DriverManager.getConnection(url +
			// "?useServerPrepStmts=true", username, password);
			// con = DriverManager.getConnection(url +
			// "?useUnicode=true&characterEncoding=utf8", username, password);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void main(String[] args) {
		Statement st = null;
		ResultSet rs = null;

		Connection con = null;
		try {
			ConnectionFactory connectionFactory = new ConnectionFactory();
			con = connectionFactory.getConnection();
			st = con.createStatement();
			String sql = "SELECT * from openquery([10.100.254.101],'select * from BJC_Finance.dbo.ISBG_Project')";
			rs = st.executeQuery(sql);
			while (rs.next()) {
				System.out.print(",ID=" + rs.getString("ID"));
				System.out.print(",ParentID=" + rs.getString("ParentID"));
				System.out.print(",ProjectNo=" + rs.getString("ProjectNo"));
				System.out.print(",ProjectName=" + rs.getString("ProjectName"));
				System.out.print(",ProjectMgr_WorkID="
								+ rs.getString("ProjectMgr_WorkID"));
				System.out.print(",ProjectMgr_Name="
								+ rs.getString("ProjectMgr_Name"));
				System.out.print(",Company=" + rs.getString("Company"));
				System.out.print(",DepartmentID="
								+ rs.getString("DepartmentID"));
				System.out.print(",DepartmentName="
								+ rs.getString("DepartmentName"));
				System.out.print(",OEProList=" + rs.getString("OEProList"));
				System.out.print(",ProjectType=" + rs.getString("ProjectType"));
				System.out.print(",ProjectSubType="
								+ rs.getString("ProjectSubType"));
				System.out.print(",ProjectStartDate="
								+ rs.getString("ProjectStartDate"));
				System.out.print(",ProjectEndDate="
								+ rs.getString("ProjectEndDate"));
				System.out.print(",CustomerNo=" + rs.getString("CustomerNo"));
				System.out.print(",CustomerName="
								+ rs.getString("CustomerName"));
				System.out.print(",CustomerDep=" + rs.getString("CustomerDep"));
				System.out.print(",ProductFamilyName="
								+ rs.getString("ProductFamilyName"));
				System.out.print(",ProductName=" + rs.getString("ProductName"));
				System.out.print(",Technology=" + rs.getString("Technology"));
				System.out.print(",DeliveryType="
								+ rs.getString("DeliveryType"));
				System.out.print(",CustomerPM=" + rs.getString("CustomerPM"));
				System.out.print(",BU_Manager=" + rs.getString("BU_Manager"));
				System.out.print(",PersonTotal=" + rs.getString("PersonTotal"));
				System.out.print(",CooperationType="
								+ rs.getString("CooperationType"));
				System.out.print(",OBDORPPC=" + rs.getString("OBDORPPC"));
				System.out.print(",WIP=" + rs.getString("WIP"));
				System.out.print(",stock=" + rs.getString("stock"));
				System.out.print(",ProState=" + rs.getString("ProState"));
				System.out.print(",isJump=" + rs.getString("isJump"));
				System.out.print(",ProComputerTime="
								+ rs.getString("ProComputerTime"));
				System.out.print(",CreateWorkID="
								+ rs.getString("CreateWorkID"));
				System.out.print(",BU_Manager_WorkID="
								+ rs.getString("BU_Manager_WorkID"));
				System.out.print(",BU_Manager_Name="
								+ rs.getString("BU_Manager_Name"));
				System.out.print(",Pro_ThreeDepartmentID="
								+ rs.getString("Pro_ThreeDepartmentID"));
				System.out.print(",Pro_ThreeDepartmentName="
								+ rs.getString("Pro_ThreeDepartmentName"));
				System.out.print(",Pro_FourDepartmentID="
								+ rs.getString("Pro_FourDepartmentID"));
				System.out.print(",Pro_FourDepartmentName="
								+ rs.getString("Pro_FourDepartmentName"));
				System.out.print(",ClientProductPM="
								+ rs.getString("ClientProductPM"));
				System.out.print(",ClientProjectPM="
								+ rs.getString("ClientProjectPM"));
				System.out.print(",BJCProductPMWork_ID="
								+ rs.getString("BJCProductPMWork_ID"));
				System.out.print(",BJCProductPMName="
								+ rs.getString("BJCProductPMName"));
				System.out.print(",QAWork_ID=" + rs.getString("QAWork_ID"));
				System.out.print(",QAName=" + rs.getString("QAName"));
				System.out.print(",ProjectType2="
								+ rs.getString("ProjectType2"));
				System.out.print(",ProjectTechnosphere="
								+ rs.getString("ProjectTechnosphere"));
				System.out.print(",ProjectStartDateTime="
								+ rs.getString("ProjectStartDateTime"));
				System.out.print(",ProjectEndDateTime="
								+ rs.getString("ProjectEndDateTime"));
				System.out.print(",DeliveryAddress="
								+ rs.getString("DeliveryAddress"));
				System.out.print(",ISQASupport=" + rs.getString("ISQASupport"));
				System.out.print(",WorkEvaluate="
								+ rs.getString("WorkEvaluate"));
				System.out.print(",DemandRange=" + rs.getString("DemandRange"));
				System.out.print(",ProStatePPC=" + rs.getString("ProStatePPC"));
				System.out.print(",isJumpPPC=" + rs.getString("isJumpPPC"));
				System.out.print(",BudgetCustomerNO="
								+ rs.getString("BudgetCustomerNO"));
				System.out.print(",BudgetCustomerName="
								+ rs.getString("BudgetCustomerName"));
				System.out.print(",OEProjectNO=" + rs.getString("OEProjectNO"));
				System.out.print(",OEProjectName="
								+ rs.getString("OEProjectName"));
				System.out.print(",EntryDate=" + rs.getString("EntryDate"));
				System.out.print(",BeProduct=" + rs.getString("BeProduct"));
				System.out.print(",BeProductName="
								+ rs.getString("BeProductName"));
				System.out.print(",IsOtherplace="
								+ rs.getString("IsOtherplace"));
				System.out.print(",TeamSize=" + rs.getString("TeamSize"));
				System.out.print(",CalendarID=" + rs.getString("CalendarID"));
				System.out.print(",CalendarName="
								+ rs.getString("CalendarName"));
				System.out.print(",CreateName=" + rs.getString("CreateName"));
				System.out.print(",CreateDate=" + rs.getString("CreateDate"));
				System.out.print(",DeliveryCity="
								+ rs.getString("DeliveryCity"));
				System.out.print(",DeliveryCityID="
								+ rs.getString("DeliveryCityID"));
				System.out.print(",AreaType=" + rs.getString("AreaType"));
				System.out.print(",IsSite=" + rs.getString("IsSite"));
				System.out.print(",IsFinish=" + rs.getString("IsFinish"));
				System.out.print(",EndName=" + rs.getString("EndName"));
				System.out.print(",ProjectAK=" + rs.getString("ProjectAK"));
				System.out.print(",IsOrder=" + rs.getString("IsOrder"));
				System.out.print(",OrderDate=" + rs.getString("OrderDate"));
				System.out.print(",OrderMoney=" + rs.getString("OrderMoney"));
				System.out.print(",ApplicationDate="
								+ rs.getString("ApplicationDate"));
				System.out.print(",ProjectDescr="
								+ rs.getString("ProjectDescr"));
				System.out.print(",ProjectTypes="
								+ rs.getString("ProjectTypes"));
				System.out.print(",ContractNo=" + rs.getString("ContractNo"));
				System.out.print(",ContractName="
								+ rs.getString("ContractName"));
				System.out.print(",ReadyType=" + rs.getString("ReadyType"));
				System.out.print(",FirstCustomNo="
								+ rs.getString("FirstCustomNo"));
				System.out.print(",FirstCustomName="
								+ rs.getString("FirstCustomName"));
				System.out.print(",SecondCustomNo="
								+ rs.getString("SecondCustomNo"));
				System.out.print(",SecondCustomName="
								+ rs.getString("SecondCustomName"));
				System.out.print(",ThirdCustomNo="
								+ rs.getString("ThirdCustomNo"));
				System.out.print(",ThirdCustomName="
								+ rs.getString("ThirdCustomName"));
				System.out.print(",LevelName=" + rs.getString("LevelName"));
				System.out.print(",IsOld=" + rs.getString("IsOld"));
				System.out.print(",IsContinue=" + rs.getString("IsContinue"));
				System.out.print(",ProjectNewNo="
								+ rs.getString("ProjectNewNo"));
				System.out.print(",BaseType=" + rs.getString("BaseType"));
				System.out.print(",OverTimePayTimes="
								+ rs.getString("OverTimePayTimes"));
				System.out.print(",PDRC=" + rs.getString("PDRC"));
				System.out.print(",PlanIncome=" + rs.getString("PlanIncome"));
				System.out.print(",PlanCost=" + rs.getString("PlanCost"));
				System.out.print(",SubcontractorIncome="
								+ rs.getString("SubcontractorIncome"));
				System.out.print(",SubcontractorCost="
								+ rs.getString("SubcontractorCost"));
				System.out.print(",IsTestProject="
								+ rs.getString("IsTestProject"));
				System.out.print(",PD_DepartID=" + rs.getString("PD_DepartID"));
				System.out.print(",PD_DepartName="
								+ rs.getString("PD_DepartName"));
				System.out.print(",MajorIncome=" + rs.getString("MajorIncome"));
				System.out.print(",MajorCost=" + rs.getString("MajorCost"));
				System.out.print(",PassThroughIncome="
								+ rs.getString("PassThroughIncome"));
				System.out.print(",PassThroughCost="
								+ rs.getString("PassThroughCost"));
				System.out.print(",TravelIncome="
								+ rs.getString("TravelIncome"));
				System.out.print(",TravelCost=" + rs.getString("TravelCost"));
				System.out.print(",AdvanceIncome="
								+ rs.getString("AdvanceIncome"));
				System.out.print(",AdvanceCost=" + rs.getString("AdvanceCost"));
				System.out.print(",SubsidyIncome="
								+ rs.getString("SubsidyIncome"));
				System.out.print(",SubsidyCost=" + rs.getString("SubsidyCost"));
				System.out.print(",AttachIncome="
								+ rs.getString("AttachIncome"));
				System.out.print(",AttachCost=" + rs.getString("AttachCost"));
				System.out.print(",InnerSubContractCount="
								+ rs.getString("InnerSubContractCount"));
				System.out.print(",InnerSubContractTotalCost="
								+ rs.getString("InnerSubContractTotalCost"));
				System.out.print(",ContractProjectId="
								+ rs.getString("ContractProjectId"));

				System.out.println("");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
			} catch (Exception e) {
			}

			try {
				st.close();
			} catch (Exception e) {
			}

			try {
				con.close();
			} catch (Exception e) {
			}
		}
	}

	public static void close(Connection con) {
		try {
			if (null != con) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(PreparedStatement ps) {
		try {
			if (null != ps) {
				ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs) {
		try {
			if (null != rs) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
