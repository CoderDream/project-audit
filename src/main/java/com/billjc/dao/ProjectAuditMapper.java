package com.billjc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.billjc.model.ProjectAudit;

public interface ProjectAuditMapper {
	int deleteByPrimaryKey(String id);

	int insert(ProjectAudit projectAudit);

	int insertSelective(ProjectAudit projectAudit);

	ProjectAudit selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(ProjectAudit projectAudit);

	int updateByPrimaryKey(ProjectAudit projectAudit);

	List<ProjectAudit> selectByAuditWorkId(String auditWorkId);

	List<ProjectAudit> selectByProjectId(String projectId);

	List<ProjectAudit> selectByAuditTypeKeys(List<Integer> auditTypeKeys);

	List<String> selectAuditTypeKeysByParams(@Param("projectId") String projectId,
			@Param("auditWorkId") String auditWorkId,
			@Param("type") String type);
}