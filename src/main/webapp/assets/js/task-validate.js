// addMethod第1个参数:方法名称
// addMethod第2个参数:验证方法，
jQuery.validator.addMethod("regex", function(value, element, params) {
	// 验证方法参数（被验证元素的值，被验证元素，参数）
	var exp = new RegExp(params); // 实例化正则对象，参数为用户传入的正则表达式
	return exp.test(value); // 测试是否匹配
}, "格式错误");

$(function() {
	
    jQuery.validator.methods.compareDate = function(endTime, element, param) {
    	var startDate = jQuery(param).val();
		var start = new Date(startDate.replace("-", "/").replace("-", "/"));
		var end = new Date(endTime.replace("-", "/").replace("-", "/"));
		if (end < start) {
			return false;
		}
		return true;
    };
    
	$("#task-form").validate({
		//ignore : "",//不验证的元素
		rules : {
			taskName : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务名称必填
			taskDescription : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填
			
			autocomplete_input_project : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填

			projectId : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填

			
			acceptanceStandard : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填
			
			taskState : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
			}, // 任务描述必填
		},
		messages : { // 对应上面的错误信息
			taskName : "任务名称不能为空",
			taskDescription : "任务描述不能为空",
			autocomplete_input_project : "任务描述不能为空，请输入条件查询获取项目相关信息",
			projectId : "任务描述不能为空，请输入条件查询获取项目相关信息",
			acceptanceStandard : "验收标准不能为空",
			taskState : "任务状态不能为空",
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
			var id = $("#id").val();
			var createrWorkId = $("#createrWorkId").val();
			
			/** 任务名称 */
			var taskName = $("#taskName").val();
			/** 任务描述 */
			var taskDescription = $("#taskDescription").val();
			/** 项目ID */
			var projectId = $("#projectId").val();
			/** 联系人员工号 */
			var contactsWorkId = $("#contactsWorkId").val();
			/** 验收标准 */
			var acceptanceStandard = $("#acceptanceStandard").val();
			/** 验收人 */
			var acceptanceWorkId = $("#acceptanceWorkId").val();
			/** 任务状态 */
			var taskState = $("input[name='taskState']:checked").val();

			var url = "/task/task-update-save";
			var taskView = {
					id : id,
					createrWorkId : createrWorkId,
					taskName : taskName,
					taskDescription : taskDescription,
					projectId : projectId,
					contactsWorkId : contactsWorkId,
					acceptanceStandard : acceptanceStandard,
					acceptanceWorkId : acceptanceWorkId,
					taskState : taskState
			};

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
	            contentType: "application/json",
				data: JSON.stringify(taskView)
			})
			.then(function(response) {
				alert({message:'保存成功', callback: function() {
					var taskId = response.id;
					var url = "/task/task?taskId=" + taskId;
					window.location = url;
					$.mobile.loading("hide");
				}});
			});
		}
	});
	
	// 修改TaskItem
	$("#taskitem-form").validate({
		rules : {
			taskItemDescription : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填
			
			enginnerAmount : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				digits : true,
				range:[1,100], // 输入值必须介于 5 和 10 之间
			}, // 任务描述必填

			bsm : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				number : true,
				range:[1,1000], // 输入值必须介于 5 和 10 之间
			}, // 任务描述必填
			
			serviceYear : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				number : true,
				range:[0,50], // 输入值必须介于 5 和 10 之间
			}, // 任务描述必填
			
			planStartDateString : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				date : true,
			}, // 任务描述必填
			
			planEndDateString : { // 密码2的描述多于1项使用对象类型
				required : true, // 必填，这里可以是一个匿名方法
				date : true,
				compareDate: "#planStartDateString"
			}, // 任务描述必填
		},
		messages : { // 对应上面的错误信息
			taskItemDescription : "任务描述不能为空",
			enginnerAmount : "所需人数必须为整数，且在1~100之间",
			bsm : "bsm必须为合法的数字",
			serviceYear : "工作年限必须为整数，且在0~50之间",
			planStartDateString : "预计任务开始日期不能为空，且为时间格式",
			planEndDateString : "预计任务结束日期不能为空，且不能早于预计任务开始日期",
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
			var taskId = $("#taskId").val();
			var enginnerAmount = $("#enginnerAmount").val();
			var workPlace = $("#workPlace").val();
			var bsm = $("#bsm").val();
			var serviceYear = $("#serviceYear").val();
			var planStartDateString = $("#planStartDateString").val();
			var planEndDateString = $("#planEndDateString").val();
			var taskItemDescription = $("#taskItemDescription").val();

			var url = "/task/taskitem-update-save";
			var taskItemView = {
				id : id,
				taskId : taskId,
				enginnerAmount : enginnerAmount,
				workPlace : workPlace,
				bsm : bsm,
				serviceYear : serviceYear,
				planStartDateString : planStartDateString,
				planEndDateString : planEndDateString,
				taskItemDescription : taskItemDescription
			};

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
	            contentType: "application/json",
				data: JSON.stringify(taskItemView)
			})
			.then(function(response) {
				alert({message:'保存成功',callback: function() {
					var taskItemId = response.id;
					var url = "/task/taskitem-update?taskItemId=" + taskItemId;
					window.location = url;
					$.mobile.loading("hide");
				}});
			});
		}
	});
	
	// 修改Skill
	$("#skill-form").validate({
		rules : {
			autocomplete_input_skill : "required", 
			autocomplete_input_proficiency : "required", 
		},
		messages : { // 对应上面的错误信息
			autocomplete_input_skill : "技能不能为空",
			autocomplete_input_proficiency : "熟练程度不能为空",
		},

		/* 重写错误显示消息方法,以alert方式弹出错误消息 */  
		showErrors : function(errorMap, errorList) {
			var msg = "";
			$.each(errorList, function(i, v) {
				msg += (v.message + "<br>");
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
			var taskItemId = $("#taskItemId").val();
			var skillId = $("#skillId").val();
			var proficiencyId = $("#proficiencyId").val();
			var skillIdName = $("#skillIdName").val();
			var proficiencyName = $("#proficiencyName").val();

			var url = "/task/skill-update-save";
			var skillView = {
				id : id,
				taskItemId : taskItemId,
				skillId : skillId,
				proficiencyId : proficiencyId,
				skillIdName : skillIdName,
				proficiencyName : proficiencyName
			};

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
	            contentType: "application/json",
				data: JSON.stringify(skillView)
			})
			.then(function(response) {
				function back(){
					var url = "/task/taskitem-update?taskItemId=" + taskItemId;
					window.location = url;
				}
				$.mobile.loading("hide");
				if('add' == operateType){
					alert({message:'新增成功',callback: back});
				} else if('edit' == operateType){
					alert({message:'修改成功',callback: back});
				} else {
					alert({message:'提交成功',callback: back});
				}		
			});
		}
	});
	
	// 更新Domain
	$("#domain-form").validate({
		rules : {
			autocomplete_input_domain : "required", 
			autocomplete_input_experience : "required", 
		},
		messages : { // 对应上面的错误信息
			autocomplete_input_domain : "领域不能为空",
			autocomplete_input_experience : "熟练程度不能为空",
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
			var taskItemId = $("#taskItemId").val();
			var domainId = $("#domainId").val();
			var experienceId = $("#experienceId").val();
			var domainIdName = $("#domainIdName").val();
			var experienceName = $("#experienceName").val();

			var url = "/task/domain-update-save";
			var domainView = {
				id : id,
				taskItemId : taskItemId,
				domainId : domainId,
				experienceId : experienceId,
				domainIdName : domainIdName,
				experienceName : experienceName
			};

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
	            contentType: "application/json",
				data: JSON.stringify(domainView)
			})
			.then(function(response) {
				function back(){
					var url = "/task/taskitem-update?taskItemId=" + taskItemId;
					window.location = url;
				}
				$.mobile.loading("hide");
				if('add' == operateType){
					alert({message:'新增成功',callback: back});
				} else if('edit' == operateType){
					alert({message:'修改成功',callback: back});
				} else {
					alert({message:'提交成功',callback: back});
				}	
			});
		}
	});
	
	// 按条件条件查询任务
	$("#query-condition-form1").validate({
		rules : {
			autocomplete_input_domain : "required", 
			autocomplete_input_experience : "required", 
		},
		messages : { // 对应上面的错误信息
			autocomplete_input_domain : "领域不能为空",
			autocomplete_input_experience : "熟练程度不能为空",
		},

		errorPlacement : function(error, element) { // 指定错误信息位置
			if (element.is(':radio') || element.is(':checkbox')) { // 如果是radio或checkbox
				var eid = element.attr('name'); // 获取元素的name属性
				error.appendTo(element.parent()); // 将错误信息添加当前元素的父结点后面
			} else {
				error.insertAfter(element);
			}
		},

		debug : false, // 如果修改为true则表单不会提交
		submitHandler : function() {
			 //jquery获取复选框值 
			var chk_value = [];
			$('input[name="query-checkbox"]:checked').each(function() {
				chk_value.push($(this).val());
			});
			alert(chk_value.length == 0 ? '你还没有选择任何内容！' : chk_value); 
			

			var url = "/task/taskitem-list";
			var queryCondition = {
				queryString : chk_value,
				conditionType : "workPlace"
			};
			

			//$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
				//dataType:"html",
	            contentType: "application/json",
				// crossDomain: false,
				//data: queryCondition
				data: JSON.stringify(queryCondition)
			})
			.then(function(response) {
				//$.mobile.loading("hide");
				//alert('领域修改成功');			
			});
		}
	});
	
	
});