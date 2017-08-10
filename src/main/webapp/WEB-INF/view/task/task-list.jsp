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
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<li><c:forEach var="taskView" items="${taskViewList}">
						<ul data-role="listview" data-inset="true">
							<li><a
								href="${pageContext.request.contextPath}/task/task?taskId=${taskView.id}"
								rel="external"><h2>基本信息</h2></a>
							<li class="pdrc-li"><span>任务名称</span><span class="pdrc-span">${taskView.taskName}</span></li>
							<li class="pdrc-li"><span>任务描述</span><span class="pdrc-span"><span>${taskView.taskDescription}</span></span></li>
							<li class="pdrc-li"><span>所属项目</span><span class="pdrc-span"><span>${taskView.projectName}</span></span></li>
							<li class="pdrc-li"><span>联系方式</span><span class="pdrc-span">${taskView.contactsName}</span></li>
							<li class="pdrc-li"><span>验收标准</span><span class="pdrc-span">${taskView.acceptanceStandard}</span></li>
							<li class="pdrc-li"><span>验收人员</span><span class="pdrc-span">${taskView.acceptanceName}</span></li>
							<li class="pdrc-li"><span>任务状态</span><span class="pdrc-span">${taskView.taskStateString}</span></li>
						</ul>
					</c:forEach></li>
			</ul>
		</div>
	</div>
</body>
</html>