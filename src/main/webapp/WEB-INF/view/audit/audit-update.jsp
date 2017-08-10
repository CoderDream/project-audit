<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>审计科目信息</title>
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
<script src="${pageContext.request.contextPath}/assets/js/util.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/audit.js?id='${currentTime}'"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js?id='${currentTime}'"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/audit-validate.js?id='${currentTime}'"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/audit-update.js?id='${currentTime}'"></script>
<script type="text/javascript">
	var workId = '${workId}';
	var auditType = '${auditType}';
	var auditTypeIds = ${auditTypeIds};
	var operateType = '${operateType}';
</script>
</head>
<body>
	<div data-role="page" id="audit">
		<div role="main" class="ui-context">
			<form id="audit-form" method="post" action="">
				<input type="hidden" id="id" value="${projectAuditView.id}">
				<input type="hidden" id="projectId"
					value="${projectAuditView.projectId}"> <input type="hidden"
					id="auditTypeId" name="auditTypeId" value="${projectAuditView.auditTypeId}"> <input
					type="hidden" id="auditTypeIds" value="${auditTypeIds}"> <input
					type="hidden" id="operateType" value="${operateType}">
				<div class="ui-field-contain">
					<label for="projectName">项目名称</label> <span id="projectName">${projectAuditView.projectName}</span>
				</div>
				<div class="ui-field-contain">
					<label for="auditItem">审计科目</label>
					<select id='auditItem'>
						<option value=''>--请选择审计科目--</option>
					</select>
				</div>
				<div class="ui-field-contain">
					<label for="textarea-4">审计内容</label>
					<textarea cols="40" rows="8" name="auditContent" id="auditContent" maxlength="100" placeholder="这里填写给该项目的审核意见">${projectAuditView.auditContent}</textarea>
				</div>
				<div class="ui-field-contain">
					<fieldset data-role="controlgroup">
						<legend>是否通过</legend>
						<c:set var="auditState" scope="session"
							value="${projectAuditView.auditState}" />
						<label for="pass">通过</label> <input type="radio" name="auditState"
							id="pass" value="1" alt="${projectAuditView.auditState}==1"
							<c:if test="${projectAuditView.auditState==1}">checked</c:if> />
						<label for="fail">不通过</label> <input type="radio"
							name="auditState" id="fail" value="0"
							alt="${projectAuditView.auditState}==0"
							<c:if test="${projectAuditView.auditState==0}">checked</c:if> />
					</fieldset>
				</div>
				<div class="ui-field-contain pdrc-btnrow">
					<c:if test="${empty projectAuditView.id}">
						<input type="submit" value="新增" id="audit-btn"> 
					</c:if>
					<c:if test="${not empty projectAuditView.id}">
						<input type="submit" value="修改 " id="audit-btn"> 
					</c:if>
					<c:if test="${not empty projectAuditView.id}">
						<input type="button" value="删除" id="delete-btn">
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>