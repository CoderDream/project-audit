package com.billjc.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.billjc.model.Dictionary;
import com.billjc.model.Project;
import com.billjc.service.DictionaryService;
import com.billjc.service.ProjectAuditService;
import com.billjc.service.ProjectService;
import com.billjc.util.Constants;
import com.billjc.util.PowerUtil;
import com.billjc.util.PropertiesUtil;
import com.billjc.util.QEncodeUtil;
import com.billjc.vo.ProjectAuditView;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 项目评审控制器
 * 
 * @author xulin28709
 *
 */
@Controller
@RequestMapping("/audit")
public class ProjectAuditController extends BaseController {

	private static Logger logger = LoggerFactory
					.getLogger(ProjectAuditController.class);

	@Autowired
	private ProjectAuditService projectAuditService;

	@Autowired
	private ProjectService projectService;

	@Autowired
	private DictionaryService dictionaryService;

	/**
	 * 通过项目信息查询
	 * 
	 * @param model
	 *            页面传过来的模型对象
	 * @param workId
	 *            加密过的员工号
	 * @param session
	 *            缓存
	 * @return 模型视图对象
	 */
	@RequestMapping("/query-by-project")
	public ModelAndView queryByProject(ModelMap model, String workId,
					HttpSession session) {
		logger.debug("queryBySkill encodeWorkId {}", workId);
		// 解密workId
		workId = QEncodeUtil.decrypt(workId);
		logger.debug("queryBySkill decodeWorkId {}", workId);
		session.setAttribute("workId", workId);
		ModelAndView mav = new ModelAndView("/audit/query-by-project");
		List<Integer> resourceIds = setProjectAuditPower(session, mav);
		if (null == resourceIds || !(hasPower(Constants.AUDIT_VIEW, resourceIds)
						|| hasPower(Constants.AUDIT_ALL, resourceIds))) {
			mav = new ModelAndView("error");
		}
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		mav.addObject("currentTime", sf.format(new Date()));
		return mav;
	}

	/**
	 * @param powerName
	 *            权限名称
	 * @param resourceIds
	 *            权限ID列表
	 * @return 是否存在此权限
	 */
	private boolean hasPower(String powerName, List<Integer> resourceIds) {

		for (Integer integer : resourceIds) {
			String power = PropertiesUtil.getProperty(integer.toString());
			if (null != power && power.equals(powerName)) {
				return true;
			}
		}

		return false;
	}

	/**
	 * 通过审计科目查询
	 * 
	 * @param model
	 *            页面传过来的模型对象
	 * @param workId
	 *            加密过的员工号
	 * @param session
	 *            缓存
	 * @return 模型视图对象
	 */
	@RequestMapping("/query-by-audititem")
	public ModelAndView queryByAudititem(ModelMap model, String workId,
					HttpSession session) {
		logger.debug("queryByAudititem encodeWorkId {}", workId);
		// 解密workId
		workId = QEncodeUtil.decrypt(workId);
		logger.debug("queryByAudititem decodeWorkId {}", workId);
		session.setAttribute("workId", workId);
		ModelAndView mav = new ModelAndView("/audit/query-by-audititem");

		List<Dictionary> dictionaryList = new ArrayList<Dictionary>();
		dictionaryList.addAll(dictionaryService
						.selectByType(Constants.REASONABLE_OBJECTIVE_INFO));
		dictionaryList.addAll(dictionaryService
						.selectByType(Constants.OPERATION_STANDARD_INFO));
		dictionaryList.addAll(dictionaryService
						.selectByType(Constants.ACCURATE_DATA_INFO));
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		mav.addObject("currentTime", sf.format(new Date()));
		model.addAttribute("dictionaryList", dictionaryList);
		logger.debug("dictionaryList size {}", dictionaryList.size());
		setProjectAuditPower(session, mav);
		return mav;
	}

