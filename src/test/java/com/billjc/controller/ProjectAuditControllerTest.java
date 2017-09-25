package com.billjc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.ModelAndView;
import org.testng.AssertJUnit;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import com.billjc.model.Dictionary;
import com.billjc.util.Constants;
import com.billjc.util.MathUtil;
import com.billjc.util.QEncodeUtil;
import com.billjc.vo.ProjectAuditView;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@ContextConfiguration(locations = { "classpath:applicationContext.xml",
				"classpath:springmvc-servlet.xml" })
public class ProjectAuditControllerTest
				extends AbstractTestNGSpringContextTests {

	private static Logger logger = LoggerFactory
					.getLogger(ProjectAuditControllerTest.class);

	@Autowired
	private ProjectAuditController projectAuditController;

	@Autowired
	private ProjectController projectController;

	private MockMvc mockMvc;

	private MockHttpSession session;

	@BeforeClass
	public void setup() {
		mockMvc = MockMvcBuilders.standaloneSetup(projectController,
						projectAuditController).build();
		session = new MockHttpSession();
	}

	/**
	 * 我的审计（列表）
	 * 
	 * @throws Exception
	 */
	@Test(priority = 11)
	public void testMyAudit() throws Exception {
		myAudit();
	}

	@SuppressWarnings("unchecked")
	private List<ProjectAuditView> myAudit() throws Exception {
		String paramName1 = "workId";
		// [B-7382]全荃
		String staffWorkId = "B-7382";
		String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
		System.out.println("encryptString\t" + paramValue1);
		// 浏览器会自动解码
		try {
			paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// Step 1: 模拟登陆
		ResultActions resultActions = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/my-audit")
										.param(paramName1, paramValue1));
		MvcResult mvcResult = resultActions.andReturn();
		ModelAndView mav = mvcResult.getModelAndView();
		Map<String, Object> modelMap = mav.getModel();
		List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>) modelMap
						.get("projectAuditViewList");
		for (ProjectAuditView projectAuditView2 : projectAuditViewList) {

			logger.debug("=====客户端获得反馈数据 projectAuditView2:"
							+ projectAuditView2);
		}
		String resourceIds = (String) modelMap.get("resourceIds");
		String mgrWorkIds = (String) modelMap.get("mgrWorkIds");
		String pmWorkIds = (String) modelMap.get("pmWorkIds");
		String tmWorkId = (String) modelMap.get("tmWorkId");
		String rmWorkId = (String) modelMap.get("rmWorkId");
		String workId = (String) modelMap.get("workId");

		logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditViewList);
		logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
		logger.debug("=====客户端获得反馈数据 mgrWorkIds:" + mgrWorkIds);
		logger.debug("=====客户端获得反馈数据 pmWorkIds:" + pmWorkIds);
		logger.debug("=====客户端获得反馈数据 tmWorkId:" + tmWorkId);
		logger.debug("=====客户端获得反馈数据 rmWorkId:" + rmWorkId);
		logger.debug("=====客户端获得反馈数据 workId:" + workId);

		return projectAuditViewList;
	}

	/**
	 * 某个项目的审计信息
	 * 
	 * @throws Exception
	 */
	@Test(priority = 12)
	public void testAudit() throws Exception {
		List<ProjectAuditView> projectAuditViewList = myAudit();

		String projectId = "";
		int size = 0;
		if (null != projectAuditViewList && 0 < projectAuditViewList.size()) {
			size = projectAuditViewList.size();
			int randomNumber = MathUtil.getRandomByRange(0, size);
			ProjectAuditView projectAuditViewTemp = projectAuditViewList
							.get(randomNumber);
			projectId = projectAuditViewTemp.getProjectId();
			String projectName = projectAuditViewTemp.getProjectName();
			logger.debug(projectId + "\t" + projectName);
		}

		enterAuditPage(projectId);
	}

	private ProjectAuditView enterAuditPage(String projectId) throws Exception {
		// 进入人力信息编辑页面
		String paramName = "projectId";
		logger.debug("=====传入参数 projectId:" + projectId);
		ResultActions resultActions2 = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/audit")
										.param(paramName, projectId));
		MvcResult mvcResult2 = resultActions2.andReturn();
		ModelAndView mav2 = mvcResult2.getModelAndView();
		Map<String, Object> modelMap2 = mav2.getModel();
		ProjectAuditView projectAuditView = (ProjectAuditView) modelMap2
						.get("projectAuditView");
		String totalWorkPlaceKeys = (String) modelMap2
						.get("totalWorkPlaceKeys");
		logger.debug("=====客户端获得反馈数据 projectAuditView2:" + projectAuditView);
		logger.debug("=====客户端获得反馈数据 totalWorkPlaceKeys:" + totalWorkPlaceKeys);
		AssertJUnit.assertEquals(projectId, projectAuditView.getProjectId());

		return projectAuditView;
	}

	/**
	 * 按项目信息查询
	 * 
	 * @throws Exception
	 */
	@Test(priority = 11)
	public void testQueryByProject() throws Exception {
		queryByProject();
		String projectId = queryProject();
		logger.debug("=====客户端获得反馈数据 projectId:{}", projectId);
	}

	private void queryByProject() throws Exception {
		String paramName1 = "workId";
		// [B-30728]吕帅[B-7382]全荃
		String staffWorkId = "B-7382";
		String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
		System.out.println("encryptString\t" + paramValue1);
		// 浏览器会自动解码
		try {
			paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// Step 1: 模拟登陆
		ResultActions resultActions = this.mockMvc.perform(
						MockMvcRequestBuilders.post("/query-by-project")
										.param(paramName1, paramValue1));
		MvcResult mvcResult = resultActions.andReturn();
		ModelAndView mav = mvcResult.getModelAndView();
		Map<String, Object> modelMap = mav.getModel();
		String resourceIds = (String) modelMap.get("resourceIds");

		logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
	}

	@SuppressWarnings("unchecked")
	private String queryProject() throws Exception {
		String paramName1 = "value";
		String paramValue1 = "美的-美的开利相关软件测试项目5月版本";
		// Step 1: 模拟登陆
		ResultActions resultActions = this.mockMvc
						.perform(MockMvcRequestBuilders.get("/project/query")
										.param(paramName1, paramValue1));
		MvcResult mvcResult = resultActions.andReturn();

		MockHttpServletResponse mockHttpServletResponse = mvcResult
						.getResponse();
		String content = mockHttpServletResponse.getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Map<String, Object>> map = mapper.readValue(content,
						Map.class);

		for (Map.Entry<String, Map<String, Object>> entry : map.entrySet()) {
			Map<String, Object> project = entry.getValue();
			for (Map.Entry<String, Object> entry2 : project.entrySet()) {
				System.out.println("Key = " + entry2.getKey() + ", Value = "
								+ entry2.getValue().toString());
			}
			System.out.println(
							"Key = " + entry.getKey() + ", Value = " + project);
		}

		return (String) (map.keySet().toArray())[0];
	}

	@Test(priority = 15)
	public void testProjectAuditAddUpdateDelete() throws Exception {
		queryByProject();
		String projectId = queryProject();
		logger.debug("=====客户端获得反馈数据 projectId:{}", projectId);
		ProjectAuditView projectAuditView = enterAuditPage(projectId);
		logger.debug("=====客户端获得反馈数据 projectAuditView:{}", projectAuditView);

		// 新增 begin
		// 目标合理性
		String auditType = Constants.REASONABLE_OBJECTIVE_INFO;
		String projectAuditId = "";
		ProjectAuditView projectAuditView2 = enterAuditUpdatePage(auditType,
						projectId, projectAuditId, session);

		String auditTypeKey = "RO01";
		String auditContent = "评价内容";
		Integer auditState = 1;
		String loginWorkId = "B-7382";
		session.setAttribute("workId", loginWorkId);
		projectAuditView2.setAuditTypeKey(auditTypeKey);
		projectAuditView2.setAuditContent(auditContent);
		projectAuditView2.setAuditState(auditState);
		logger.debug("=====客户端获得反馈数据 projectAuditView2:{}", projectAuditView2);

		ProjectAuditView projectAuditView3 = auditSave(projectAuditView2,
						session);
		logger.debug("=====客户端获得反馈数据 projectAuditView3:{}", projectAuditView3);
		// 新增 end

		// 修改 begin
		// 目标合理性
		auditType = Constants.REASONABLE_OBJECTIVE_INFO;
		projectAuditId = projectAuditView3.getId();
		ProjectAuditView projectAuditView4 = enterAuditUpdatePage(auditType,
						projectId, projectAuditId, session);

		auditContent = "评价内容";
		auditState = 1;
		session.setAttribute("workId", loginWorkId);
		projectAuditView4.setAuditContent(auditContent);
		projectAuditView4.setAuditState(auditState);
		logger.debug("=====客户端传入的数据 projectAuditView4:{}", projectAuditView4);
		ProjectAuditView projectAuditView5 = auditSave(projectAuditView4,
						session);

		logger.debug("=====客户端获得反馈数据 projectAuditView5:{}", projectAuditView5);
		// 修改 end

		// 删除 begin
		String projectIdDelete = projectAuditView5.getProjectId();
		String projectAuditIdDelete = projectAuditView5.getId();
		logger.debug("=====删除传入参数 :projectIdDelete {}", projectIdDelete);
		logger.debug("=====删除传入参数 :projectAuditIdDelete{}",
						projectAuditIdDelete);
		ProjectAuditView projectAuditView6 = auditDelete(projectIdDelete,
						projectAuditIdDelete, session);

		logger.debug("=====客户端获得反馈数据 projectAuditView6:{}", projectAuditView6);
		// 删除 end
	}


	private ProjectAuditView enterAuditUpdatePage(String auditType,
					String projectId, String projectAuditId,
					MockHttpSession session) throws Exception {
		// 进入人力信息编辑页面
		String paramNameA = "auditType";
		String paramNameB = "projectId";
		String paramNameC = "projectAuditId";
		// String paramNameD = "session";
		logger.debug("=====传入参数 projectId:" + projectId);
		ResultActions resultActions2 = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/audit-update")
										.param(paramNameA, auditType)
										.param(paramNameB, projectId)
										.param(paramNameC, projectAuditId)
										.session(session));
		MvcResult mvcResult2 = resultActions2.andReturn();
		ModelAndView mav2 = mvcResult2.getModelAndView();
		Map<String, Object> modelMap2 = mav2.getModel();

		ProjectAuditView projectAuditView = (ProjectAuditView) modelMap2
						.get("projectAuditView");
		String auditTypeReturn = (String) modelMap2.get("auditType");
		String auditTypeKeys = (String) modelMap2.get("auditTypeKeys");
		logger.debug("=====客户端获得反馈数据 projectAuditView2:" + projectAuditView);
		logger.debug("=====客户端获得反馈数据 auditTypeReturn:" + auditTypeReturn);
		logger.debug("=====客户端获得反馈数据 auditTypeKeys:" + auditTypeKeys);
		AssertJUnit.assertEquals(projectId, projectAuditView.getProjectId());

		return projectAuditView;
	}

	
	private ProjectAuditView auditSave(ProjectAuditView projectAuditView,
					MockHttpSession session) throws Exception {
		// 进入人力信息编辑页面
		// String paramNameD = "session";
		logger.debug("=====传入参数 projectAuditView:" + projectAuditView);
		ObjectMapper mapper = new ObjectMapper();
		MediaType APPLICATION_JSON_UTF8 = new MediaType(
						MediaType.APPLICATION_JSON.getType(),
						MediaType.APPLICATION_JSON.getSubtype(),
						Charset.forName("utf8"));
		ResultActions resultActions3 = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/audit-save")
										.contentType(APPLICATION_JSON_UTF8)
										.content(mapper.writeValueAsString(
														projectAuditView))
										.session(session));

		MvcResult mvcResult3 = resultActions3.andReturn();

		MockHttpServletResponse mockHttpServletResponse = mvcResult3
						.getResponse();
		String content = mockHttpServletResponse.getContentAsString();

		ProjectAuditView projectAuditView2 = mapper.readValue(content,
						ProjectAuditView.class);
		logger.debug("=====客户端获得反馈数据 projectAuditView3:" + projectAuditView2);

		return projectAuditView2;
	}

	
	private ProjectAuditView auditDelete(String projectId,
					String projectAuditId, MockHttpSession session)
					throws Exception {
		// 进入人力信息编辑页面
		String paramNameA = "projectId";
		String paramNameB = "projectAuditId";
		// String paramNameD = "session";
		logger.debug("=====传入参数 projectId:" + projectId);
		ResultActions resultActions2 = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/audit-delete")
										.param(paramNameA, projectId)
										.param(paramNameB, projectAuditId)
										.session(session));
		MvcResult mvcResult2 = resultActions2.andReturn();
		ModelAndView mav2 = mvcResult2.getModelAndView();
		Map<String, Object> modelMap2 = mav2.getModel();

		ProjectAuditView projectAuditView = (ProjectAuditView) modelMap2
						.get("projectAuditView");
		String auditTypeReturn = (String) modelMap2.get("auditType");
		String auditTypeKeys = (String) modelMap2.get("auditTypeKeys");
		logger.debug("=====客户端获得反馈数据 projectAuditView2:" + projectAuditView);
		logger.debug("=====客户端获得反馈数据 auditTypeReturn:" + auditTypeReturn);
		logger.debug("=====客户端获得反馈数据 auditTypeKeys:" + auditTypeKeys);
		AssertJUnit.assertEquals(projectId, projectAuditView.getProjectId());

		return projectAuditView;
	}

	//

	/**
	 * 登陆
	 * 
	 * @throws Exception
	 */
	@Test(priority = 21)
	public void testQueryByAuditItem() throws Exception {
		List<Dictionary> dictionaryList = queryByAuditItem();

		for (Dictionary dictionary : dictionaryList) {
			logger.debug("=====客户端获得反馈数据 dictionary:{}", dictionary);
		}
	}

	@SuppressWarnings("unchecked")
	private List<Dictionary> queryByAuditItem() throws Exception {
		String paramName1 = "workId";
		// [B-30728]吕帅[B-7382]全荃
		String staffWorkId = "B-7382";
		String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
		System.out.println("encryptString\t" + paramValue1);
		// 浏览器会自动解码
		try {
			paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// Step 1: 模拟登陆
		ResultActions resultActions = this.mockMvc.perform(
						MockMvcRequestBuilders.post("/query-by-audititem")
										.param(paramName1, paramValue1));
		MvcResult mvcResult = resultActions.andReturn();
		ModelAndView mav = mvcResult.getModelAndView();
		Map<String, Object> modelMap = mav.getModel();
		String resourceIds = (String) modelMap.get("resourceIds");
		List<Dictionary> dictionaryList = (List<Dictionary>) modelMap
						.get("dictionaryList");
		for (Dictionary dictionary : dictionaryList) {
			logger.debug("=====客户端获得反馈数据 dictionary:" + dictionary);
		}

		logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);

		return dictionaryList;
	}

	/**
	 * 通过审计科目查询项目审计列表
	 * 
	 * @throws Exception
	 */
	@Test(priority = 22)
	public void testAuditList() throws Exception {
		// {"queryString":["RO01","RO02","RO03"]}
		StringBuffer queryCondition = new StringBuffer("{\"queryString\":");
		List<Dictionary> dictionaryList = queryByAuditItem();
		List<String> keyNames = new ArrayList<>();
		for (Dictionary dictionary : dictionaryList) {
			keyNames.add(dictionary.getKeyName());
		}

		ObjectMapper mapper = new ObjectMapper();
		String keyNamesStr = "";
		try {
			keyNamesStr = mapper.writeValueAsString(keyNames);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		queryCondition.append(keyNamesStr);
		queryCondition.append("}");

		logger.debug("=====传入参数 queryCondition:{}", queryCondition);
		logger.debug("=====传入参数 keyNamesStr:{}", keyNamesStr);
		String loginWorkId = "B-7382";
		session.setAttribute("workId", loginWorkId);

		List<ProjectAuditView> projectAuditViewList = auditList(
						queryCondition.toString(), session);
		for (ProjectAuditView projectAuditView2 : projectAuditViewList) {
			logger.debug("=====客户端获得反馈数据 projectAuditView2:"
							+ projectAuditView2);
		}
	}

	@SuppressWarnings("unchecked")
	private List<ProjectAuditView> auditList(String queryCondition,
					MockHttpSession session) throws Exception {
		String paramNameA = "queryCondition";
		logger.debug("=====传入参数 queryCondition:" + queryCondition);
		ResultActions resultActions2 = this.mockMvc
						.perform(MockMvcRequestBuilders.post("/audit-list")
										.param(paramNameA, queryCondition)
										.session(session));
		MvcResult mvcResult2 = resultActions2.andReturn();
		ModelAndView mav2 = mvcResult2.getModelAndView();
		Map<String, Object> modelMap2 = mav2.getModel();

		List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>) modelMap2
						.get("projectAuditViewList");
		// for (ProjectAuditView projectAuditView2 : projectAuditViewList) {
		// logger.debug("=====客户端获得反馈数据 projectAuditView2:"
		// + projectAuditView2);
		// }
		String auditTypeReturn = (String) modelMap2.get("auditType");
		String auditTypeKeys = (String) modelMap2.get("auditTypeKeys");
		logger.debug("=====客户端获得反馈数据 auditTypeReturn:" + auditTypeReturn);
		logger.debug("=====客户端获得反馈数据 auditTypeKeys:" + auditTypeKeys);
		return projectAuditViewList;
	}

	// @Test(priority = 13)
	// public void testProjectAuditSave() throws Exception {
	// //ProjectAuditView projectAuditView1 = loginStaff();
	//
	// //
	//
	//// ProjectAuditView projectAuditView2 = enterEditPage(projectAuditView1);
	//// // 将工作年限设为15
	//// Integer newServiceYear = 11;
	//// projectAuditView2.setServiceYear(newServiceYear);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/project/query").contentType(APPLICATION_JSON_UTF8)
	// .content(mapper.writeValueAsString(projectAuditView2)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditView projectAuditView3 = mapper.readValue(content,
	// ProjectAuditView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditView3:" + projectAuditView3);
	// AssertJUnit.assertEquals(newServiceYear,
	// projectAuditView3.getServiceYear());
	// }

	// @Test(priority = 15)
	// public void testPmEvaluateUpdate() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	// enterPmEvaluatePage(projectAuditView1);
	// }
	//
	// private PmEvaluateView enterPmEvaluatePage(ProjectAuditView
	// projectAuditView1) throws Exception {
	// String loginWorkId = "B-21945";
	// session.setAttribute("workId", loginWorkId);
	// // 进入项目评价页面
	// String paramNameA = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/pm-evaluate").param(paramNameA,
	// projectAuditId).session(session));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// PmEvaluateView pmEvaluateView = (PmEvaluateView)
	// modelMap2.get("pmEvaluateView");
	// String operateType = (String) modelMap2.get("operateType");
	// logger.debug("=====客户端获得反馈数据 pmEvaluateView:" + pmEvaluateView);
	// logger.debug("=====客户端获得反馈数据 operateType:" + operateType);
	//
	// AssertJUnit.assertEquals(loginWorkId, pmEvaluateView.getPmWorkId());
	// AssertJUnit.assertEquals(projectAuditId,
	// pmEvaluateView.getProjectAuditId());
	// // Assert.assertEquals("add", operateType);
	// // Assert.assertNull(pmEvaluateView.getId());
	//
	// return pmEvaluateView;
	// }
	//
	// @Test(priority = 16)
	// public void testPmEvaluateSave() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	// PmEvaluateView pmEvaluateView = enterPmEvaluatePage(projectAuditView1);
	//
	// // 保存
	// String evaluateContent = "PM评价测试";
	// Integer pmEvalStarLevel = 3;
	// pmEvaluateView.setEvaluateContent(evaluateContent);
	// pmEvaluateView.setPmEvalStarLevel(pmEvalStarLevel);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/save-pm-evaluate")
	// .contentType(APPLICATION_JSON_UTF8).content(mapper.writeValueAsString(pmEvaluateView)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// PmEvaluateView pmEvaluateView2 = mapper.readValue(content,
	// PmEvaluateView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditSkillView2:" + pmEvaluateView2);
	//
	// AssertJUnit.assertEquals(evaluateContent,
	// pmEvaluateView2.getEvaluateContent());
	// AssertJUnit.assertEquals(pmEvalStarLevel,
	// pmEvaluateView2.getPmEvalStarLevel());
	// }
	//
	// @Test(priority = 17)
	// public void testTmEvaluateUpdate() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff(); //
	// enterTmEvaluatePage(projectAuditView1);
	// }
	//
	// private ProjectAuditView enterTmEvaluatePage(ProjectAuditView
	// projectAuditView1) throws Exception {
	// // 进入人力信息编辑页面
	// String paramName = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// logger.debug("=====客户端获得反馈数据 projectAuditId:" + projectAuditId);
	// ResultActions resultActions2 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/tm-evaluate").param(paramName,
	// projectAuditId));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditView projectAuditView2 = (ProjectAuditView)
	// modelMap2.get("projectAuditView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" + projectAuditView2);
	// AssertJUnit.assertEquals(projectAuditId, projectAuditView2.getId());
	// return projectAuditView2;
	// }
	//
	// @Test(priority = 18)
	// public void testTmEvaluateSave() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff(); //
	// ProjectAuditView projectAuditView2 =
	// enterTmEvaluatePage(projectAuditView1);
	//
	// // 将工作年限设为15
	// // ,[TmEvalContnet],<TmEvalContnet, nvarchar(100),>
	// String tmEvalContent = "";
	//
	// // ,[TmEvalStarLev] ,<TmEvalStarLevel, nchar(10),>
	// Integer tmEvalStarLevel = 4;
	// projectAuditView2.setTmEvalContent(tmEvalContent);
	// projectAuditView2.setTmEvalStarLevel(tmEvalStarLevel);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/save-tm-evaluate")
	// .contentType(APPLICATION_JSON_UTF8).content(mapper.writeValueAsString(projectAuditView2)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditView projectAuditView3 = mapper.readValue(content,
	// ProjectAuditView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditView3:" + projectAuditView3);
	// AssertJUnit.assertEquals(tmEvalStarLevel,
	// projectAuditView3.getTmEvalStarLevel());
	// }
	//
	// @Test(priority = 21)
	// public void testMyTeam() throws Exception {
	// loginTm();
	// }
	//
	// @SuppressWarnings("unchecked")
	// private List<ProjectAuditView> loginTm() throws Exception {
	// String paramName1 = "workId";
	// // [B-23911]李万鹏
	// String tmWorkId = "B-23911";
	// String paramValue1 = QEncodeUtil.encrypt(tmWorkId);
	// System.out.println("encryptString\t" + paramValue1);
	// // 浏览器会自动解码
	// try {
	// paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// // Step 1: 模拟登陆
	// ResultActions resultActions =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/my-team").param(paramName1,
	// paramValue1));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>)
	// modelMap.get("projectAuditViewList");
	// String resourceIds = (String) modelMap.get("resourceIds");
	// String workId = (String) modelMap.get("workId");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size:" +
	// projectAuditViewList.size());
	// for (ProjectAuditView projectAuditView : projectAuditViewList) {
	// logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditView);
	// }
	// logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
	// logger.debug("=====客户端获得反馈数据 workId:" + workId);
	//
	// return projectAuditViewList;
	// }
	//
	// @Test(priority = 22)
	// public void testProjectAudit() throws Exception {
	// List<ProjectAuditView> projectAuditViewList = loginTm();
	// for (ProjectAuditView projectAuditView : projectAuditViewList) {
	// logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditView);
	// String paramName1 = "projectAuditId";
	// String projectAuditId = projectAuditView.getId();
	// ResultActions resultActions =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit").param(paramName1,
	// projectAuditId));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// ProjectAuditView projectAuditViewRead = (ProjectAuditView)
	// modelMap.get("projectAuditView");
	// AssertJUnit.assertEquals(projectAuditId, projectAuditViewRead.getId());
	// }
	// }
	//
	//
	//
	// @Test(priority = 41)
	// public void testSkillUpdate() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramName = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// ResultActions resultActions2 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/skill").param(paramName,
	// projectAuditId));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditSkillView projectAuditSkillView = (ProjectAuditSkillView)
	// modelMap2.get("projectAuditSkillView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditSkillView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditSkillView.getProjectAuditId());
	// Assert.assertNull(projectAuditSkillView.getSkillKey());
	// Assert.assertNull(projectAuditSkillView.getProficiencyKey());
	// Assert.assertNull(projectAuditSkillView.getId());
	//
	// // 保存
	// String skillKey = "SK01";
	// String proficiencyKey = "PR03";
	// projectAuditSkillView.setSkillKey(skillKey);
	// projectAuditSkillView.setProficiencyKey(proficiencyKey);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/skill-save").contentType(APPLICATION_JSON_UTF8)
	// .content(mapper.writeValueAsString(projectAuditSkillView)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditSkillView projectAuditSkillView2 = mapper.readValue(content,
	// ProjectAuditSkillView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditSkillView2:" +
	// projectAuditSkillView2);
	//
	// AssertJUnit.assertEquals(skillKey, projectAuditSkillView2.getSkillKey());
	// AssertJUnit.assertEquals(proficiencyKey,
	// projectAuditSkillView2.getProficiencyKey());
	// }
	//
	// @Test(priority = 42)
	// public void testSkillSave() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramNameA = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// String paramNameB = "projectAuditSkillKey";
	//
	// String workId = "B-30728";
	// ProjectAuditView projectAuditView =
	// projectAuditService.selectProjectAuditViewByWorkId(workId);
	// String skillKey = "SK01";
	//
	// List<ProjectAuditSkill> projectAuditSkillList =
	// projectAuditSkillService.selectByProjectAuditIdAndSkillKey(projectAuditView.getId(),
	// skillKey);
	// ProjectAuditSkill projectAuditSkill = new ProjectAuditSkill();
	// if (null != projectAuditSkillList && 0 < projectAuditSkillList.size()) {
	// projectAuditSkill = projectAuditSkillList.get(0);
	// }
	//
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/skill").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditSkill.getId()));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditSkillView projectAuditSkillView = (ProjectAuditSkillView)
	// modelMap2.get("projectAuditSkillView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditSkillView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditSkillView.getProjectAuditId());
	//
	// // 保存
	// String newProficiencyKey = "PR03";
	// projectAuditSkillView.setProficiencyKey(newProficiencyKey);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/skill-save").contentType(APPLICATION_JSON_UTF8)
	// .content(mapper.writeValueAsString(projectAuditSkillView)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditSkillView projectAuditSkillView2 = mapper.readValue(content,
	// ProjectAuditSkillView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditSkillView2:" +
	// projectAuditSkillView2);
	//
	// AssertJUnit.assertEquals(skillKey, projectAuditSkillView2.getSkillKey());
	// AssertJUnit.assertEquals(newProficiencyKey,
	// projectAuditSkillView2.getProficiencyKey());
	// }
	//
	// @Test(priority = 43)
	// public void testSkillDelete() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramNameA = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// String paramNameB = "projectAuditSkillKey";
	//
	// String workId = "B-30728";
	// ProjectAuditView projectAuditView =
	// projectAuditService.selectProjectAuditViewByWorkId(workId);
	// String skillKey = "SK01";
	//
	// List<ProjectAuditSkill> projectAuditSkillList =
	// projectAuditSkillService.selectByProjectAuditIdAndSkillKey(projectAuditView.getId(),
	// skillKey.toString());
	// ProjectAuditSkill projectAuditSkill = new ProjectAuditSkill();
	// if (null != projectAuditSkillList && 0 < projectAuditSkillList.size()) {
	// projectAuditSkill = projectAuditSkillList.get(0);
	// }
	//
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/skill").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditSkill.getId()));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditSkillView projectAuditSkillView = (ProjectAuditSkillView)
	// modelMap2.get("projectAuditSkillView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditSkillView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditSkillView.getProjectAuditId());
	//
	// // 删除
	// String newProficiencyKey = "PR03";
	// projectAuditSkillView.setProficiencyKey(newProficiencyKey);
	// this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/skill-delete").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditSkill.getId()));
	//
	// List<ProjectAuditSkill> projectAuditSkillListNew =
	// projectAuditSkillService.selectByProjectAuditIdAndSkillKey(projectAuditView.getId(),
	// skillKey.toString());
	// Integer expected = new Integer(0);
	// AssertJUnit.assertEquals(new Integer(projectAuditSkillListNew.size()),
	// expected);
	//
	// }
	//
	// @Test(priority = 51)
	// public void testDomainUpdate() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramName = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// ResultActions resultActions2 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/domain").param(paramName,
	// projectAuditId));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditDomainView projectAuditDomainView = (ProjectAuditDomainView)
	// modelMap2.get("projectAuditDomainView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditDomainView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditDomainView.getProjectAuditId());
	// Assert.assertNull(projectAuditDomainView.getDomainKey());
	// Assert.assertNull(projectAuditDomainView.getExperienceKey());
	// Assert.assertNull(projectAuditDomainView.getId());
	//
	// // 保存
	// String domainKey = "DM01";
	// String experienceKey = "EL01";
	// projectAuditDomainView.setDomainKey(domainKey);
	// projectAuditDomainView.setExperienceKey(experienceKey);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/domain-save").contentType(APPLICATION_JSON_UTF8)
	// .content(mapper.writeValueAsString(projectAuditDomainView)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditDomainView projectAuditDomainView2 =
	// mapper.readValue(content, ProjectAuditDomainView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditDomainView2:" +
	// projectAuditDomainView2);
	//
	// AssertJUnit.assertEquals(domainKey,
	// projectAuditDomainView2.getDomainKey());
	// AssertJUnit.assertEquals(experienceKey,
	// projectAuditDomainView2.getExperienceKey());
	// }
	//
	// @Test(priority = 52)
	// public void testDomainSave() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramNameA = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// String paramNameB = "projectAuditDomainKey";
	//
	// String workId = "B-30728";
	// ProjectAuditView projectAuditView =
	// projectAuditService.selectProjectAuditViewByWorkId(workId);
	// String domainKey = "DM01";
	//
	// List<ProjectAuditDomain> projectAuditDomainList =
	// projectAuditDomainService.selectByProjectAuditIdAndDomainKey(projectAuditView.getId(),
	// domainKey.toString());
	// ProjectAuditDomain projectAuditDomain = new ProjectAuditDomain();
	// if (null != projectAuditDomainList && 0 < projectAuditDomainList.size())
	// {
	// projectAuditDomain = projectAuditDomainList.get(0);
	// }
	//
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/domain").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditDomain.getId()));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditDomainView projectAuditDomainView = (ProjectAuditDomainView)
	// modelMap2.get("projectAuditDomainView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditDomainView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditDomainView.getProjectAuditId());
	//
	// // 保存
	// String newExperienceKey = "EL01";
	// projectAuditDomainView.setExperienceKey(newExperienceKey);
	// ObjectMapper mapper = new ObjectMapper();
	// MediaType APPLICATION_JSON_UTF8 = new
	// MediaType(MediaType.APPLICATION_JSON.getType(),
	// MediaType.APPLICATION_JSON.getSubtype(),
	// Charset.forName("utf8"));
	// ResultActions resultActions3 =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/domain-save").contentType(APPLICATION_JSON_UTF8)
	// .content(mapper.writeValueAsString(projectAuditDomainView)));
	//
	// MvcResult mvcResult3 = resultActions3.andReturn();
	//
	// MockHttpServletResponse mockHttpServletResponse =
	// mvcResult3.getResponse();
	// String content = mockHttpServletResponse.getContentAsString();
	//
	// ProjectAuditDomainView projectAuditDomainView2 =
	// mapper.readValue(content, ProjectAuditDomainView.class);
	// logger.debug("=====客户端获得反馈数据 projectAuditDomainView2:" +
	// projectAuditDomainView2);
	//
	// AssertJUnit.assertEquals(domainKey,
	// projectAuditDomainView2.getDomainKey());
	// AssertJUnit.assertEquals(newExperienceKey,
	// projectAuditDomainView2.getExperienceKey());
	// }
	//
	// @Test(priority = 53)
	// public void testDomainDelete() throws Exception {
	// ProjectAuditView projectAuditView1 = loginStaff();
	//
	// // 进入信息编辑页面
	// String paramNameA = "projectAuditId";
	// String projectAuditId = projectAuditView1.getId();
	// String paramNameB = "projectAuditDomainKey";
	//
	// String workId = "B-30728";
	// ProjectAuditView projectAuditView =
	// projectAuditService.selectProjectAuditViewByWorkId(workId);
	// String domainKey = "DM01";
	//
	// List<ProjectAuditDomain> projectAuditDomainList =
	// projectAuditDomainService.selectByProjectAuditIdAndDomainKey(projectAuditView.getId(),
	// domainKey.toString());
	// ProjectAuditDomain projectAuditDomain = new ProjectAuditDomain();
	// if (null != projectAuditDomainList && 0 < projectAuditDomainList.size())
	// {
	// projectAuditDomain = projectAuditDomainList.get(0);
	// }
	//
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/domain").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditDomain.getId()));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// ProjectAuditDomainView projectAuditDomainView = (ProjectAuditDomainView)
	// modelMap2.get("projectAuditDomainView");
	// logger.debug("=====客户端获得反馈数据 projectAuditView2:" +
	// projectAuditDomainView);
	//
	// AssertJUnit.assertEquals(projectAuditId,
	// projectAuditDomainView.getProjectAuditId());
	//
	// // 删除
	// this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/domain-delete").param(paramNameA,
	// projectAuditId).param(paramNameB, projectAuditDomain.getId()));
	//
	// List<ProjectAuditDomain> projectAuditDomainListNew =
	// projectAuditDomainService.selectByProjectAuditIdAndDomainKey(projectAuditView.getId(),
	// domainKey.toString());
	// Integer expected = new Integer(0);
	// AssertJUnit.assertEquals(expected, new
	// Integer(projectAuditDomainListNew.size()));
	// }
	//
	// @SuppressWarnings("unchecked")
	// @Test(priority = 54)
	// public void testMyProjectList() throws Exception {
	// String workId = "B-30728";
	// ProjectAuditView projectAuditView =
	// projectAuditService.selectProjectAuditViewByWorkId(workId);
	// String paramName1 = "projectAuditId";
	// String projectAuditId = projectAuditView.getId();
	// ResultActions resultActions =
	// this.mockMvc.perform(MockMvcRequestBuilders.post("/projectAudit/project-list").param(paramName1,
	// projectAuditId));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<ProjectView> projectViewList = (List<ProjectView>)
	// modelMap.get("projectViewList");
	// logger.debug("=====客户端获得反馈数据 projectViewList.size():" +
	// projectViewList.size());
	// for (ProjectView projectView : projectViewList) {
	// logger.debug("=====客户端获得反馈数据 projectView:" + projectView);
	// }
	// // Assert.assertEquals(projectAuditId, projectAuditViewRead.getId());
	// }
	//
	// @SuppressWarnings("unchecked")
	// @Test(priority = 61)
	// public void testProjectAuditQuery() throws Exception {
	// String paramName1 = "workId";
	// // [B-30728]吕帅
	// String staffWorkId = "B-30728";
	// String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
	// System.out.println("encryptString\t" + paramValue1);
	// // 浏览器会自动解码
	// try {
	// paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// String paramName2 = "conditionType";
	// String paramValue2 = Constants.SKILL_INFO;
	// // Step 1: 模拟登陆
	// ResultActions resultActions = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-query").param(paramName1,
	// paramValue1).param(paramName2, paramValue2));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<Dictionary> dictionaryList = (List<Dictionary>)
	// modelMap.get("dictionaryList");
	// String conditionType = (String) modelMap.get("conditionType");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size():" +
	// dictionaryList.size());
	// for (Dictionary dictionary : dictionaryList) {
	// logger.debug("=====客户端获得反馈数据 dictionary:" + dictionary);
	// }
	// logger.debug("=====客户端获得反馈数据 conditionType:" + conditionType);
	// }
	//
	// @SuppressWarnings("unchecked")
	// @Test(priority = 62)
	// public void testQueryProjectAuditListBySkill() throws Exception {
	//
	// String paramName1 = "workId";
	// // [B-30728]吕帅
	// String staffWorkId = "B-30728";
	// String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
	// System.out.println("encryptString\t" + paramValue1);
	// // 浏览器会自动解码
	// try {
	// paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// String paramName2 = "conditionType";
	// String paramValue2 = Constants.SKILL_INFO;
	//
	// // Step 1: 模拟登陆
	// ResultActions resultActions = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-query").param(paramName1,
	// paramValue1).param(paramName2, paramValue2));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<Dictionary> dictionaryList = (List<Dictionary>)
	// modelMap.get("dictionaryList");
	// String conditionType = (String) modelMap.get("conditionType");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size():" +
	// dictionaryList.size());
	// for (Dictionary dictionary : dictionaryList) {
	// logger.debug("=====客户端获得反馈数据 dictionary:" + dictionary);
	// }
	// logger.debug("=====客户端获得反馈数据 conditionType:" + conditionType);
	//
	// String loginWorkId = "B-21945";
	// session.setAttribute("workId", loginWorkId);
	//
	// String paramName3 = "queryCondition";
	// String paramValue3 = "{\"queryString\":[\"" +
	// dictionaryList.get(0).getKeyName() + "\"], \"conditionType\":\"" +
	// paramValue2 + "\"}";
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-list").param(paramName3,
	// paramValue3).session(session));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>)
	// modelMap2.get("projectAuditViewList");
	// String resourceIds = (String) modelMap2.get("resourceIds");
	// String workId = (String) modelMap2.get("workId");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size:" +
	// projectAuditViewList.size());
	// for (ProjectAuditView projectAuditView : projectAuditViewList) {
	// logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditView);
	// }
	// logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
	// logger.debug("=====客户端获得反馈数据 workId:" + workId);
	// }
	//
	// @SuppressWarnings("unchecked")
	// @Test(priority = 62)
	// public void testQueryProjectAuditListByDomain() throws Exception {
	//
	// String paramName1 = "workId";
	// // [B-30728]吕帅
	// String staffWorkId = "B-30728";
	// String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
	// System.out.println("encryptString\t" + paramValue1);
	// // 浏览器会自动解码
	// try {
	// paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// String paramName2 = "conditionType";
	// String paramValue2 = Constants.DOMAIN_INFO;
	//
	// // Step 1: 模拟登陆
	// ResultActions resultActions = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-query").param(paramName1,
	// paramValue1).param(paramName2, paramValue2));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<Dictionary> dictionaryList = (List<Dictionary>)
	// modelMap.get("dictionaryList");
	// String conditionType = (String) modelMap.get("conditionType");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size():" +
	// dictionaryList.size());
	// for (Dictionary dictionary : dictionaryList) {
	// logger.debug("=====客户端获得反馈数据 dictionary:" + dictionary);
	// }
	// logger.debug("=====客户端获得反馈数据 conditionType:" + conditionType);
	//
	// String loginWorkId = "B-21945";
	// session.setAttribute("workId", loginWorkId);
	//
	// String paramName3 = "queryCondition";
	// String paramValue3 = "{\"queryString\":[\"" +
	// dictionaryList.get(0).getKeyName() + "\"], \"conditionType\":\"" +
	// paramValue2 + "\"}";
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-list").param(paramName3,
	// paramValue3).session(session));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>)
	// modelMap2.get("projectAuditViewList");
	// String resourceIds = (String) modelMap2.get("resourceIds");
	// String workId = (String) modelMap2.get("workId");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size:" +
	// projectAuditViewList.size());
	// for (ProjectAuditView projectAuditView : projectAuditViewList) {
	// logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditView);
	// }
	// logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
	// logger.debug("=====客户端获得反馈数据 workId:" + workId);
	// }
	//
	// @SuppressWarnings("unchecked")
	// @Test(priority = 64)
	// public void testQueryProjectAuditListByWorkPlace() throws Exception {
	//
	// String paramName1 = "workId";
	// // [B-30728]吕帅
	// String staffWorkId = "B-30728";
	// String paramValue1 = QEncodeUtil.encrypt(staffWorkId);
	// System.out.println("encryptString\t" + paramValue1);
	// // 浏览器会自动解码
	// try {
	// paramValue1 = URLDecoder.decode(paramValue1, Constants.ENCODING);
	// } catch (UnsupportedEncodingException e) {
	// e.printStackTrace();
	// }
	// String paramName2 = "conditionType";
	// String paramValue2 = Constants.CANDIDATE_CITY_INFO;
	//
	// // Step 1: 模拟登陆
	// ResultActions resultActions = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-query").param(paramName1,
	// paramValue1).param(paramName2, paramValue2));
	// MvcResult mvcResult = resultActions.andReturn();
	// ModelAndView mav = mvcResult.getModelAndView();
	// Map<String, Object> modelMap = mav.getModel();
	// List<Dictionary> dictionaryList = (List<Dictionary>)
	// modelMap.get("dictionaryList");
	// String conditionType = (String) modelMap.get("conditionType");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size():" +
	// dictionaryList.size());
	// for (Dictionary dictionary : dictionaryList) {
	// logger.debug("=====客户端获得反馈数据 dictionary:" + dictionary);
	// }
	// logger.debug("=====客户端获得反馈数据 conditionType:" + conditionType);
	//
	// String loginWorkId = "B-21945";
	// session.setAttribute("workId", loginWorkId);
	//
	// String paramName3 = "queryCondition";
	// String paramValue3 = "{\"queryString\":[\"" +
	// dictionaryList.get(0).getKeyName() + "\"], \"conditionType\":\"" +
	// paramValue2 + "\"}";
	// ResultActions resultActions2 = this.mockMvc
	// .perform(MockMvcRequestBuilders.post("/projectAudit/projectAudit-list").param(paramName3,
	// paramValue3).session(session));
	// MvcResult mvcResult2 = resultActions2.andReturn();
	// ModelAndView mav2 = mvcResult2.getModelAndView();
	// Map<String, Object> modelMap2 = mav2.getModel();
	// List<ProjectAuditView> projectAuditViewList = (List<ProjectAuditView>)
	// modelMap2.get("projectAuditViewList");
	// String resourceIds = (String) modelMap2.get("resourceIds");
	// String workId = (String) modelMap2.get("workId");
	//
	// logger.debug("=====客户端获得反馈数据 projectAuditView.size:" +
	// projectAuditViewList.size());
	// for (ProjectAuditView projectAuditView : projectAuditViewList) {
	// logger.debug("=====客户端获得反馈数据 projectAuditView:" + projectAuditView);
	// }
	// logger.debug("=====客户端获得反馈数据 resourceIds:" + resourceIds);
	// logger.debug("=====客户端获得反馈数据 workId:" + workId);
	// }
}
