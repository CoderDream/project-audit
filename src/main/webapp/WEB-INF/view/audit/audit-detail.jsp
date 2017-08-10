<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>项目审核详情-${projectAuditView.projectName}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
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
<script src="${pageContext.request.contextPath}/assets/js/query.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/audit.js?id='${currentTime}'"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/audit-validate.js?id='${currentTime}'"></script>
<script type="text/javascript">
	//var powers = ${resourceIds};
	//var workId = '${workId}';
</script>
</head>
<body>
	<div data-role="page" id="projectAudit">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<li class="pdrc-li"><span>项目名称</span><span
					class="pdrc-span"><span>${projectAuditView.projectName}</span></span></li>
				<li class="pdrc-li"><span>项目经理</span><span	class="pdrc-span"><span>[${projectAuditView.projectmgrWorkId}]${projectAuditView.projectmgrName}</span></span></li>
				<li class="pdrc-li"><span>项目计划开始日期</span><span
					class="pdrc-span"><span>${projectAuditView.projectStartDateString}</span></span></li>
				<li class="pdrc-li"><span>项目计划结束日期</span><span
					class="pdrc-span"><span>${projectAuditView.projectEndDateString}</span></span></li>
				<li><h2>目标合理性</h2></li>
				<li><c:forEach var="ropav"
						items="${projectAuditView.reasonableObjectives}">
						<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
							<li class="pdrc-li"><span>${ropav.auditName}</span></li>
							<li class="pdrc-li"><span>审计人员</span><span class="pdrc-span"><span>${ropav.auditStaffName}</span></span></li>
							<li class="pdrc-li"><span>审计内容</span><span class="pdrc-span"><span>${ropav.auditContent}</span></span></li>
							<li class="pdrc-li"><span>审计结论</span><span class="pdrc-span"><span>${ropav.auditStateString}</span></span></li>
						</ul>
					</c:forEach></li>
				<li><h2>操作规范性</h2></li>
				<li><c:forEach var="ospav"
						items="${projectAuditView.operationStandards}">
						<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
							<li class="pdrc-li"><span>${ospav.auditName}</span></li>
							<li class="pdrc-li"><span>审计人员</span><span class="pdrc-span"><span>${ospav.auditStaffName}</span></span></li>
							<li class="pdrc-li"><span>审计内容</span><span class="pdrc-span"><span>${ospav.auditContent}</span></span></li>
							<li class="pdrc-li"><span>审计结论</span><span class="pdrc-span"><span>${ospav.auditStateString}</span></span></li>
						</ul>
					</c:forEach></li>
				<li><h2>数据准确性</h2></li>
				<li><c:forEach var="adpav"
						items="${projectAuditView.accurateDatas}">
						<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
							<li class="pdrc-li"><span>${adpav.auditName}</span></li>
							<li class="pdrc-li"><span>审计人员</span><span class="pdrc-span"><span>${adpav.auditStaffName}</span></span></li>
							<li class="pdrc-li"><span>审计内容</span><span class="pdrc-span"><span>${adpav.auditContent}</span></span></li>
							<li class="pdrc-li"><span>审计结论</span><span class="pdrc-span"><span>${adpav.auditStateString}</span></span></li>
						</ul>
					</c:forEach></li>
			</ul>
		</div>
	</div>
</body>
</html>