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
<script
	src="${pageContext.request.contextPath}/assets/js/profile-validate.js"></script>
</head>
<body onload="load()">
	<div data-role="page" id="profile">
		<div role="main" class="ui-context">
			<select class='roleName' id='roleName' onchange='changeStaff()'>
				<option value=''>--请选择角色--</option>
			</select> <select class='staff' id='staff'>
				<option value=''>--请选择工号--</option>
			</select> <input type="button" value="提交" onclick="check()">
		</div>
	</div>
	<script>
		var roleName = document.getElementById("roleName");
		var staff = document.getElementById("staff");
		var arr_roleName = new Array(new Option("--请选择角色--", ''), new Option(
				"普通员工", "normal"), new Option("项目经理", "pm"), new Option("团队经理",
				"tm"));
		var arr_staff = new Array();
		arr_staff[0] = new Array(new Option("--请选择工号--", ''));
		arr_staff[1] = new Array(new Option("--请选择角色--", ''), new Option("[B-13416]王东霞", "p2TBQojztsuq3Z58SgCwlMmsjthx0x1YnqqrJPymVxA="),
				new Option("[B-13385]马文秀", "UiQWZe7RKWIHPGhUpK9wR0gsCuvG9uDwR9whykYu5yk="), new Option(
						"[B-13367]汪爽", "4RgztJT4adH877WWhjGASkgsCuvG9uDwR9whykYu5yk="), new Option("[B-13158]刘玉姣",
						"xmwqbNow98vUlDK2+ERVOkgsCuvG9uDwR9whykYu5yk="), new Option("[B-13140]李启超", "riGZwNZRNguCUuYyaqVe+WcQJJ/cLTrAXOaJCaI4bU8="));
		arr_staff[2] = new Array(new Option("--请选择角色--", ''), new Option("B-10700[李玮颖]", "ssRmg/ax5iZgizS3mTyu1mcQJJ/cLTrAXOaJCaI4bU8="),
				new Option("B-10934[邓志慧]", "11W5CbcZwhdakkHnRAROj1GXVREZy4tqPL3ffbdiAiE="), new Option(
						"B-12659[刘冰冰]", "wvyCC7wcHv382dUjYztemFGXVREZy4tqPL3ffbdiAiE="), new Option("B-14640[严伟]",
						"AlCNe1DnBQeJajnsNZppkLbRGMbLJV8h1GXxkLcjZhA="), new Option("B-15870[陈沛雯]", "Ns/5CcSDT4VrGP4CALXuHLbRGMbLJV8h1GXxkLcjZhA="));
		arr_staff[3] = new Array(new Option("--请选择角色--", ''), new Option("[B-13454]孟洁", "ki6+B1QiKgcH6tZ8Cv8oPLbRGMbLJV8h1GXxkLcjZhA="),
				new Option("[B-13545]史磊", "dMcMgz2Ab5IK6d/OuQN4unRQRGrzYdCX45zYjz7JjwU="), new Option(
						"[B-13550]王开舒", "Ql+OS3tvI1Xhv92pvR6kz3RQRGrzYdCX45zYjz7JjwU="), new Option("[B-13585]王钰",
						"p4dVmxX1lSVMA9VaAQMF4nRQRGrzYdCX45zYjz7JjwU="), new Option("[B-13618]杨宇", "PxYwwLtaYeBjBgGQbMdtzD+2sSEN9viGb+sj6inhrqA="));

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

			if('' == myselect.options[index].value) {
				alert('请先选择一个员工');
			}
			else {
				var url = "${pageContext.request.contextPath}/login2?workId="
						+ myselect.options[index].value;
				window.location = url;
			}
		}
	</script>
</body>
</html>