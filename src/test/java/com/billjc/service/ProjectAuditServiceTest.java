package com.billjc.service;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.ProjectAudit;
import com.billjc.util.MathUtil;
import com.billjc.vo.ProjectAuditView;

public class ProjectAuditServiceTest extends BaseTest {

	private static Logger logger = LoggerFactory
			.getLogger(ProjectAuditServiceTest.class);

	@Autowired
	private ProjectAuditService projectAuditService;

	@Test
	public void testInsert01() {
		List<String> workIds = new ArrayList<String>();
		workIds.add("B-11332");
		workIds.add("B-11504");
		workIds.add("B-12072");
		workIds.add("B-12738");
		workIds.add("B-12779");
		workIds.add("B-13030");
		workIds.add("B-13236");
		workIds.add("B-13817");
		workIds.add("B-13821");

		List<String> projectIds = new ArrayList<String>();
		projectIds.add("22622ac3-d177-48c5-9fce-f80149ea3115");
		projectIds.add("820fa114-1196-4631-bab3-86dcad011cd4");
		projectIds.add("90eab808-ba89-48ba-af63-e813a60b6b33");
		projectIds.add("a2074767-cba5-4e56-bac1-83415eca2efa");
		projectIds.add("c2af4bef-9e6d-43b6-bdea-2bf11e0f30a4");
		projectIds.add("c94a0a35-70f4-4b86-a736-1121df2c2aea");
		projectIds.add("c6d4c191-29ef-4b87-ab34-b17cda3ee7a5");
		projectIds.add("ed585d23-98a2-41a3-b931-94ee336bdb5e");
		projectIds.add("f14dd7bc-b449-4436-b994-bfc9b3e2dd7b");
		projectIds.add("745abe08-1101-425e-ae4a-c99b8204c9fb");
		projectIds.add("5e148448-a8a8-4388-8cfa-277e750d9ef7");
		projectIds.add("1df9f7d0-3879-4d72-a0d1-cfeea47906e0");
		projectIds.add("429fefca-8366-4fa2-a900-b607bf7be860");
		projectIds.add("4bd609d1-7885-45e6-9b31-dd57fd2ebfea");
		projectIds.add("d3814db1-a55f-47ed-bb51-ae5b6671ad1b");
		projectIds.add("b304c415-2f3a-4adc-8588-3f8b07c367a6");
		projectIds.add("f936b452-c3c3-4b1f-8aff-57f32dcbe1f4");
		projectIds.add("d816d8ab-04aa-4407-8c22-0c407d48961e");
		projectIds.add("484b5806-c5aa-4991-b5a1-1be15caa3c42");
		projectIds.add("3765fbbe-ae72-44db-bb20-c83c75aca63d");
		projectIds.add("53a9ce44-e77f-48b5-9e0d-03ace93002c0");
		projectIds.add("69e0aab9-31e9-4fc7-8abc-49c57441128d");
		projectIds.add("689eea2c-c939-4c21-afe3-d7209ba64621");
		projectIds.add("64297cc1-a677-4a69-a20b-1203f1415d1c");
		projectIds.add("3188e93e-86df-4580-9f5c-0f3026d72200");
		projectIds.add("9fdd90b6-7df1-4df3-8948-fc1f2613ae59");
		projectIds.add("afb92f75-6546-49c8-b7d9-0ec072c1122d");
		projectIds.add("2931b3cd-9849-48ef-9f45-4b75790bfc28");
		projectIds.add("43bf04db-a005-44b9-ae1b-e59c0c7c6d66");
		projectIds.add("7987faa0-ac29-4d6d-9f95-670929a267a7");
		projectIds.add("7d473bca-4f83-46d2-82c8-bb1ceee295e1");
		projectIds.add("ac1cf83d-eb8a-49b5-b9d4-9e994b276ab5");
		projectIds.add("bbc5f979-6b60-489e-b1ad-2f31d01ee125");
		projectIds.add("4057ed11-0b05-4b74-8623-c5aa4225c740");
		projectIds.add("349087d2-b4a0-4319-a9a4-f7c6d7a20d23");
		projectIds.add("2e74606b-3b4c-4223-87c2-85e7a4819acf");
		projectIds.add("fc547070-cab8-7edc-4931-1198f832c51d");
		projectIds.add("106781ce-e08a-485d-ac91-bbcdf6cdfc5b");
		projectIds.add("84c60794-d42f-4d25-b610-87155806036c");
		projectIds.add("53f480ed-f4e6-4a3e-a3c5-d66abec0847e");
		projectIds.add("f8b8fbf8-d943-43af-bcd8-4c8c19001738");
		projectIds.add("ea68279c-15e0-4e65-a341-586900ca2cba");
		projectIds.add("d88a9b56-ee97-4e46-85c7-b9f49baeb6ef");
		projectIds.add("a6d988a6-2f6a-4d3d-bbeb-45bd9921f64e");
		projectIds.add("aeb63294-0136-401b-9cb9-a2a64d2e27e9");
		projectIds.add("9885fe6a-c465-4093-ba0d-82595f7c55e9");
		projectIds.add("f1ef277c-a5c0-488b-9cfa-01aecc9347e9");
		projectIds.add("5cb2bba2-5fbf-4f7a-a05b-7ba3d877a60e");
		projectIds.add("04e8522f-b4e4-483f-abff-338916f985e2");
		projectIds.add("16f0ed84-2daa-48da-91cd-e6581807b8f0");

		List<String> auditTypeKeys = new ArrayList<>();
		auditTypeKeys.add("RO01");
		auditTypeKeys.add("RO02");
		auditTypeKeys.add("RO03");
		auditTypeKeys.add("OS01");
		auditTypeKeys.add("OS02");
		auditTypeKeys.add("OS03");
		auditTypeKeys.add("OS04");
		auditTypeKeys.add("AD01");
		auditTypeKeys.add("AD02");

		for (int i = 0; i < 100; i++) {
			int randomNumber1 = MathUtil.getRandomByRange(0, 8);
			String auditTypeKey = auditTypeKeys.get(randomNumber1);
			int randomNumber2 = MathUtil.getRandomByRange(0, 2);
			Integer auditState = randomNumber2;
			int randomNumber3 = MathUtil.getRandomByRange(0, 8);
			String workId = workIds.get(randomNumber3);
			int randomNumber4 = MathUtil.getRandomByRange(0, 19);
			String projectId = projectIds.get(randomNumber4);

			createProjectAudit(auditTypeKey, auditState, workId, projectId);
		}
	}

