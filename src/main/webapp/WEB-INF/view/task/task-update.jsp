<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>任务</title>
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
<script
	src="${pageContext.request.contextPath}/assets/js/query.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/task.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
</head>
<body>
	<div data-role="page">
		<div data-role="context" class="ui-content">
			<form id="task-form" method="post" action="">
				<input type="hidden" id="id" value="${taskView.id}"> <input
					type="hidden" id="projectId" value="${taskView.projectId}"><input
					type="hidden" id="createrWorkId" value="${taskView.createrWorkId}">
				<input type="hidden" id="contactsWorkId"
					value="${taskView.contactsWorkId}"> <input type="hidden"
					id="acceptanceWorkId" value="${taskView.acceptanceWorkId}">
				<h2>任务基本信息</h2>
				<label for="fullname">任务名称</label> <input type="text"
					name="taskName" id="taskName" value="${taskView.taskName}">
				<label for="fullname">任务描述</label> <input type="text"
					name="taskDescription" id="taskDescription"
					value="${taskView.taskDescription}"> <label for="fullname">任务所属项目</label>
				<input id="autocomplete_input_project" data-type="search"
					placeholder="${taskView.projectName}">
				<ul id="autocomplete-project" data-role="listview" data-inset="true"
					data-filter="true" data-input="#autocomplete_input_project"></ul>
				<div class="ui-field-contain">
					<label for="fullname">联系人</label> <input
						id="autocomplete_input_contacts" data-type="search"
						placeholder="${taskView.contactsName}">
					<ul id="autocomplete-contacts" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_contacts"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">联系人邮件</label> <input id="contactEmail"
						value="${taskView.contactEmail}" readonly="readonly">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">联系人电话</label> <input id="contactPhoneNumber"
						value="${taskView.contactPhoneNumber}" readonly="readonly">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">项目计划开始时间</label><input
						id="projectStartDateString"
						value="${taskView.projectStartDateString}" readonly="readonly">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">项目计划结束时间</label> <input
						id="projectEndDateString" value="${taskView.projectEndDateString}"
						readonly="readonly">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">任务验收标准</label> <input type="text"
						name="acceptanceStandard" id="acceptanceStandard"
						value="${taskView.acceptanceStandard}">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">验收人</label> <input
						id="autocomplete_input_acceptance" data-type="search"
						placeholder="${taskView.acceptanceName}">
					<ul id="autocomplete-acceptance" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_acceptance"></ul>
				</div>
				<div class="ui-field-contain">
					<fieldset data-role="controlgroup">
						<legend>任务状态：</legend>
						<c:set var="taskState" scope="session"
							value="${taskView.taskState}" />
						<label for="open">开启</label> <input type="radio" name="taskState"
							id="open" value="3608" alt="${taskView.taskState}==3608"
							<c:if test="${taskView.taskState==3608}">checked</c:if> /> <label
							for="close">结束</label> <input type="radio" name="taskState"
							id="close" value="3609" alt="${taskView.taskState}==3609"
							<c:if test="${taskView.taskState==3609}">checked</c:if> />
					</fieldset>
				</div>
				<div class="ui-field-contain pdrc-btnrow">
					<input type="submit" value="保存" id="task-update-btn"> <input
						type="button" value="返回" id="task-update-rtn-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>