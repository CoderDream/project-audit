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
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/profile.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/profile-validate.js"></script>
<script type="text/javascript">
	var powers = ${resourceIds};
	var decodeWorkId = "${decodeWorkId}";
</script>
</head>
<body>
	<div data-role="page" id="index">
		<div role="main" class="ui-context">
			<ul data-role="listview">
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="85" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-project?workId=${decodeWorkId}"
					rel="external">查看项目审计(按项目信息)</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="85" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-audititem?workId=${decodeWorkId}"
					rel="external">查看项目审计(按审计科目)</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="81" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/query-by-project?workId=${decodeWorkId}"
					rel="external">新增项目审计</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="81" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/audit/my-audit?workId=${decodeWorkId}"
					rel="external">查看我的审计</a></li>
			</ul>
		</div>
	</div>
</body>
</html>