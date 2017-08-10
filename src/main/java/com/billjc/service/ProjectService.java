package com.billjc.service;

import java.util.List;

import com.billjc.model.Project;

public interface ProjectService {
	
	Project selectByPrimaryKey(String id);

	List<Project> selectByParams(String projectName, String workId);
	
	List<Project> selectByQueryCondition(String queryCondition);
}