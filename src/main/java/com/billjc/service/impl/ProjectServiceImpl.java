package com.billjc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.ProjectMapper;
import com.billjc.model.Project;
import com.billjc.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper userMapper;

	@Override
	public List<Project> selectByParams(String projectName, String workId) {
		return userMapper.selectByParams(projectName, workId);
	}
	
	@Override
	public List<Project> selectByQueryCondition(String queryCondition) {
		return userMapper.selectByQueryCondition(queryCondition);
	}

	@Override
	public Project selectByPrimaryKey(String id) {
		return userMapper.selectByPrimaryKey(id);
	}

	
}
