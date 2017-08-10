<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Popup-Confirm-Alert</title>
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
<script type="text/javascript">
$(function(){
	window.confirm=function(options){
		options=options.constructor==String ? {message:options}:options;
		options.ok=options.ok || "确定";
		options.cancel=options.cancel || "取消";
		var pop=$('<div style="z-index: 999999999999999999999;background-color: rgba(0,0,0,0.3);display: flex;position: absolute;width: 100%;height: 100%;align-items: center;justify-content: center;">'+
				'<div style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
				 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">'+options.message+'</span>'+
			    '<div style="display: flex;">'+
			        '<span class="abc" data-active="cancel" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 0px 1em;border: none;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.cancel+'</span>'+
			        '<span class="abc" data-active="ok" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 1em 0px;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.ok+'</span>'+
			    '</div>'+
			'</div></div>').appendTo($("body")).show();
			pop.find(".abc").click(function(){
				pop.hide();
				options.callback && options.callback($(this).attr("data-active"));
			});
	};
	window.alert=function(options){
		options=options.constructor==String ? {message:options}:options;
		options.ok=options.ok || "确定";
		var pop=$('<div style="z-index: 999999999999999999999;background-color: rgba(0,0,0,0.3);display: flex;position: absolute;width: 100%;height: 100%;align-items: center;justify-content: center;">'+
				'<div style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
				 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">'+options.message+'</span>'+
			    '<div style="display: flex;">'+
			        '<span class="abc" data-active="ok" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 1em 0px;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.ok+'</span>'+
			    '</div>'+
			'</div></div>').appendTo($("body")).show();
			pop.find(".abc").click(function(){
				pop.hide();
				options.callback && options.callback($(this).attr("data-active"));
			});
	};
	$("#my_popup").on("click", function() {	
		confirm({
			message:"确定删除?",
			cancel:"取消",
			ok:"确定",
			callback:function(result){
				if(result=="ok"){
					
				}else{
					
				}
			}
		});
	});
	
	
	$("#delete-btn").on("click", function() {
		confirm({
			message:"是否确认删除审计科目？",
			cancel:"取消",
			ok:"确定",
			callback:function(result){
				if(result=="ok"){
					var id = $("#id").val();
					var projectId = $("#projectId").val();
					var url = "/audit/audit-delete?projectId=" + projectId + "&projectAuditTypeId=" + id;
					window.location = url;
				}else{
					return;
				}
			}
		})
	});
	
	$("#my_popup2").on("click", function() {		
		alert({
			message:"数据异常?"
		});
	});
	
	$("#my_popup22").on("click", function() {		
		function back(){
			var url = "/audit/audit?projectId=" + projectId;
			window.location = url;
		}
		// var auditType = '${auditType}';
		if('add' == operateType){
			alert({message:'新增成功',callback: back});
		} else if('edit' == operateType){
			alert({message:'修改成功',callback: back});
		} else {
			alert({message:'提交成功',callback: back});
		}				
	});
	
	
});
</script>
</head>
<body>
	
<form action="">
<input type="button" value="Confirm" id="my_popup">
<input type="button" value="Alert" id="my_popup2">
<span id="resultPanel"></span>
</form>
</body>
</html>