<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>资源清单新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/pdrc.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/task.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
</head>
<body>
	<div data-role="page" id="taskitem-create">
		<div role="main" class="ui-context">
			<form id="taskitem-create-form" method="post" action="">
				<input type="hidden" id="id" value="${taskItemView.id}"> <input
					type="hidden" id="taskId" value="${taskItemView.taskId}"> <input
					type="hidden" id="workPlace" value="${taskItemView.workPlace}">
				<input type="hidden" id="planStartDate"
					value="${taskItemView.planStartDate}"> <input type="hidden"
					id="planEndDate" value="${taskItemView.planEndDate}">
				<ul data-role="listview" data-inset="true">
					<li><h2>基本信息</h2></li>
					<li><span>任务描述</span><input type="text"
						name="taskItemDescription" id="taskItemDescription"
						value="${taskItemView.taskItemDescription}"></li>
					<li><span>所需人数</span><input type="text"
						name="enginnerAmount" id="enginnerAmount"
						value="${taskItemView.enginnerAmount}"></li>
					<li>
						<div class="ui-field-contain">
							<label for="fullname">工作城市</label> <input
								id="autocomplete_input_city" data-type="search"
								placeholder="不限|武汉|深圳|东莞">
							<ul id="autocomplete-city" data-role="listview"
								data-inset="true" data-filter="true"
								data-input="#autocomplete_input_city"></ul>
						</div>	
					</li>
					<li><span>工作年限</span><input type="text" name="serviceYear"
						id="serviceYear" value="${taskItemView.serviceYear}"></li>
					<li><span>工作量（BSM）</span><input type="text" name="bsm"
						id="bsm" value="${taskItemView.bsm}"></li>
					<li><span>预计任务开始日期</span><input type="date"
						name="planStartDateString" formaction="yyyy-MM-dd"
						id="planStartDateString"
						value="${taskItemView.planStartDateString}"></li>
					<li><span>预计任务结束日期</span><input type="date"
						name="planEndDateString" formaction="yyyy-MM-dd"
						id="planEndDateString" value="${taskItemView.planEndDateString}"></li>
					<li>
						<a id="skill-create" href="#"
							rel="external"><h2>技能要求</h2></a>
							<c:set var="listSize" scope="session"
								value="${taskItemView.taskItemDomainViewList.size()}" />
							<c:if test="${listSize > 0}">
							<ul>
								<li>
									<c:forEach var="taskItemSkillView"
										items="${taskItemView.taskItemSkillViewList}">
										<a
											href="${pageContext.request.contextPath}/task/skill-create?taskItemId=${taskItemSkillView.id}"
											rel="external"><ul data-role="listview" data-inset="true">
												<li><span>技能</span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													<span class="float:right;">${taskItemSkillView.skillName}</span>
													<span>熟练程度</span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													<span class="float:right;">${taskItemSkillView.proficiencyName}</span></li>
											</ul></a>
									</c:forEach>
								</li>
							</ul></c:if>
					</li>
					<li>
							<a id="domain-create"
								href="#"
								rel="external"><h2>领域要求</h2></a>
							<c:set var="listSize" scope="session"
								value="${taskItemView.taskItemDomainViewList.size()}" />
							<c:if test="${listSize > 0}">
								<ul>
								<li><c:forEach var="taskItemDomainView"
										items="${taskItemView.taskItemDomainViewList}">
										<a
											href="${pageContext.request.contextPath}/task/domain-create?taskItemId=${taskItemDomainView.id}"
											rel="external"><ul data-role="listview" data-inset="true">
												<li><span>领域</span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													<span class="float:right;">${taskItemDomainView.domainName}</span>
													<span>经验程度</span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													<span class="float:right;">${taskItemDomainView.experienceName}</span></li>
											</ul></a>
									</c:forEach></li></ul>
							</c:if>
					</li>
					<li>
						<div class="ui-field-contain pdrc-btnrow">
							<input type="submit" value="新增" id="taskitem-create-btn"> 
							<input type="button" value="返回" id="taskitem-create-rtn-btn">
						</div>
					</li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>