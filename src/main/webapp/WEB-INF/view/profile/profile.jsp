<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>交付人员信息</title>
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
	var workId = '${workId}';
</script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<h2 align="center">${profileView.staffName}</h2>
			<ul data-role="listview" data-inset="true">
				<li class="pdrc-li"><a
					data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/profile-update?workId=${profileView.workId}"
					rel="external"><h2>基本信息</h2></a>
				<li class="pdrc-li"><span>性别</span><span class="pdrc-span"><span>${profileView.genderString}</span></span></li>
				<li class="pdrc-li"><span>工作年限</span><span class="pdrc-span"><span>${profileView.serviceYear}</span></span></li>
				<li class="pdrc-li"><span>入职时间</span><span class="pdrc-span"><span>${profileView.inBjcDateString}</span></span></li>
				<li class="pdrc-li"><span>学历</span><span class="pdrc-span"><span>${profileView.educationValue}</span></span></li>
				<li class="pdrc-li"><span>专业</span><span class="pdrc-span"><span>${profileView.majorValue}</span></span></li>
				<li class="pdrc-li"><span>毕业院校</span><span class="pdrc-span"><span>${profileView.universityValue}</span></span></li>
				<li class="pdrc-li"><span>毕业时间</span><span class="pdrc-span"><span>${profileView.graduateDateString}</span></span>
				</li>
				<li class="pdrc-li"><span>工作城市</span><span class="pdrc-span"><span>${profileView.mainWorkPlaceString}</span></span>
				</li>
				<li class="pdrc-li"><span>可选城市</span><span class="pdrc-span"><span>${profileView.choseWorkPlaceArray}</span></span>
				</li>
				<li class="pdrc-li"><span>自我评价</span><span class="pdrc-span"><span>${profileView.selftEvaluate}</span></span></li>
				<li class="pdrc-li"><span>当前状态</span><span class="pdrc-span"><span>${profileView.stateName}</span></span></li>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/skill?profileId=${profileView.id}"
					rel="external"><h2>技能列表</h2></a></li>
				<c:forEach var="profileSkillView"
					items="${profileView.profileSkillViewList}">
					<li class="pdrc-li pdrc-line"><a
						data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
						data-powercode="68" class="pdrc-cannotedit"
						href="${pageContext.request.contextPath}/profile/skill?profileSkillId=${profileSkillView.id}&profileId=${profileSkillView.profileId}"
						rel="external"><span>${profileSkillView.skillName}</span> <span
							class="pdrc-span"><span>${profileSkillView.proficiencyName}</span></span></a></li>
				</c:forEach>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="68" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/domain?profileId=${profileView.id}"
					rel="external"><h2>领域列表</h2></a></li>
				<c:forEach var="profileDomainView"
					items="${profileView.profileDomainViewList}">
					<li class="pdrc-li pdrc-line"><a
						data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
						data-powercode="68" class="pdrc-cannotedit"
						href="${pageContext.request.contextPath}/profile/domain?profileDomainId=${profileDomainView.id}"
						rel="external"><span>${profileDomainView.domainName}</span> <span
							class="pdrc-span"><span>${profileDomainView.experienceName}</span></span></a></li>
				</c:forEach>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="71" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/pm-evaluate?profileId=${pmEvaluate.profileId}&projectId=${pmEvaluate.projectId}"
					rel="external"><h2>PM评价</h2></a></li>
				<li><c:forEach var="pmEvaluate"
						items="${profileView.pmEvaluateViewList}">
						<ul data-role="listview" data-inset="true" class="pdrc-listpanel">
							<li class="pdrc-li"><a
								data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
								data-powercode="$fn.checkPMPower('${pmEvaluate.pmWorkId}');"
								class="pdrc-cannotedit"
								href="${pageContext.request.contextPath}/profile/pm-evaluate?profileId=${pmEvaluate.profileId}&projectId=${pmEvaluate.projectId}"
								rel="external"><span>PM</span><span class="pdrc-span"><span>[${pmEvaluate.pmWorkId}]${pmEvaluate.pmName}</span></span></a></li>
							<li class="pdrc-li"><span>评价</span><span class="pdrc-span"><span>${pmEvaluate.evaluateContent}</span></span></li>
							<li class="pdrc-li"><span>星级</span><span class="pdrc-span"><span>${pmEvaluate.pmEvalStarLevel}</span></span></li>
						</ul>
					</c:forEach></li>
				<li><a data-poweraction="class:pdrc-canedit,pdrc-cannotedit"
					data-powercode="76" class="pdrc-cannotedit"
					href="${pageContext.request.contextPath}/profile/tm-evaluate?profileId=${profileView.id}"
					rel="external"><h2>TM评价</h2></a></li>
				<li class="pdrc-li"><span>TM</span> <span class="pdrc-span"><span>${profileView.tmName}</span></span></li>
				<li class="pdrc-li"><span>TM评价</span> <span class="pdrc-span"><span>${profileView.tmEvalContent}</span></span></li>
				<li class="pdrc-li"><span>TM星级</span> <span class="pdrc-span"><span>${profileView.tmEvalStarLevel}</span></span></li>
			</ul>
		</div>
	</div>
</body>
</html>