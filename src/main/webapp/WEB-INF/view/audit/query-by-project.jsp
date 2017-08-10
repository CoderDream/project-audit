<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>根据项目信息查询</title>
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
<script src="${pageContext.request.contextPath}/assets/js/util.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script type="text/javascript">
	var powers = ${resourceIds};
	//var workId = '${workId}';
	//var auditType = ${auditType};
	// var operateType = ${operateType};
</script>
<body>
	<div data-role="page" id="task-create">
		<div role="main" class="ui-context">
			<form id="" method="post" action="">
				<input type="hidden" id="projectId" value="${projectId}">
				<ul data-role="listview" data-inset="true">
					<li>
						<div class="ui-field-contain">
							<label for="fullname">项目信息</label> <input
								name="autocomplete_input_project"
								id="autocomplete_input_project" data-type="search"
								placeholder="请输入项目ID或项目名称">
							<ul id="autocomplete-query-by-project" data-role="listview"
								data-inset="true" data-filter="true"
								data-input="#autocomplete_input_project"></ul>
						</div>
					</li>
					<li id="project" style="display:none;">
							<ul data-role="listview" data-inset="true">
								<li class="pdrc-li-label"><span>项目经理</span><span> <span
										class="pdrc-span" id="projectName"></span></span></li>
								<li class="pdrc-li-label"><span>项目计划开始时间</span><span>
										<span class="pdrc-span" id="projectStartDateString">${projectStartDateString}</span>
								</span></li>
								<li class="pdrc-li-label"><span>项目计划结束时间</span> <span><span
										class="pdrc-span" id="projectEndDateString">${projectEndDateString}</span></span>
								</li>
							</ul>
					</li>
					<li><div class="ui-field-contain">
							<input type="button" value="查询" id="project-btn">
						</div></li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>