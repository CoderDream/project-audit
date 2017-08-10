<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>交付人员列表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/pdrc.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>

</head>
<body>
	<div data-role="page" id="index">
		<div role="main" class="ui-context">
			<ul data-role="listview" data-inset="true">
				<c:forEach var="profileView" items="${profileViewList}">
					<li>
						<ul data-role="listview" data-inset="true">
							<li class="pdrc-li"><a
									href="${pageContext.request.contextPath}/profile/profile?profileId=${profileView.id}"
									rel="external"><span>${profileView.staffName}</span><span class="pdrc-span"><span>详情</span></span></a></li>
							<li class="pdrc-li"><span>工作年限</span><span
									class="pdrc-span"><span>${profileView.serviceYear}</span></span></li>
							<li class="pdrc-li"><span>工作城市</span><span
									class="pdrc-span"><span>${profileView.mainWorkPlaceString}</span></span></li>	
							<li class="pdrc-li"><span>TM</span><span
									class="pdrc-span"><span>${profileView.tmName}</span></span></li>
							<li class="pdrc-li"><span>员工状态</span><span
									class="pdrc-span"><span>${profileView.stateName}</span></span></li>
						</ul>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>