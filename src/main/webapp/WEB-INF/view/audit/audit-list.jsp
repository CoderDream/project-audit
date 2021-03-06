<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>项目列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/pdrc.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/out.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
</head>
<body>
	<div data-role="page" id="index">
		<div role="main" class="ui-context">
			<c:set var="listSize" scope="session"
				value="${projectAuditViewList.size()}" />
			<c:if test="${listSize > 0}">
				<ul data-role="listview" data-inset="true">
					<li><c:forEach var="projectAuditView"
							items="${projectAuditViewList}">
							<ul data-role="listview" data-inset="true">
								<li class="pdrc-li"><a
									href="${pageContext.request.contextPath}/audit?projectId=${projectAuditView.projectId}"
									rel="external"><span class="pdrc-title-span-left">${projectAuditView.projectName}</span><span
										class="pdrc-title-span-right"><span>详情</span></span></a></li>
								<li class="pdrc-li"><span>项目经理</span><span
									class="pdrc-span"><span>[${projectAuditView.projectMgrWorkId}]${projectAuditView.projectMgrName}</span></span></li>
								<li class="pdrc-li"><span>项目计划开始日期</span><span
									class="pdrc-span"><span>${projectAuditView.projectStartDateString}</span></span></li>
								<li class="pdrc-li"><span>项目计划结束日期</span><span
									class="pdrc-span"><span>${projectAuditView.projectEndDateString}</span></span></li>
							</ul>
						</c:forEach></li>
				</ul>
			</c:if>
		</div>
			<c:if test="${listSize == 0}">你还没有审计过任何项目，现在就去审计？<a
					data-text="新增项目审计"
					href="${pageContext.request.contextPath}/query-by-project?workId=${decodeWorkId}"
					rel="external">新增项目审计</a>
			</c:if>
	</div>
</body>
</html>