	private void createProjectAudit(String auditTypeKey, Integer auditState,
			String workId, String projectId) {
		String auditContent = "这里填写给该项目的审核意见";
		Date auditCreateDate = new Date();

		ProjectAudit projectAudit = new ProjectAudit();
		String projectAuditTypeKey = UUID.randomUUID().toString();
		logger.debug("###projectAuditTypeKey: {}", projectAuditTypeKey);
		projectAudit.setId(projectAuditTypeKey);
		projectAudit.setAuditTypeKey(auditTypeKey);
		projectAudit.setAuditContent(auditContent);
		projectAudit.setAuditState(auditState);
		projectAudit.setAuditCreateDate(auditCreateDate);
		projectAudit.setAuditWorkId(workId);
		projectAudit.setProjectId(projectId);

		Integer expected = 1;
		Integer result = projectAuditService.insert(projectAudit);
		assertEquals(expected, result);
	}

	@Test
	public void testSelectByAuditWorkId() {
		String auditWorkId = "B-17188";
		List<ProjectAuditView> projectAuditViewList = projectAuditService
				.selectByAuditWorkId(auditWorkId);
		logger.debug("###size: " + projectAuditViewList.size());
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			logger.debug("" + projectAuditView);
		}
	}

	@Test
	public void testSelectByAuditWorkId02() {
		String auditWorkId = "B-11332";
		List<ProjectAuditView> projectAuditViewList = projectAuditService
				.selectByAuditWorkId(auditWorkId);
		logger.debug("###size: " + projectAuditViewList.size());
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			logger.debug("" + projectAuditView);
		}
	}

	@Test
	public void testSelectByProjectId() {
		String projectId = "106781ce-e08a-485d-ac91-bbcdf6cdfc5b";
		List<ProjectAuditView> projectAuditViewList = projectAuditService
				.selectByProjectId(projectId);
		logger.info("###size: " + projectAuditViewList.size());
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			logger.info("" + projectAuditView);
		}
	}

	@Test
	public void testSelectByProjectId02() {
		String projectId = "745abe08-1101-425e-ae4a-c99b8204c9fb";
		List<ProjectAuditView> projectAuditViewList = projectAuditService
				.selectByProjectId(projectId);
		logger.info("###size: " + projectAuditViewList.size());
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			logger.info("" + projectAuditView);
		}
	}

	@Test
	public void testSelectByAuditTypeKeys01() {
		List<Integer> queryList = new ArrayList<Integer>();
		queryList.add(3616);
		queryList.add(3617);
		List<ProjectAuditView> projectAuditViewList = projectAuditService
				.selectByAuditTypeKeys(queryList);
		logger.debug("###size: " + projectAuditViewList.size());
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			logger.debug("" + projectAuditView);
		}
	}

	@Test
	public void testSelectAuditTypeKeysByParams01() {
		String projectId = "349087d2-b4a0-4319-a9a4-f7c6d7a20d23";
		String auditWorkId = "B-11332";
		String type = "ReasonableObjectiveInfo";
		List<String> auditTypeKeys = projectAuditService
				.selectAuditTypeKeysByParams(projectId, auditWorkId, type);
		logger.debug("###size: " + auditTypeKeys.size());
		for (String auditTypeKey : auditTypeKeys) {
			logger.debug("" + auditTypeKey);
		}
	}

	@Test
	public void testDeleteByPrimaryKey01() {
		String id = "54cb9615-24a5-4056-80f4-a50ab6f07cb0";
		Integer result = projectAuditService.deleteByPrimaryKey(id);
		logger.debug("" + result);
		Integer expected = 1;
		assertEquals(expected, result);
	}

}
