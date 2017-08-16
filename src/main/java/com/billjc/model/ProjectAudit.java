package com.billjc.model;

import java.util.Date;

public class ProjectAudit {
	private String id;

	/**
	 * 
	 */
	private Integer auditTypeId;

	private Integer auditState;

	private String auditWorkId;

	private String auditContent;

	private Date auditCreateDate;

	private String projectId;

	private Date auditUpdateDate;

	private Integer deleteFlag;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public Integer getAuditTypeId() {
		return auditTypeId;
	}

	public void setAuditTypeId(Integer auditTypeId) {
		this.auditTypeId = auditTypeId;
	}

	public Integer getAuditState() {
		return auditState;
	}

	public void setAuditState(Integer auditState) {
		this.auditState = auditState;
	}

	public String getAuditWorkId() {
		return auditWorkId;
	}

	public void setAuditWorkId(String auditWorkId) {
		this.auditWorkId = auditWorkId == null ? null : auditWorkId.trim();
	}

	public String getAuditContent() {
		return auditContent;
	}

	public void setAuditContent(String auditContent) {
		this.auditContent = auditContent == null ? null : auditContent.trim();
	}

	public Date getAuditCreateDate() {
		return auditCreateDate;
	}

	public void setAuditCreateDate(Date auditCreateDate) {
		this.auditCreateDate = auditCreateDate;
	}

	public String getProjectId() {
		return projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId == null ? null : projectId.trim();
	}

	public Date getAuditUpdateDate() {
		return auditUpdateDate;
	}

	public void setAuditUpdateDate(Date auditUpdateDate) {
		this.auditUpdateDate = auditUpdateDate;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

}