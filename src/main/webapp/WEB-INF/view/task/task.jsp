<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>任务信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/pdrc.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js?id='${currentTime}'"></script>
<script type="text/javascript">
	var powers = ${resourceIds};
	var workId = '${workId}';
</script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<li><a
					href="${pageContext.request.contextPath}/task/task-update?taskId=${taskView.id}"
					rel="external"><h2>基本信息</h2></a>
				<li class="pdrc-li"><span>任务名称</span><span class="pdrc-span">${taskView.taskName}</span></li>
				<li class="pdrc-li"><span>任务描述</span><span class="pdrc-span"><span>${taskView.taskDescription}</span></span></li>
				<li class="pdrc-li"><span>所属项目</span><span class="pdrc-span"><span>${taskView.projectName}</span></span></li>
				<li class="pdrc-li"><span>联系方式</span><span class="pdrc-span">${taskView.contactsName}</span></li>
				<li class="pdrc-li"><span>验收标准</span><span class="pdrc-span">${taskView.acceptanceStandard}</span></li>
				<li class="pdrc-li"><span>验收人员</span><span class="pdrc-span">${taskView.acceptanceName}</span></li>
				<li class="pdrc-li"><span>任务状态</span><span class="pdrc-span">${taskView.taskStateString}</span></li>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="61" class="pdrc-cannotedit pdrc-iconPlus"
					href="${pageContext.request.contextPath}/task/taskitem-update?taskId=${taskView.id}"
					rel="external" ><h2>任务所需资源清单</h2></a></li>
				<li><c:forEach var="taskItemView"
						items="${taskView.taskItemViewList}">
						<div role="main" class="ui-context">
							<ul data-role="listview" data-inset="true">
								<li><a
									href="${pageContext.request.contextPath}/task/taskitem?taskItemId=${taskItemView.id}"
									rel="external"><h2>任务详情</h2></a></li>
								<li class="pdrc-li"><span>任务描述</span><span
									class="pdrc-span"><span>${taskItemView.taskItemDescription}</span></span></li>
								<li class="pdrc-li"><span>所需人数</span><span
									class="pdrc-span">${taskItemView.enginnerAmount}</span></li>
								<li class="pdrc-li"><span>工作城市</span><span
									class="pdrc-span">${taskItemView.workPlaceArray}</span></li>
								<li class="pdrc-li"><span>工作年限</span><span
									class="pdrc-span">${taskItemView.serviceYear}</span></li>
								<li class="pdrc-li"><span>工作量（BSM）</span><span
									class="pdrc-span">${taskItemView.bsm}</span></li>
								<li class="pdrc-li"><span>预计任务开始日期</span><span
									class="pdrc-span">${taskItemView.planStartDateString}</span></li>
								<li class="pdrc-li"><span>预计任务结束日期</span><span
									class="pdrc-span">${taskItemView.planEndDateString}</span></li>
								<li><h2>技能要求</h2>
								<li><c:forEach var="taskItemSkillView"
										items="${taskItemView.taskItemSkillViewList}">
										<ul data-role="listview" data-inset="true">
											<li class="pdrc-li"><span>${taskItemSkillView.skillName}</span>
												<span class="pdrc-span">${taskItemSkillView.proficiencyName}</span></li>
										</ul>
									</c:forEach></li>
								<li><h2>领域要求</h2>
								<li><c:forEach var="taskItemDomainView"
										items="${taskItemView.taskItemDomainViewList}">
										<ul data-role="listview" data-inset="true">
											<li class="pdrc-li"><span>${taskItemDomainView.domainName}</span>
												<span class="pdrc-span">${taskItemDomainView.experienceName}</span></li>
										</ul>
									</c:forEach></li>
							</ul>
						</div>
					</c:forEach></li>
			</ul>
		</div>
	</div>
</body>
</html>