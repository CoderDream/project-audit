<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>技能</title>
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
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
<script type="text/javascript">
	var workId = '${workId}';
	var skillIds = ${skillIds};
	var operateType = '${operateType}';
</script>
</head>
<body>
	<div data-role="page">
		<div role="main" data-role="context" class="ui-context ui-content">
			<form id="skill-form" method="post" action="">
				<input type="hidden" id="id" value="${taskItemSkillView.id}">
				<input type="hidden" id="taskItemId"
					value="${taskItemSkillView.taskItemId}"> <input
					type="hidden" id="skillId" value="${taskItemSkillView.skillId}">
				<input type="hidden" id="proficiencyId"
					value="${taskItemSkillView.proficiencyId}"><input
					type="hidden" id="skillIds" value="${skillIds}">
				<div class="ui-field-contain">
					<label for="fullname">技能</label> <input
						id="autocomplete_input_skill" name="autocomplete_input_skill" data-type="search"
						value="${taskItemSkillView.skillName}">
					<ul id="autocomplete-skill" data-role="listview" data-inset="true"
						data-filter="true" data-input="#autocomplete_input_skill"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">熟练程度</label> <input
						id="autocomplete_input_proficiency" name="autocomplete_input_proficiency" data-type="search"
						value="${taskItemSkillView.proficiencyName}">
					<ul id="autocomplete-proficiency" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_proficiency"></ul>
				</div>
				<div class="ui-field-contain pdrc-btnrow">
					<input type="submit" value="保存" id="skill-btn"> <input
						type="button" value="返回" id="skill-create-rtn-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>