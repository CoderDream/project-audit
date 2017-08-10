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
<script src="${pageContext.request.contextPath}/assets/js/task.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<li><c:set var="listSize" scope="session"
						value="${taskViewItemList.size()}" /> <c:if
						test="${listSize > 0}">
						<c:forEach var="taskItemView" items="${taskViewItemList}">
							<ul data-role="listview" data-inset="true">
								<li class="pdrc-li"><a
									href="${pageContext.request.contextPath}/task/taskitem-detail?taskItemId=${taskItemView.id}"
									rel="external"><span>基本信息</span><span class="pdrc-span"><span>详情</span></span></a></li>
								<li class="pdrc-li"><span>任务描述</span><span
									class="pdrc-span"><span>${taskItemView.taskItemDescription}</span></span></li>
								<li class="pdrc-li"><span>工作量（BSM）</span><span
									class="pdrc-span">${taskItemView.bsm}</span></li>
								<li class="pdrc-li"><span>预计任务开始日期</span><span
									class="pdrc-span">${taskItemView.planStartDateString}</span></li>
								<li class="pdrc-li"><span>预计任务结束日期</span><span
									class="pdrc-span">${taskItemView.planEndDateString}</span></li>
							</ul>
							<hr>
						</c:forEach>
					</c:if> <c:if test="${listSize == 0}">
						没有找到任务信息，请换个条件试试！
					</c:if></li>
			</ul>
		</div>
	</div>
</body>
</html>