	/**
	 * 通过审计科目查询项目审计列表
	 * 
	 * @param queryCondition
	 *            查询条件
	 * @param workId
	 *            加密过的员工号
	 * @param session
	 *            缓存
	 * @return 模型视图对象
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("/audit-list")
	public ModelAndView myAuditList(String queryCondition, String workId,
					HttpSession session) {
		logger.debug("myAuditList encodeWorkId {}", workId);
		// 解密workId
		workId = QEncodeUtil.decrypt(workId);
		logger.debug("myAuditList decodeWorkId {}", workId);
		session.setAttribute("workId", workId);
		ObjectMapper objectMapper = new ObjectMapper();
		List<Integer> queryList = new ArrayList<Integer>();
		try {
			List<LinkedHashMap<String, Object>> list = objectMapper
							.readValue("[" + queryCondition + "]", List.class);
			queryList = (List<Integer>) list.get(0).get("queryString");
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<ProjectAuditView> projectAuditViewList = projectAuditService
						.selectByAuditTypeIds(queryList);
		ModelMap model = new ModelMap();
		model.addAttribute("projectAuditViewList", projectAuditViewList);
		logger.debug("projectAuditViewList size {}",
						projectAuditViewList.size());

		ModelAndView mav = new ModelAndView("audit/audit-list");
		mav.addObject("projectAuditViewList", projectAuditViewList);
		setProjectAuditPower(session, mav);
		return mav;
	}

	/**
	 * 我发起的项目审计列表
	 * 
	 * @param workId
	 *            加密过的员工号
	 * @param session
	 *            缓存
	 * @return 模型和视图
	 */
	@RequestMapping("/my-audit")
	public ModelAndView myAudit(String workId, HttpSession session) {
		logger.debug("myAudit encodeWorkId {}", workId);
		// 解密workId
		workId = QEncodeUtil.decrypt(workId);
		logger.debug("myAudit decodeWorkId {}", workId);
		session.setAttribute("workId", workId);
		List<ProjectAuditView> projectAuditViewList = projectAuditService
						.selectByAuditWorkId(workId);
		ModelMap model = new ModelMap();
		model.addAttribute("projectAuditViewList", projectAuditViewList);
		logger.debug("projectAuditViewList size {}",
						projectAuditViewList.size());
		ModelAndView mav = new ModelAndView("audit/audit-list");
		mav.addObject("projectAuditViewList", projectAuditViewList);

		List<Integer> resourceIds = setProjectAuditPower(session, mav);
		if (null == resourceIds
						|| !hasPower(Constants.AUDIT_ALL, resourceIds)) {
			mav = new ModelAndView("error");
		}
		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		mav.addObject("currentTime", sf.format(new Date()));
		return mav;
	}

	/**
	 * 根据项目ID查询项目审计信息
	 * 
	 * @param projectId
	 *            项目编号
	 * @param session
	 *            缓存
	 * @return 模型和视图
	 */
	@RequestMapping("/audit")
	public ModelAndView projectAudit(String projectId, HttpSession session) {
		logger.debug("auditTypeId {}", projectId);

		// 根据不同的角色，进入不同的页面 TODO
		ModelAndView mav = new ModelAndView("audit/audit");
		List<ProjectAuditView> projectAuditViewList = projectAuditService
						.selectByProjectId(projectId);
		if (null != projectAuditViewList) {
			mav.addObject("projectAuditView", projectAuditViewList.get(0));
		} else {
			mav.addObject("projectAuditView", new ProjectAuditView());
		}

		setProjectAuditPower(session, mav);
		return mav;
	}

