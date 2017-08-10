<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>项目评价信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/jquery.mobile-1.4.5.css" />
<script
	src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.mobile-1.4.5.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/query.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/profile.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/profile-validate.js"></script>
</head>
<body>
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<form id="pm-evaluate-form" method="post" action="">
				<input type="hidden" id="id" value="${pmEvaluateView.id}" /> <input
					type="hidden" id="workId" value="${pmEvaluateView.workId}" /> <input
					type="hidden" id="profileId" value="${pmEvaluateView.profileId}" /><input
					type="hidden" id="projectId" value="${pmEvaluateView.projectId}" /><input
					type="hidden" id="pmWorkId" value="${profileView.pmWorkId}" />
				<h2 align="center">${profileView.workId}</h2>
				<ul data-role="listview" data-inset="true">
					<li><label for="fullname">项目名称：</label> <span>${pmEvaluateView.projectName}</span></li>
					<li><label for="textarea-4" class="ui-hidden-accessible">工作评价：</label>
						<textarea cols="40" rows="8" name="textarea-4"
							id="evaluateContent">${pmEvaluateView.evaluateContent}</textarea>
					</li>
					<li><label for="textinput-4" class="ui-hidden-accessible">工作评价（星级评定1~5）：</label>
						<input type="text" name="pmEvalStarLevel" id="pmEvalStarLevel"
						placeholder="星级评定1~5" value="${pmEvaluateView.pmEvalStarLevel}">
					</li>
					<li>
						<div class="ui-field-contain pdrc-btnrow">
							<input type="submit" value="提交" id="pm-evaluate-btn"> <input
								type="button" value="返回" id="rtn-btn">
						</div>
					</li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>