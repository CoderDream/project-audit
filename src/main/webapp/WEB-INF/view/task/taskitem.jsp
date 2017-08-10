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
<script src="${pageContext.request.contextPath}/assets/js/task.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/task-validate.js"></script>
	<script type="text/javascript">
	var powers=${resourceIds};
	</script>

</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<li>
				<a data-poweraction="class:pdrc-canedit,pdrc-cannotedit" data-powercode="61" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/taskitem-update?taskItemId=${taskItemView.id}"
					rel="external"><h2>基本信息</h2></a></li>
				<li class="pdrc-li"><span>任务描述</span><span class="pdrc-span"><span>${taskItemView.taskItemDescription}</span></span></li>
				<li class="pdrc-li"><span>所需人数</span><span class="pdrc-span">${taskItemView.enginnerAmount}</span></li>
				<li class="pdrc-li"><span>工作城市</span><span class="pdrc-span">${taskItemView.workPlaceArray}</span></li>
				<li class="pdrc-li"><span>工作年限</span><span class="pdrc-span">${taskItemView.serviceYear}</span></li>
				<li class="pdrc-li"><span>工作量（BSM）</span><span
					class="pdrc-span">${taskItemView.bsm}</span></li>
				<li class="pdrc-li"><span>预计任务开始日期</span><span
					class="pdrc-span">${taskItemView.planStartDateString}</span></li>
				<li class="pdrc-li"><span>预计任务结束日期</span><span
					class="pdrc-span">${taskItemView.planEndDateString}</span></li>
				<li class="pdrc-li"><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit" data-powercode="61" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/skill?taskItemId=${taskItemView.id}"
					rel="external"><h2>技能要求</h2></a></li>
				<li><c:forEach var="taskItemSkillView"
						items="${taskItemView.taskItemSkillViewList}">
						<ul data-role="listview" data-inset="true">
							<li class="pdrc-li"><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit" data-powercode="61" class="pdrc-cannotedit"
								href="${pageContext.request.contextPath}/task/skill?taskItemSkillId=${taskItemSkillView.id}"
								rel="external"><span>${taskItemSkillView.skillName}</span> <span
									class="pdrc-span">${taskItemSkillView.proficiencyName}</span></a></li>
						</ul>
					</c:forEach></li>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit" data-powercode="61" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/task/domain?taskItemId=${taskItemView.id}"
					rel="external"><h2>领域要求</h2></a></li>
				<li><c:forEach var="taskItemDomainView"
						items="${taskItemView.taskItemDomainViewList}">
						<ul data-role="listview" data-inset="true">
							<li class="pdrc-li"><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit" data-powercode="61" class="pdrc-cannotedit"
								href="${pageContext.request.contextPath}/task/domain?taskItemDomainId=${taskItemDomainView.id}"
								rel="external"><span>${taskItemDomainView.domainName}</span>
									<span class="pdrc-span">${taskItemDomainView.experienceName}</span></a></li>
						</ul>
					</c:forEach></li>
			</ul>
		</div>
	</div>
</body>
</html>