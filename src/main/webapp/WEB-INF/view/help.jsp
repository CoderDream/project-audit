<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/help.css">
<script type="text/javascript">
	window.onload = function() {
		var indexCode = "";
		var contextHs = document.querySelector(".content").children;
		var id, level, node;
		for (var i = 0; i < contextHs.length; i++) {
			node = contextHs[i];
			if (/H\d+/.test(node.nodeName)) {
				id = "hIndex" + i;
				level = node.nodeName.substr(1, node.nodeName.length - 1);
				indexCode += '<a class="index'+level +'" href="#'+ id +'">'
						+ node.innerHTML + '</a>';
				node.innerHTML = '<a name="'+id+'"></a>' + node.innerHTML;
			}

		}
		document.querySelector(".index").innerHTML = indexCode;
	};
</script>
</head>
<body>
	<a name="home"></a>
	<div class="title">项目审计操作手册</div>
	<span class="index-title">目录</span>
	<div class="index"></div>
	<div class="content">
		<h1>新增项目审计</h1>
		<h2>登录</h2>
		<p>
			根据使用者的角色，登陆后看到如下界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image001.png">
		</p>
		<h2>选择项目信息</h2>
		<p>
			(1) 点击【新增项目审计】图标后，进入项目查询界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image002.png">
		</p>
		<p>
			(2) 输入查询条件“HiSTB”，会自动查询出匹配的项目列表：<img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image003.png">
		</p>
		<p>
			(3) 选择需要的审计的项目： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image004.png">
		</p>
		<p>
			(4) 点击【查询】按钮，进入项目审计页面，如下图所示： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image005.png">
		</p>
		<h2>新增审计科目</h2>
		<p>
			(1) 进入审计科目页面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image006.png">
		</p>
		<p>
			(2) 点击【请选择审计科目】下拉选单，弹出可选列表： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image007.png">
		</p>
		<p>
			(3) 选择【质量目标合理性】 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image008.png">
		</p>
		<p>
			(4) 输入审计内容 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image009.png">
		</p>
		<p>
			(5) 选择【是否通过】 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image010.png">
		</p>
		<p>
			(6) 点击【新增】按钮，弹出【新增成功】信息。 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image011.png">
		</p>
		<p>
			(7) 新增成功后，返回项目审计页面 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image012.png">
		</p>
		<p>
			(8) 页面校验一：新增时，【审计科目】不能为空，【评价内容】也不能为空，且不能超过100个字符！ <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image013.png">
		</p>
		<p>
			(9) 页面校验二：如果用户已评价此项目的项目科目，则不能再次新增评价该审计科目，只能修改审计科目： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image014.png">
		</p>
		<h2>修改审计科目</h2>
		<p>(1) 点击需要修改的审计科目（质量目标合理性）右边的向右图片：</p>
		<p>
			(2) 进入该审计科目的详情页面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image015.png">
		</p>
		<p>
			(3) 修改【审计内容】和【是否通过】信息： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image016.png">
		</p>
		<p>
			(4) 修改成功 <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image017.png">
		</p>
		<p>
			(5) 用户点击“生成管道发运质检委托”按钮。点击【修改】按钮，弹出【修改成功】提示框，点击【确定】按钮后，回到项目评价信息页面 <img
				class="ph"
				src="${pageContext.request.contextPath}/assets/image/image018.png">
		</p>
		<p>(6) 修改后返回</p>
		<h2>删除审计科目</h2>
		<p>(1) 点击需要修改的审计科目（质量目标合理性）右边的向右图片：</p>
		<p>(2) 进入该审计科目的详情页面：</p>
		<p>
			(3) 点击【删除】按钮，弹出提示框： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image019.png">
		</p>
		<p>
			(4) 点击【确定】按钮，则该审计科目信息被删除，同时返回项目审计页面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image020.png">
		</p>
		<p>如果点击【取消】按钮，则不删除该审计科目。</p>
		<h1>查看我的审计</h1>
		<h2>登录</h2>
		<p>
			根据使用者的角色，登陆后看到如下界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image001.png">
		</p>
		<h2>查看项目信息列表</h2>
		<p>
			(1) 点击【查看我的审计】图标后，进入项目查询界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image021.png">
		</p>
		<p>
			(2) 点击某个项目，如“供应_DF_流通子产品2017年7月版本”右边详情旁的向右图标，进入该项目的审计页面： <img
				class="ph"
				src="${pageContext.request.contextPath}/assets/image/image022.png">
		</p>
		<p>在这个页面，可以进行审计科目的增删改查操作 。操作方法请参考【新增项目审计】章节。</p>
		<h1>查看项目审计（按审计科目）</h1>
		<h2>登录</h2>
		<p>
			根据使用者的角色，登陆后看到如下界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image023.png">
		</p>
		<h2>选择【查看项目审计（按审计科目）】</h2>
		<p>
			(1) 点击【查看项目审计（按审计科目）】图标后，进入审计科目多选查询界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image024.png">
		</p>
		<p>
			(2) 勾选【质量评价数据填报准确性】后，点击【查询】按钮： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image025.png">
		</p>
		<p>
			(3) 得到项目信息列表： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image026.png">
		</p>
		<p>
			(4) 点击某个项目，如“icaptain-v3.1.6-2017-06”右边详情旁的向右图标，进入该项目的审计页面，如下图所示： <img
				class="ph"
				src="${pageContext.request.contextPath}/assets/image/image027.png">
		</p>
		<p>可通过微信自带的转发功能，将该项目审计信息发送给需要查看的人。</p>
		<h1>查看项目审计（按项目信息）</h1>
		<h2>登录</h2>
		<p>
			根据使用者的角色，登陆后看到如下界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image023.png">
		</p>
		<h2>选择【查看项目审计（按项目信息）】</h2>
		<p>
			(1) 点击【查看项目审计（按项目信息）】图标后，进项目信息查询界面： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image002.png">
		</p>
		<p>
			(2) 输入查询条件“HiSTB”，会自动查询出匹配的项目列表： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image003.png">
		</p>
		<p>
			(3) 选择需要的审计的项目： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image004.png">
		</p>
		<p>
			(4) 点击【查询】按钮，进入项目审计页面，如下图所示： <img class="ph"
				src="${pageContext.request.contextPath}/assets/image/image012.png">
		</p>
		<p>可通过微信自带的转发功能，将该项目审计信息发送给需要查看的人。</p>
	</div>
	<a class="back" href="#home">&Lambda;</a>
</body>
</html>