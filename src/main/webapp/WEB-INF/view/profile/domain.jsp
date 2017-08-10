<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>领域信息</title>
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
<script src="${pageContext.request.contextPath}/assets/js/profile.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/profile-validate.js"></script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<form id="domain-form" method="post" action="">
				<input type="hidden" id="id" value="${profileDomainView.id}">
				<input type="hidden" id="profileId"
					value="${profileDomainView.profileId}"> <input
					type="hidden" id="domainId" value="${profileDomainView.domainId}">
				<input type="hidden" id="experienceId"
					value="${profileDomainView.experienceId}"> <input
					type="hidden" id="domainIds" value="${profileDomainView.domainIds}">
				<input type="hidden" id="operateType" value="${operateType}">
				<div class="ui-field-contain">
					<label for="fullname">领域</label> <input
						id="autocomplete_input_domain" data-type="search"
						value="${profileDomainView.domainValue}"
						placeholder="ERP | CRM | PLM | FIN | HR">
					<ul id="autocomplete-domain" data-role="listview" data-inset="true"
						data-filter="true" data-input="#autocomplete_input_domain"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">经验程度</label> <input
						id="autocomplete_input_experience" data-type="search"
						value="${profileDomainView.experienceName}"
						placeholder="轻度接触|领域专家|部分精通">
					<ul id="autocomplete-experience" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_experience"></ul>
				</div>
				<div class="ui-field-contain pdrc-btnrow">
					<input type="submit" value="新增" id="domain-btn"> <input
						type="button" value="返回" id="rtn-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>