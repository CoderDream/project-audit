package com.billjc.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.Project;

public class ProjectServiceTest extends BaseTest {

	@Autowired
	private ProjectService projectService;

	@Test
	public void testSelectByParams() {
		List<Project> projectList = projectService.selectByParams("",
				"B-26050");
		for (Project project : projectList) {
			System.out
					.println(project.getId() + "\t" + project.getProjectName());
		}
	}

	@Test
	public void selectByQueryCondition01() {
		List<Project> projectList = projectService
				.selectByQueryCondition("201704");
		for (Project project : projectList) {
			System.out.println(project.getId() + "\t" + project.getProjectName()
					+ "\t" + project.getProjectnewno());
		}
	}

	@Test
	public void testSelectByPrimaryKey() {
		String id = "f89585f6-9191-46db-b993-62385b26eaa1";
		Project project = projectService.selectByPrimaryKey(id);
		System.out.println(project.getId() + "\t" + project.getProjectName());
	}

}
