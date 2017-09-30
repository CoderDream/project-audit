<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登陆</title>
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
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/power.js"></script>
</head>
<body onload="load()">
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<select class='roleName' id='roleName' onchange='changeStaff()'>
				<option value=''>--请选择角色--</option>
			</select> <select class='staff' id='staff'>
				<option value=''>--请选择工号--</option>
			</select> <input id="submit" type="button" value="提交" onclick="check()">
		</div>
	</div>
	<script>
		var roleName = document.getElementById("roleName");
		var staff = document.getElementById("staff");
		var arr_roleName = new Array(new Option("--请选择角色--", ''), new Option(
				"QA|PMO|运营", "qapmoopt"), new Option("主管|领导", "boss"),
				new Option("DEV", "dev"));
		var arr_staff = new Array();
		arr_staff[0] = new Array(new Option("--请选择工号--", ''));
		arr_staff[1] = new Array(new Option("--请选择工号--", ''), new Option(
				"[B-27603]胡萍萍",
				"mfSE8SuMci%2Fh5bkMcdc%2B8yPe%2Bf1B6sZSK8ORSPP7YMI%3D"),
				new Option("[B-7382]全荃",
						"OTgApFWUc7u%2BNkopuEC0Cj6tCKyKZeg56thQ9OC7cGY%3D"),
				new Option("[B-23646]聂勤勤",
						"01bzNAVgXbhOoLmpVhhwc5f7B2jLDBCZKYG%2FYA6VNeg%3D"),
				new Option("[B-28708]马兰",
						"Bvb9MvqpG6SM1gBakcNi55f7B2jLDBCZKYG%2FYA6VNeg%3D"),
				new Option("[B-32611]孙娟",
						"m8uk1I6o%2FKm3ky5rVvQbc5f7B2jLDBCZKYG%2FYA6VNeg%3D"),
				new Option("[B-34196]李烜",
						"T3SVfOpBV7MXxRft9nuYd4Gb4DXvuMdfMajvg1X9fbE%3D"));
		arr_staff[2] = new Array(new Option("--请选择工号--", ''), new Option(
				"[B-16865]李培涛",
				"j0BWqNEh7TC%2FJStnWS%2BrjYGb4DXvuMdfMajvg1X9fbE%3D"),
				new Option("[B-15550]刘秋岭",
						"0%2BCHKXUXeDakhZdo3Skpe4Gb4DXvuMdfMajvg1X9fbE%3D"),
				new Option("[B-28949]黄丽伟",
						"NyAJWD24%2FKWOgOt4Xbs98d20m6VS%2FyduDCMJC1dgcms%3D"),
				new Option("[B-17735]黄静",
						"QAXK%2BUJZiQVAaFkbPPvTK9biL75mJr3LPmNHFnydS4s%3D"),
				new Option("[B-589]沈浩",
						"hwUN2vJzcCL4eMiyaDYMS1uivxb8elbGE9pvs%2FY2Dnw%3D"),
				new Option("[B-025]胡亮",
						"FfwNNvvTTXgBNQaWyORyvFuivxb8elbGE9pvs%2FY2Dnw%3D"),
				new Option("[B-19252]田文谦",
						"uTWQn2sc2pgWQM%2FUYmc%2FM9biL75mJr3LPmNHFnydS4s%3D"),
				new Option("[B-26026]沈志鹏",
						"cGXqVl0vognp4XXZd27xLfDTOwj4d64r%2B500YbeMOus%3D"));
		arr_staff[3] = new Array(
				new Option("--请选择工号--", ''),
				new Option("[B-29615]陈青",
						"D1UHpA86Y%2FR4qXPO82CETfDTOwj4d64r%2B500YbeMOus%3D"),
				new Option("[B-33966]胡光",
						"rWX5%2Fn6pFSA9YbU%2BDuDADPDTOwj4d64r%2B500YbeMOus%3D"),
				new Option("[B-28709]许林",
						"%2F15Z415Gko7YWLGKQ%2FeNM0tBJX6p%2Fw0ONAJBu1QxbDc%3D"));

		//动态载入所有角色
		function load() {
			for (var i = 0; i < arr_roleName.length; i++) {
				roleName.options[i] = arr_roleName[i];
			}
		}
		//选中角色之后，根据索引动态载入相应工号
		function changeStaff() {
			//清空上次的选项
			staff.options.length = 0;
			//获取省一级的下拉列表选中的索引
			var index = roleName.selectedIndex;
			for (var i = 0; i < arr_staff[index].length; i++) {
				staff.options[i] = arr_staff[index][i];
			}
		}

		//选中角色之后，根据索引动态载入相应工号
		function check() {
			//1:拿到select对象： 
			var myselect = document.getElementById("staff");

			//2：拿到选中项的索引：
			var index = myselect.selectedIndex; // selectedIndex代表的是你所选中项的index

			//3:拿到选中项options的value：  
			//alert(myselect.options[index].value);

			// 4:拿到选中项options的text：  
			//alert(myselect.options[index].text);

			if ('' == myselect.options[index].value) {
				alert('请先选择一个员工');
			} else {
				var url = "${pageContext.request.contextPath}/index?workId="
						+ myselect.options[index].value;
				window.location = url;
			}
		}
	</script>
</body>
</html>