	/**
	 * 进入审计科目编辑页面（新增、修改、删除）
	 * 
	 * @param auditType
	 *            审计科目类别
	 * @param projectId
	 *            项目编号
	 * @param projectAuditTypeId
	 *            项目审查类别编号
	 * @param session
	 *            缓存
	 * @return 模型和视图
	 */
	@RequestMapping("/audit-update")
	public ModelAndView projectAuditUpdate(String auditType, String projectId,
					String projectAuditTypeId, HttpSession session) {
		logger.debug("projectAuditUpdate {}", auditType);
		logger.debug("projectAuditUpdate {}", projectId);
		logger.debug("projectAuditUpdate {}", projectAuditTypeId);
		ModelAndView mav = new ModelAndView("audit/audit-update");

		ProjectAuditView projectAuditView = null;
		if (null == projectAuditTypeId
						|| "".equals(projectAuditTypeId.trim())) {
			mav.addObject("operateType", "add");
			projectAuditView = new ProjectAuditView();
			projectAuditView.setProjectId(projectId);
			Project project = projectService.selectByPrimaryKey(projectId);
			if (null != project) {
				projectAuditView.setProjectName(project.getProjectName());
			}
			projectAuditView.setAuditState(1);
		} else {
			mav.addObject("operateType", "edit");
			projectAuditView = projectAuditService
							.selectByPrimaryKey(projectAuditTypeId);
		}

		String auditWorkId = (String) session.getAttribute("workId");
		List<Integer> auditTypeIds = projectAuditService
						.selectAuditTypeIdsByParams(projectId, auditWorkId,
										auditType);

		SimpleDateFormat sf = new SimpleDateFormat(
						Constants.COMPLEX_DATE_FORMAT2);
		mav.addObject("currentTime", sf.format(new Date()));
		mav.addObject("auditType", auditType);
		mav.addObject("auditTypeIds", auditTypeIds);
		mav.addObject("projectAuditView", projectAuditView);
		// setProjectAuditPower(projectAuditView, session, mav);
		return mav;
	}

	/**
	 * 删除审计科目
	 * 
	 * @param projectId
	 *            项目编号
	 * @param projectAuditTypeId
	 *            项目审查类别编号
	 * @param session
	 *            缓存
	 * @return 模型和视图
	 */
	@RequestMapping("/audit-delete")
	public ModelAndView projectAuditDelete(String projectId,
					String projectAuditTypeId, HttpSession session) {
		logger.debug("projectAuditDelete {}", projectId);
		logger.debug("projectAuditDelete {}", projectAuditTypeId);
		int deleteResult = projectAuditService
						.deleteByPrimaryKey(projectAuditTypeId);
		logger.debug("projectAuditDelete deleteResult {}", deleteResult);
		ModelAndView mav = new ModelAndView("audit/audit");
		List<ProjectAuditView> projectAuditViewList = projectAuditService
						.selectByProjectId(projectId);
		mav.addObject("projectAuditView", projectAuditViewList.get(0));
		// setProjectAuditPower(projectAuditViewList.get(0), session, mav);
		return mav;
	}

	/**
	 * 审计科目（新增/修改保存）
	 *
	 * @param projectAuditView
	 *            页面传过来的项目审计视图
	 * @param session
	 *            缓存
	 * @return 返回给页面的信息
	 */
	@RequestMapping(value = "/audit-update-save", method = RequestMethod.POST)
	public ResponseEntity<ProjectAuditView> projectAuditUpdateAndSave(
					@RequestBody ProjectAuditView projectAuditView,
					HttpSession session) {
		logger.debug("auditUpdateAndSave projectAuditView {}",
						projectAuditView);
		if (null == projectAuditView || "".equals(projectAuditView.getId())) {
			session.setAttribute("operateType", "add");
		} else {
			session.setAttribute("operateType", "edit");
		}

		String workId = (String) session.getAttribute("workId");
		projectAuditView.setAuditWorkId(workId);
		projectAuditService.saveAndUpdate(projectAuditView);

		return new ResponseEntity<ProjectAuditView>(projectAuditView,
						HttpStatus.OK);
	}

	/**
	 * 基于功能（增删改查）的权限在这里控制，基于数据的权限通过CSS在页面进行控制（判断登陆workId与创建的auditWorkId是否相等）
	 * 
	 * @param session
	 *            缓存
	 * @param mav
	 *            模型和视图
	 * @return 权限ID列表
	 */
	private List<Integer> setProjectAuditPower(HttpSession session,
					ModelAndView mav) {
		logger.debug("setPower", mav);
		String workId = (String) session.getAttribute("workId");
		List<Integer> resourceIds = PowerUtil.findResourceIds(workId);

		mav.addObject("resourceIds", resourceIds);
		// mav.addObject("workId", workId);
		return resourceIds;
	}

}
