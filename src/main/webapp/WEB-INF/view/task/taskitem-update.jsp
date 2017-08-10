<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>资源清单</title>
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
<script
	src="${pageContext.request.contextPath}/assets/js/taskitem-update.js"></script>
<script type="text/javascript">
	var powers = ${resourceIds};
	var operateType = '${operateType}';
	var workId = '${workId}';
</script>
</head>
<body>
	<div data-role="page">
		<div data-role="content" class="ui-context">
			<form id="taskitem-form" method="post" action="">
				<input type="hidden" id="id" value="${taskItemView.id}"> <input
					type="hidden" id="taskId" value="${taskItemView.taskId}"> <input
					type="hidden" id="workPlace" value="${taskItemView.workPlace}">
				<input type="hidden" id="planStartDate"
					value="${taskItemView.planStartDate}"> <input type="hidden"
					id="planEndDate" value="${taskItemView.planEndDate}">
				<h2>基本信息</h2>
				<span>任务描述</span><input type="text" name="taskItemDescription"
					id="taskItemDescription"
					value="${taskItemView.taskItemDescription}"> <span>所需人数</span><input
					type="text" name="enginnerAmount" id="enginnerAmount"
					value="${taskItemView.enginnerAmount}">
				<div class="ui-field-contain">
					<label for="workPlaceItem">工作城市</label>
					<select id='workPlaceItem'>
						<option value=''>--请选择工作城市--</option>
					</select>
				</div>
				<span>工作年限</span><input type="text" name="serviceYear"
					id="serviceYear" value="${taskItemView.serviceYear}"> <span>工作量（BSM）</span><input
					type="text" name="bsm" id="bsm" value="${taskItemView.bsm}">
				<span>预计任务开始日期</span><input type="date" name="planStartDateString"
					formaction="yyyy-MM-dd" id="planStartDateString"
					value="${taskItemView.planStartDateString}"> <span>预计任务结束日期</span><input
					type="date" name="planEndDateString" formaction="yyyy-MM-dd"
					id="planEndDateString" value="${taskItemView.planEndDateString}">
					<ul data-role="listview" data-inset="true">
					<li>
				<c:if test="${empty taskItemView.id}">
					<a id="skill-create" href="#" rel="external"><h2>技能要求</h2></a>
				</c:if>
				<c:if test="${not empty taskItemView.id}">
					<a id="skill-create"
						data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
						data-powercode="61" class="pdrc-cannotedit pdrc-iconPlus"
						href="/task/skill?taskItemId=${taskItemView.id}" rel="external"><h2>技能要求</h2></a>
					
				</c:if>	</li>
				<li>
				<c:forEach var="tisv" items="${taskItemView.taskItemSkillViewList}">
					<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
						<li class="pdrc-li"><a
							data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
							data-powercode="$fn.checkPMPower('${taskItemView.creatorWorkId}');"
							class="pdrc-cannotedit"
							href="${pageContext.request.contextPath}/task/skill?taskItemSkillId=${tisv.id}"
							rel="external"><span>${tisv.skillName}</span><span
								class="pdrc-span"><span>${tisv.proficiencyName}</span></span></a>
					</ul>
				</c:forEach>
				</li>
				<li>
				<c:if test="${empty taskItemView.id}">
					<a id="domain-create" href="#" rel="external"><h2>领域要求</h2></a>
				</c:if>
				<c:if test="${not empty taskItemView.id}">
					<a id="domain-create"
						data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
						data-powercode="61" class="pdrc-cannotedit pdrc-iconPlus"
						href="/task/domain?taskItemId=${taskItemView.id}" rel="external"><h2>领域要求</h2></a>
				</c:if>
				</li>
				<li>
				<c:forEach var="tidv" items="${taskItemView.taskItemDomainViewList}">
					<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
						<li class="pdrc-li"><a
							data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
							data-powercode="$fn.checkPMPower('${taskItemView.creatorWorkId}');"
							class="pdrc-cannotedit"
							href="${pageContext.request.contextPath}/task/domain?taskItemDomainId=${tidv.id}"
							rel="external"><span>${tidv.domainName}</span><span
								class="pdrc-span"><span>${tidv.experienceName}</span></span></a>
					</ul>
				</c:forEach>
				</li>
				</ul>
				<div class="ui-field-contain pdrc-btnrow">
					<input type="submit" value="保存" id="audit-btn"> <input
						type="button" value="返回" id="taskitem-create-rtn-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>