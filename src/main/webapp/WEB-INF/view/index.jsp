<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>项目审计</title>
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
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script type="text/javascript">
	var powers = ${resourceIds};
	var decodeWorkId = "${decodeWorkId}";
</script>
</head>
<body>
	<div class="total">
		<div class="content" style="margin: 0;">
			<div class="pa-shortcutview">
				<a id="search_by_project" data-text="查看项目审计(按项目信息)"
					data-powercode="PA01" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/query-by-project?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/search_by_project.png" /></a>
				<a id="search_by_item" data-text="查看项目审计(按审计科目)" data-powercode="PA02"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/query-by-audititem?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/search_by_item.png" /></a>
				<a id="new_audit" data-text="新增项目审计" data-powercode="PA03"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/query-by-project?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/new_audit.png" /></a>
				<a id="my_audit" data-text="查看我的审计" data-powercode="PA04"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/my-audit?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/my_audit.png" /></a>
				<a id="help" data-text="操作说明" data-powercode="PA05"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/help" rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/help.png" /></a>
			</div>
		</div>
	</div>
</body>
</html>