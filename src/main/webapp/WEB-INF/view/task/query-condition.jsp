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
<script src="${pageContext.request.contextPath}/assets/js/task.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<form method="post">
				<input type="hidden" id="conditionType" value="${conditionType}">
				<fieldset data-role="controlgroup">
					<c:forEach var="item" items="${dictionaryList}">
						<input type="checkbox" name="query-checkbox" id="${item.id}"
							value="${item.id}">
						<label for="${item.id}">${item.value}</label>
					</c:forEach>
				</fieldset>
				<div class="ui-field-contain pdrc-btnrow">
					<input type="button" value="查询" id="query-condition-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>