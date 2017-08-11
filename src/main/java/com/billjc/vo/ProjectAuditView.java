package com.billjc.vo;

import java.util.Date;
import java.util.List;

public class ProjectAuditView {
	private String id;

	private Integer auditTypeId;

	private String auditName;

	private Integer auditState;

	private String auditStateString;

	private String auditWorkId;

	private String auditStaffName;

	private String auditContent;

	private Date auditCreateDate;

	private String auditCreateDateString;

	private String projectId;

	private String projectName;

	private String projectmgrWorkId;

	private String projectmgrName;

	private String projectStartDateString;

	private String projectEndDateString;

	private String projectStateString;

	/** 目标合理性 */
	private List<ProjectAuditView> reasonableObjectives;

	/** 操作规范性 */
	private List<ProjectAuditView> operationStandards;

	/** 数据准确性 */
	private List<ProjectAuditView> accurateDatas;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getAuditTypeId() {
		return auditTypeId;
	}

	public void setAuditTypeId(Integer auditTypeId) {
		this.auditTypeId = auditTypeId;
	}

	public String getAuditName() {
		return auditName;
	}

	public void setAuditName(String auditName) {
		this.auditName = auditName;
	}

	public Integer getAuditState() {
		return auditState;
	}

	public void setAuditState(Integer auditState) {
		this.auditState = auditState;
	}

	public String getAuditStateString() {
		return auditStateString;
	}

	public void setAuditStateString(String auditStateString) {
		this.auditStateString = auditStateString;
	}

	public String getAuditWorkId() {
		return auditWorkId;
	}

	public void setAuditWorkId(String auditWorkId) {
		this.auditWorkId = auditWorkId;
	}

	public String getAuditStaffName() {
		return auditStaffName;
	}

	public void setAuditStaffName(String auditStaffName) {
		this.auditStaffName = auditStaffName;
	}

	public String getAuditContent() {
		return auditContent;
	}

	public void setAuditContent(String auditContent) {
		this.auditContent = auditContent;
	}

	public Date getAuditCreateDate() {
		return auditCreateDate;
	}

	public void setAuditCreateDate(Date auditCreateDate) {
		this.auditCreateDate = auditCreateDate;
	}

	public String getAuditCreateDateString() {
		return auditCreateDateString;
	}

	public void setAuditCreateDateString(String auditCreateDateString) {
		this.auditCreateDateString = auditCreateDateString;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getProjectmgrWorkId() {
		return projectmgrWorkId;
	}

	public void setProjectmgrWorkId(String projectmgrWorkId) {
		this.projectmgrWorkId = projectmgrWorkId;
	}

	public String getProjectmgrName() {
		return projectmgrName;
	}

	public void setProjectmgrName(String projectmgrName) {
		this.projectmgrName = projectmgrName;
	}

	public String getProjectStartDateString() {
		return projectStartDateString;
	}

	public void setProjectStartDateString(String projectStartDateString) {
		this.projectStartDateString = projectStartDateString;
	}

	public String getProjectEndDateString() {
		return projectEndDateString;
	}

	public void setProjectEndDateString(String projectEndDateString) {
		this.projectEndDateString = projectEndDateString;
	}

	public String getProjectStateString() {
		return projectStateString;
	}

	public void setProjectStateString(String projectStateString) {
		this.projectStateString = projectStateString;
	}

	public List<ProjectAuditView> getReasonableObjectives() {
		return reasonableObjectives;
	}

	public void setReasonableObjectives(List<ProjectAuditView> reasonableObjectives) {
		this.reasonableObjectives = reasonableObjectives;
	}

	public List<ProjectAuditView> getOperationStandards() {
		return operationStandards;
	}

	public void setOperationStandards(List<ProjectAuditView> operationStandards) {
		this.operationStandards = operationStandards;
	}

	public List<ProjectAuditView> getAccurateDatas() {
		return accurateDatas;
	}

	public void setAccurateDatas(List<ProjectAuditView> accurateDatas) {
		this.accurateDatas = accurateDatas;
	}

	@Override
	public String toString() {
		return "ProjectAuditView [id=" + id + ", auditTypeId=" + auditTypeId + ", auditName=" + auditName + ", auditState=" + auditState
				+ ", auditStateString=" + auditStateString + ", auditWorkId=" + auditWorkId + ", auditStaffName=" + auditStaffName + ", auditContent="
						+ auditContent + ", auditCreateDate=" + auditCreateDate + ", auditCreateDateString="
						+ auditCreateDateString + ", projectId=" + projectId + ", projectName="
				+ projectName + ", projectStartDateString=" + projectStartDateString + ", projectEndDateString=" + projectEndDateString
				+ ", projectStateString=" + projectStateString + ", reasonableObjectives=" + reasonableObjectives + ", operationStandards="
				+ operationStandards + ", accurateDatas=" + accurateDatas + "]";
	}

}