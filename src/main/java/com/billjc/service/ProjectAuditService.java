package com.billjc.service;

import java.util.List;

import com.billjc.model.ProjectAudit;
import com.billjc.vo.ProjectAuditView;

public interface ProjectAuditService {
	int deleteByPrimaryKey(String id);

	int insert(ProjectAudit projectAudit);

	int insertSelective(ProjectAuditView projectAuditView);

	ProjectAuditView selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(ProjectAuditView projectAuditView);

	int updateByPrimaryKey(ProjectAuditView projectAuditView);

	List<ProjectAuditView> selectByAuditWorkId(String auditWorkId);

	List<ProjectAuditView> selectByProjectId(String projectId);

	List<ProjectAuditView> selectByAuditTypeKeys(List<Integer> domainList);

	int saveAndUpdate(ProjectAuditView projectAuditView);

	List<String> selectAuditTypeKeysByParams(String projectId, String auditWorkId,
			String type);
}