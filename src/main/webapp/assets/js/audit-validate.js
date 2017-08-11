// addMethod第1个参数:方法名称
// addMethod第2个参数:验证方法，
jQuery.validator.addMethod("regex", function(value, element, params) {
	// 验证方法参数（被验证元素的值，被验证元素，参数）
	var exp = new RegExp(params); // 实例化正则对象，参数为用户传入的正则表达式
	return exp.test(value); // 测试是否匹配
}, "格式错误");

$(function() {
	// 新增或修改审批
	$("#audit-form").validate({
		rules : {
			auditTypeId : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填

			auditContent : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 100 ], // 长度1-100之间
			}, // 任务描述必填
		},
		messages : { // 对应上面的错误信息
			auditTypeId : "审计科目不能为空",
			auditContent : "评价内容不能为空，且不能超过100个字符！",
		},

		/* 重写错误显示消息方法,以alert方式弹出错误消息 */  
		showErrors : function(errorMap, errorList) {
			var msg = "";
			$.each(errorList, function(i, v) {
				msg += (v.message + "\r\n");
			});
			if (msg != "") {
				alert(msg);
			}
		},  
        /* 失去焦点时不验证 */   
        onfocusout: false,

		debug : false, // 如果修改为true则表单不会提交
		submitHandler : function() {
			var id = $("#id").val();
			var auditTypeId  = $("#auditTypeId").val();
			var projectId  = $("#projectId").val();
			var auditWorkId  = $("#workId").val();
			var auditContent  = $("#auditContent").val();
			var auditState = $("input[name='auditState']:checked").val();
			
			var url = "/audit/audit-update-save";
			var profileView = {
				id : id,
				auditTypeId : auditTypeId,
				auditWorkId : auditWorkId,
				projectId : projectId,
				auditState : auditState,
				auditContent : auditContent
			};
			
			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
	            contentType: "application/json",
				data: JSON.stringify(profileView)
			})
			.then(function(response) {
				function back(){
					var url = "/audit/audit?projectId=" + projectId;
					window.location = url;
				}
				$.mobile.loading("hide");
				// var auditType = '${auditType}';
				if('add' == operateType){
					alert({message:'新增成功',callback: back});
				} else if('edit' == operateType){
					alert({message:'修改成功',callback: back});
				} else {
					alert({message:'提交成功',callback: back});
				}				
				// 返回项目页面
			});
		}
	});	
});