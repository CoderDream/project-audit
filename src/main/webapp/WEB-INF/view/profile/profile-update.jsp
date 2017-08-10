<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>交付人员基本信息</title>
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
	<div data-role="page" id="index">
		<div data-role="main" class="ui-content">
			<form id="profile-update-form" method="post" action="">
				<input type="hidden" id="id" value="${profileView.id}"> <input
					type="hidden" id="workId" value="${profileView.workId}"> <input
					type="hidden" id="gender" value="${profileView.gender}"><input
					type="hidden" id="education" value="${profileView.education}"><input
					type="hidden" id="major" value="${profileView.major}"><input
					type="hidden" id="university" value="${profileView.university}">
				<div class="ui-field-contain">
					<fieldset data-role="controlgroup">
						<legend>性别：</legend>
						<c:set var="gender" scope="session" value="${profileView.gender}" />
						<label for="male">男性</label> <input type="radio" name="gender"
							id="male" value="1" alt="${profileView.gender}==1"
							<c:if test="${profileView.gender==1}">checked</c:if> /> <label
							for="female">女性</label> <input type="radio" name="gender"
							id="female" value="0" alt="${profileView.gender}==0"
							<c:if test="${profileView.gender==0}">checked</c:if> />
					</fieldset>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">工作年限（年）：</label> <input type="text"
						name="serviceYear" id="serviceYear"
						value="${profileView.serviceYear}">
				</div>
				<div class="ui-field-contain">
					<label for="bday">入职时间：</label>   <input type="date"
						name="inBjcDateString" formaction="yyyy-MM-dd"
						id="inBjcDateString" value="${profileView.inBjcDateString}">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">学历：</label> <input
						id="autocomplete_input_education" data-type="search"
						value="${profileView.educationValue}"
						placeholder="${profileView.educationValue}">
					<ul id="autocompleteeducation" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_education"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">专业：</label> <input
						id="autocomplete_input_major" data-type="search"
						value="${profileView.majorValue}"
						placeholder="${profileView.majorValue}">
					<ul id="autocompletemajor" data-role="listview" data-inset="true"
						data-filter="true" data-input="#autocomplete_input_major"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">毕业院校：</label> <input
						id="autocomplete_input_university" data-type="search"
						value="${profileView.universityValue}"
						placeholder="${profileView.universityValue}">
					<ul id="autocompleteuniversity" data-role="listview"
						data-inset="true" data-filter="true"
						data-input="#autocomplete_input_university"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="bday">毕业时间：</label>   <input type="date"
						name="graduateDateString" formaction="yyyy-MM-dd"
						id="graduateDateString" value="${profileView.graduateDateString}">
				</div>
				<input type="hidden" id="id" value="${profileView.id}"> <input
					type="hidden" id="workId" value="${profileView.workId}"> <input
					type="hidden" id="mainWorkPlace"
					value="${profileView.mainWorkPlace}"><input type="hidden"
					id="choseWorkPlace" value="${profileView.choseWorkPlace}"><input
					type="hidden" id="tmWorkId" value="${profileView.tmWorkId}"><input
					type="hidden" id="stateId" value="${profileView.stateId}">
				<div class="ui-field-contain">
					<label for="fullname">工作地：</label> <input
						id="autocomplete_input_mainWorkPlace" data-type="search"
						placeholder="${profileView.mainWorkPlaceString}">
					<ul id="autocompletecity" data-role="listview" data-inset="true"
						data-filter="true" data-input="#autocomplete_input_mainWorkPlace"></ul>
				</div>
				<div class="ui-field-contain">
					<label for="fullname">可选工作地：</label> <input type="text"
						name="choseWorkPlaceArray" id="choseWorkPlaceArray"
						value="${profileView.choseWorkPlaceArray}">
				</div>
				<div class="ui-field-contain">
					<label for="fullname">自我评价：</label> <input type="text"
						name="selftEvaluate" id="selftEvaluate"
						value="${profileView.selftEvaluate}">
				</div>				
				<div class="ui-field-contain pdrc-btnrow" style="display:flex;">
					<input type="submit" value="提交" id="profile-update-btn"> <input
						type="button" value="返回" id="rtn-btn">
				</div>
			</form>
		</div>
	</div>
</body>
</html>