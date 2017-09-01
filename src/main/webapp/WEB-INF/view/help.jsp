<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/help.css">
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
	<div class="title">帮助手册</div>
	<h1>目录</h1>
	<div class="index"></div>
	<div class="content">
		<h1>一级1</h1>
		<h2>二级1</h2>
		<h2>二级2</h2>
		<h3>三级1</h3>
		<p>
			sada sdfds adfadf sada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds adfadfsada <img
				class="ph" src="${pageContext.request.contextPath}/assets/image/timg.jpg" /> <span> 图片描述文字 </span>
		</p>

		<h3>三级2</h3>
		<h4>四级1</h4>
		<p>
			sada sdfds adfadf sada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds <br> adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds adfadfsada sdfds
			adfadfsada sdfds adfadf </br>
		</p>
		<h4>四级2</h4>
		<h4>四级3</h4>
		<h3>三级3</h3>
		<h2>二级3</h2>
		<p>sdfsdadfadf dgsfgsfg</p>
		<h1>一级2</h1>
		<h2>二级1</h2>
		<h3>三级1</h3>
		<h3>三级2</h3>
		<h2>二级2</h2>
		<h2>二级3</h2>
		<h1>一级3</h1>
		<h1>一级4</h1>
	</div>
	<a class="back" href="#home">&Lambda;</a>
</body>
</html>