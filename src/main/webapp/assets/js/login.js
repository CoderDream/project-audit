/* 
 * 人力看板查询相关JavaScript
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	$("#login-form22").validate({
		//ignore : "",//不验证的元素
		rules : {
			workId : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务名称必填
			
		},
		messages : { // 对应上面的错误信息
			workId : "任务名称不能为空",
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
			// alert("开始提交了");
			var workId = $("#workId").val();
			var url = "/login";

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
				dataType:"html",
				// contentType: "application/json",
				// crossDomain: false,
				data: workId
			})
			.then(function(response) {
				$.mobile.loading("hide");
				// alert('提交成功');			
			});
		}
	});
	
	
});
