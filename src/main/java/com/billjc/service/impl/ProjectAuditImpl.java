package com.billjc.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.ProjectAuditMapper;
import com.billjc.model.Dictionary;
import com.billjc.model.Project;
import com.billjc.model.ProjectAudit;
import com.billjc.model.User;
import com.billjc.service.DictionaryService;
import com.billjc.service.ProjectAuditService;
import com.billjc.service.ProjectService;
import com.billjc.service.UserService;
import com.billjc.util.Constants;
import com.billjc.vo.ProjectAuditView;

@Service
public class ProjectAuditImpl implements ProjectAuditService {

	private static Logger logger = LoggerFactory
			.getLogger(ProjectAuditImpl.class);

	private SimpleDateFormat sf = new SimpleDateFormat(
			Constants.SIMPLE_DATE_FORMAT);

	@Autowired
	private ProjectAuditMapper projectAuditMapper;

	@Autowired
	private DictionaryService dictionaryService;

	@Autowired
	private UserService userService;

	@Autowired
	private ProjectService projectService;

	@Override
	public int insert(ProjectAudit projectAudit) {
		return projectAuditMapper.insert(projectAudit);
	}

	@Override
	public int insertSelective(ProjectAuditView projectAuditView) {
		ProjectAudit projectAudit = new ProjectAudit();
		BeanUtils.copyProperties(projectAuditView, projectAudit);

		return projectAuditMapper.insertSelective(projectAudit);
	}

	@Override
	public ProjectAuditView selectByPrimaryKey(String id) {
		ProjectAudit projectAudit = projectAuditMapper.selectByPrimaryKey(id);
		ProjectAuditView projectAuditView = new ProjectAuditView();
		if (null != projectAudit) {
			BeanUtils.copyProperties(projectAudit, projectAuditView);
			setViewInfo(projectAuditView);
		}

		return projectAuditView;
	}

	@Override
	public List<ProjectAuditView> selectByAuditWorkId(String auditWorkId) {
		List<ProjectAuditView> projectAuditViewList = new ArrayList<ProjectAuditView>();

		List<ProjectAudit> projectAuditList = projectAuditMapper
				.selectByAuditWorkId(auditWorkId);
		logger.debug("size: " + projectAuditList.size());

		return setViewListInfo(projectAuditViewList, projectAuditList);
	}

	@Override
	public List<ProjectAuditView> selectByProjectId(String projectId) {
		List<ProjectAuditView> projectAuditViewList = new ArrayList<ProjectAuditView>();

		List<ProjectAudit> projectAuditList = projectAuditMapper
				.selectByProjectId(projectId);
		logger.debug("size: " + projectAuditList.size());
		if (null == projectAuditList || 0 == projectAuditList.size()) {
			projectAuditList = new ArrayList<ProjectAudit>();
			ProjectAudit projectAudit = new ProjectAudit();
			projectAudit.setProjectId(projectId);
			projectAudit.setAuditState(1);
			String auditContent = "这里填写给该项目的审核意见";
			projectAudit.setAuditContent(auditContent);
			projectAuditList.add(projectAudit);
		}

		return setViewListInfo(projectAuditViewList, projectAuditList);
	}

	@Override
	public List<ProjectAuditView> selectByAuditTypeIds(List<Integer> domainList) {
		List<ProjectAuditView> projectAuditViewList = new ArrayList<ProjectAuditView>();
		List<ProjectAudit> projectAuditList = projectAuditMapper
				.selectByAuditTypeIds(domainList);
		logger.debug("size: " + projectAuditList.size());

		return setViewListInfo(projectAuditViewList, projectAuditList);
	}

	@Override
	public int updateByPrimaryKeySelective(ProjectAuditView projectAuditView) {
		ProjectAudit projectAudit = new ProjectAudit();
		BeanUtils.copyProperties(projectAuditView, projectAudit);

		return projectAuditMapper.updateByPrimaryKeySelective(projectAudit);
	}

	@Override
	public int updateByPrimaryKey(ProjectAuditView projectAuditView) {
		ProjectAudit projectAudit = new ProjectAudit();
		BeanUtils.copyProperties(projectAuditView, projectAudit);

		return projectAuditMapper.updateByPrimaryKey(projectAudit);
	}

	@Override
	public int deleteByPrimaryKey(String id) {
		return projectAuditMapper.deleteByPrimaryKey(id);
	}

	private void setViewInfo(ProjectAuditView projectAuditView) {
		// 评价项
		Dictionary auditDictionary = dictionaryService
				.selectByPK(projectAuditView.getAuditTypeId());
		if (null != auditDictionary) {
			projectAuditView.setAuditName(auditDictionary.getValue());
		}

		Integer auditState = projectAuditView.getAuditState();
		//
		if (null != auditState) {
			String auditStateString = auditState == 1 ? "通过" : "不通过";
			projectAuditView.setAuditStateString(auditStateString);
		}

		// Audit名称
		User staffUser = userService
				.selectByWorkId(projectAuditView.getAuditWorkId());
		if (null != staffUser) {
			projectAuditView.setAuditStaffName(staffUser.getUsername());
		}

		projectAuditView
				.setAuditCreateDateString(projectAuditView.getAuditCreateDate() == null ? ""
						: sf.format(projectAuditView.getAuditCreateDate()));

		// 设置项目名称
		Project project = projectService
				.selectByPrimaryKey(projectAuditView.getProjectId());
		if (null != project) {
			projectAuditView.setProjectName(project.getProjectName());
			projectAuditView.setProjectMgrWorkId(project.getProjectMgrWorkId());
			projectAuditView.setProjectMgrName(project.getProjectMgrName());

			Date projectStartDate = project.getProjectStartDate();

			projectAuditView
					.setProjectStartDateString(projectStartDate == null ? ""
							: sf.format(projectStartDate));
			projectAuditView.setProjectEndDateString(
					project.getProjectEndDate() == null ? ""
							: sf.format(project.getProjectEndDate()));

			String projectStateString = project.getProState();
			projectAuditView.setProjectStateString(projectStateString);
		}

	}

