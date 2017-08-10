<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>供需平台</title>
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
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/profile-query-condition?conditionType=SkillInfo&workId=${decodeWorkId}"
					rel="external">人力看板--人力查询-按技能查询</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/profile-query-condition?conditionType=DomainInfo&workId=${decodeWorkId}"
					rel="external">人力看板--人力查询-按领域查询</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/profile-query-condition?conditionType=CandidateCityInfo&workId=${decodeWorkId}"
					rel="external">人力看板--人力查询-按工作城市查询</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/my-profile?workId=${decodeWorkId}"
					rel="external">人力看板--我的人力档案</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="76" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/my-team?workId=${decodeWorkId}"
					rel="external">人力看板--我的汇报线</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/query-by-skill?workId=${decodeWorkId}"
					rel="external">任务看板--按技能查询任务</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/query-by-domain?workId=${decodeWorkId}"
					rel="external">任务看板--按领域查询任务</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/query-by-workplace?workId=${decodeWorkId}"
					rel="external">任务看板--按工作城市查询任务</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="61" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/public?workId=${decodeWorkId}"
					rel="external">任务看板--我发布的任务</a></li>
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="61" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/task-create?workId=${decodeWorkId}"
					rel="external">任务看板--创建任务</a></li>
			</ul>
		</div>
	</div>
</body>
</html>