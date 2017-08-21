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
<style>
.pa-shortcutview {
	display: flex;
	flex-flow: wrap;
	justify-content: center;
}

.pa-shortcutview>a {
	display: flex;
	flex-direction: column;
	margin: 2em 1em 0em 1em;
}

.pa-shortcutview>a:after {
	content: attr(data-text);
	margin-top: 1em;
	display: flex;
	justify-content: center;
	width: 96px;
	text-align: center;
}

.pa-shortcutview>a>img {
	width: 96px;
	height: 96px;
}

.pa-shortcutview>a.pdrc-cannotedit {
	display: none !important;
	padding-right: 0px;
}
</style>
</head>
<body>
	<div class="total">
		<div class="content" style="margin: 0;">
			<div class="pa-shortcutview">
				<a id="new_audit" data-text="新增项目审计" data-powercode="81" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-project?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/new_audit.png" /></a>
				<a id="my_audit" data-text="查看我的审计" data-powercode="81" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/my-audit?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/my_audit.png" /></a>
				<a id="search_by_item" data-text="查看项目审计(按审计科目)" data-powercode="85"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-audititem?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/search_by_project.png" /></a>
				<a id="search_by_project" data-text="查看项目审计(按项目信息)" data-powercode="85"
					class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-project?workId=${decodeWorkId}"
					rel="external"><img
					src="${pageContext.request.contextPath}/assets/image/search_by_item.png" /></a>
				<a id="help" data-text="操作说明"><img
					src="${pageContext.request.contextPath}/assets/image/help.png" /></a>
			</div>
		</div>
	</div>
</body>
</html>