	private List<ProjectAuditView> setViewListInfo(
			List<ProjectAuditView> projectAuditViewList,
			List<ProjectAudit> projectAuditList) {
		ProjectAuditView projectAuditView = null;
		for (ProjectAudit projectAudit : projectAuditList) {
			projectAuditView = new ProjectAuditView();
			if (null == projectAudit) {
				logger.error("projectAudit is null");
			}

			BeanUtils.copyProperties(projectAudit, projectAuditView);

			setViewInfo(projectAuditView);

			projectAuditViewList.add(projectAuditView);
		}

		return mixViewList(projectAuditViewList);
	}

	private List<ProjectAuditView> mixViewList(
			List<ProjectAuditView> projectAuditViewList) {
		Map<String, List<ProjectAuditView>> projectAuditViewMap = new TreeMap<String, List<ProjectAuditView>>();

		List<ProjectAuditView> tempProjectAuditViews = null;
		for (ProjectAuditView projectAuditView : projectAuditViewList) {
			tempProjectAuditViews = projectAuditViewMap
					.get(projectAuditView.getProjectId());
			if (null == tempProjectAuditViews
					|| 0 == tempProjectAuditViews.size()) {
				tempProjectAuditViews = new ArrayList<ProjectAuditView>();
			}

			tempProjectAuditViews.add(projectAuditView);

			projectAuditViewMap.put(projectAuditView.getProjectId(),
					tempProjectAuditViews);
		}

		List<ProjectAuditView> mixViewList = new ArrayList<ProjectAuditView>();
		ProjectAuditView newProjectAuditView = null;
		for (Map.Entry<String, List<ProjectAuditView>> entry : projectAuditViewMap
				.entrySet()) {

			System.out.println("Key = " + entry.getKey() + ", Value = "
					+ entry.getValue());
			newProjectAuditView = new ProjectAuditView();
			String projectId = entry.getKey();
			newProjectAuditView.setProjectId(projectId);
			/** 目标合理性 */
			List<ProjectAuditView> reasonableObjectives = new ArrayList<ProjectAuditView>();

			/** 操作规范性 */
			List<ProjectAuditView> operationStandards = new ArrayList<ProjectAuditView>();

			/** 数据准确性 */
			List<ProjectAuditView> accurateDatas = new ArrayList<ProjectAuditView>();

			List<ProjectAuditView> projectAuditViews = entry.getValue();

			// 先将第一个实例的信息复制过去
			if (null != projectAuditViews && 0 < projectAuditViews.size()) {
				BeanUtils.copyProperties(projectAuditViews.get(0),
						newProjectAuditView);
			}

			for (ProjectAuditView projectAuditView : projectAuditViews) {
				// 评价项
				Dictionary auditDictionary = dictionaryService
						.selectByPK(projectAuditView.getAuditTypeId());
				if (null != auditDictionary) {
					projectAuditView.setAuditName(auditDictionary.getValue());

					switch (auditDictionary.getType()) {
					case Constants.REASONABLE_OBJECTIVE_INFO:
						reasonableObjectives.add(projectAuditView);
						break;

					case Constants.OPERATION_STANDARD_INFO:
						operationStandards.add(projectAuditView);
						break;

					case Constants.ACCURATE_DATA_INFO:
						accurateDatas.add(projectAuditView);
						break;

					default:
						break;
					}
				}

			}

			newProjectAuditView.setReasonableObjectives(reasonableObjectives);
			newProjectAuditView.setOperationStandards(operationStandards);
			newProjectAuditView.setAccurateDatas(accurateDatas);

			mixViewList.add(newProjectAuditView);
		}

		return mixViewList;
	}

	@Override
	public int saveAndUpdate(ProjectAuditView projectAuditView) {
		int result = 0;
		ProjectAudit projectAudit = new ProjectAudit();
		BeanUtils.copyProperties(projectAuditView, projectAudit);
		String id = projectAudit.getId();
		if (null == id || "".equals(id.trim())) {
			id = UUID.randomUUID().toString();
			projectAudit.setId(id);
			Date auditCreateDate = new Date();
			projectAudit.setAuditCreateDate(auditCreateDate);
			result = projectAuditMapper.insertSelective(projectAudit);
		} else {
			Date auditUpdateDate = new Date();
			projectAudit.setAuditUpdateDate(auditUpdateDate);
			result = projectAuditMapper
					.updateByPrimaryKeySelective(projectAudit);
		}

		return result;
	}

	@Override
	public List<Integer> selectAuditTypeIdsByParams(String projectId,
			String auditWorkId, String type) {
		return projectAuditMapper.selectAuditTypeIdsByParams(projectId, auditWorkId,
				type);
	}

}
