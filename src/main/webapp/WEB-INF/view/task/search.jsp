<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>交付人员列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
</head>
<body>
	<div data-role="page" id="index">
		<div role="main" class="ui-context">
			<ul data-role="listview">
				<c:forEach var="taskView" items="${taskViewList}">
					<li><a
						href="${pageContext.request.contextPath}/task/task?taskId=${taskView.id}"
						rel="external">
							<h2>${taskView.taskName}</h2>
							<p>${taskView.projectId}</p>							
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>	
</body>
</html>