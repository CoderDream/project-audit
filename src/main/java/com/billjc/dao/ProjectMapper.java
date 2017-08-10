package com.billjc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.billjc.model.Project;

public interface ProjectMapper {
	int deleteByPrimaryKey(String id);

	int insert(Project record);

	int insertSelective(Project record);

	Project selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(Project record);

	int updateByPrimaryKeyWithBLOBs(Project record);

	int updateByPrimaryKey(Project record);

	List<Project> selectByParams(String projectName, String workId);

	List<Project> selectByQueryCondition(
			@Param("queryCondition") String queryCondition);
}