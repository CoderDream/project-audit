package com.billjc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.billjc.model.Project;
import com.billjc.service.ProjectService;

/**
 * @author xulin28709
 *
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

	private static Logger logger = LoggerFactory
			.getLogger(ProjectController.class);

	@Autowired
	private ProjectService projectService;

	@ResponseBody
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public Map<String, Project> selectByParams(String value, String workId) {
		logger.debug("like {}", value);
		workId = "B-26050"; // TODO
		Map<String, Project> map = new HashMap<String, Project>();
		List<Project> projectList = projectService.selectByParams(value.trim(),
				workId);
		for (Project project : projectList) {
			logger.debug(project.toString());
			map.put(project.getId(), project);
		}

		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/query", method = RequestMethod.GET)
	public Map<String, Project> selectByQueryCondition(String value) {
		logger.debug("like {}", value);
		Map<String, Project> map = new HashMap<String, Project>();
		List<Project> projectList = projectService
				.selectByQueryCondition(value.trim());
		for (Project project : projectList) {
			logger.debug(project.toString());
			map.put(project.getId(), project);
		}

		return map;
	}

}
