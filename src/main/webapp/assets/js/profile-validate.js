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
    	
	// 更新profile信息
	$("#profile-update-form").validate({
		//ignore : "",//不验证的元素
		rules : {
			serviceYear : { // 
				required : true, // 必填，这里可以是一个匿名方法
				number : true,
				range:[0,50], // 输入值必须介于 5 和 10 之间
			}, // 工作年限
			
			inBjcDateString : { // 
				required : true, // 必填，这里可以是一个匿名方法
				date : true,
			}, // 任务描述必填
			
			education : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 学历

			major : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 专业
			
			university : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 毕业院校
			
			graduateDateString : { // 
				required : true, // 必填，这里可以是一个匿名方法
				date : true,
			}, // 毕业日期
			
			mainWorkPlace : { 
				required : true, 
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 主要工作地点
			
			choseWorkPlace : { 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 可选工作地点
			
			selftEvaluate : { 
				required : true, 
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 自我评价
		},
		messages : { // 对应上面的错误信息
			serviceYear : "工作年限必须为整数，且在0~50之间",
			inBjcDateString : "入职日期不能为空，且为时间格式",
			education : "学历不能为空",
			major : "专业不能为空",
			university : "毕业院校不能为空",
			graduateDateString : "毕业日期不能为空，且为时间格式",
			mainWorkPlace : "主要工作地点不能为空",
			choseWorkPlace : "可选工作地点不能为空",
			selftEvaluate : "自我评价不能为空",
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
			var workId = $("#workId").val();
			var gender = $("input[name='gender']:checked").val();
			var serviceYear = $("#serviceYear").val();
			var inBjcDateString = $("#inBjcDateString").val();
			var education = $("#education").val();
			var major = $("#major").val();
			var university = $("#university").val();
			var graduateDateString = $("#graduateDateString").val();
			var mainWorkPlace = $("#mainWorkPlace").val();
			var choseWorkPlace = $("#choseWorkPlace").val();
//			var tmWorkId = $("#tmWorkId").val();
//			var stateId = $("#stateId").val();
			var selftEvaluate = $("#selftEvaluate").val();
//			var tmEvalContent  = $("#tmEvalContent").val();
//			var tmEvalStarLevel  = $("#tmEvalStarLevel").val();
//			var baseBsm  = $("#baseBsm").val();
			
			var url = "/profile/profile-update-save";
			var profileView = {
					id : id,
					workId : workId,
					gender : gender,
					serviceYear : serviceYear,
					inBjcDateString : inBjcDateString,
					education : education,
					major : major,
					university : university,
					graduateDateString : graduateDateString,
					mainWorkPlace : mainWorkPlace,
					choseWorkPlace : choseWorkPlace,
					//tmWorkId : tmWorkId,
					selftEvaluate : selftEvaluate
					//tmEvalContent : tmEvalContent,
					//tmEvalStarLevel : tmEvalStarLevel,
					//baseBsm : baseBsm,
					//stateId : stateId
			};

			$.mobile.loading("show");
			
			$.ajax({
				url: url,
				type: 'POST',
				dataType: "json",
				//dataType:"html",
	            contentType: "application/json",
				data: JSON.stringify(profileView)
			})
			.then(function(response) {
				$.mobile.loading("hide");
				alert('提交成功');			
			});
		}
	});
	
	
	// 修改PM评价
	$("#pm-evaluate-form").validate({
		rules : {
			evaluateContent : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填
			
			pmEvalStarLevel : { // 
				required : true, // 必填，这里可以是一个匿名方法
				digits : true,
				range:[1,5], // 输入值必须介于 5 和 10 之间
			}, // 任务描述必填
		},
		messages : { // 对应上面的错误信息
			evaluateContent : "评价内容不能为空",
			pmEvalStarLevel : "所需人数必须为整数，且在1~5之间",

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
			var workId = $("#workId").val();
			var profileId = $("#profileId").val();
			var projectId = $("#projectId").val();
			var pmWorkId = $("#pmWorkId").val();
			var evaluateContent = $("#evaluateContent").val();
			var pmEvalStarLevel = $("#pmEvalStarLevel").val();
			
			var url = "/profile/save-pm-evaluate";
			var profileView = {
				id : id,
				workId : workId,
				profileId : profileId,
				projectId : projectId,
				pmWorkId : pmWorkId,
				evaluateContent : evaluateContent,
				pmEvalStarLevel : pmEvalStarLevel
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
				$.mobile.loading("hide");
				alert('修改成功');			
			});
		}
	});
	
	// 修改TM评价
	$("#tm-evaluate-form").validate({
		rules : {
			tmEvalContent : { // 
				required : true, // 必填，这里可以是一个匿名方法
				rangelength : [ 1, 50 ], // 长度5-10之间
			}, // 任务描述必填
			
			tmEvalStarLevel : { // 
				required : true, // 必填，这里可以是一个匿名方法
				digits : true,
				range:[1,5], // 输入值必须介于 5 和 10 之间
			}, // 任务描述必填
		},
		messages : { // 对应上面的错误信息
			tmEvalContent : "评价内容不能为空",
			tmEvalStarLevel : "工作评价（星级评定1~5）必须为整数，且在1~5之间",

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
			var tmEvalContent  = $("#tmEvalContent").val();
			var tmEvalStarLevel  = $("#tmEvalStarLevel").val();
			
			var url = "/profile/save-tm-evaluate";
			var profileView = {
				id : id,
				tmEvalContent : tmEvalContent,
				tmEvalStarLevel : tmEvalStarLevel
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
				$.mobile.loading("hide");
				alert('修改成功');			
			});
		}
	});
	
	// 创建或修改Skill
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
			var profileId = $("#profileId").val();
			var skillId = $("#skillId").val();
			var proficiencyId = $("#proficiencyId").val();
			var skillIdName = $("#skillIdName").val();
			var proficiencyName = $("#proficiencyName").val();

			var url = "/profile/skill-update-save";
			var skillView = {
				id : id,
				profileId : profileId,
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
				//dataType:"html",
	            contentType: "application/json",
				// crossDomain: false,
				data: JSON.stringify(skillView)
			})
			.then(function(response) {
				$.mobile.loading("hide");
				alert('技能新增成功');			
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
			var profileId = $("#profileId").val();
			var skillId = $("#skillId").val();
			var proficiencyId = $("#proficiencyId").val();
			var skillIdName = $("#skillIdName").val();
			var proficiencyName = $("#proficiencyName").val();

			var url = "/profile/skill-update-save";
			var skillView = {
				id : id,
				profileId : profileId,
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
				//dataType:"html",
	            contentType: "application/json",
				// crossDomain: false,
				data: JSON.stringify(skillView)
			})
			.then(function(response) {
				$.mobile.loading("hide");
				alert('技能修改成功');			
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
			var profileId = $("#profileId").val();
			var domainId = $("#domainId").val();
			var experienceId = $("#experienceId").val();
			var domainIdName = $("#domainIdName").val();
			var experienceName = $("#experienceName").val();

			var url = "/profile/domain-update-save";
			var domainView = {
				id : id,
				profileId : profileId,
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
				//dataType:"html",
	            contentType: "application/json",
				// crossDomain: false,
				data: JSON.stringify(domainView)
			})
			.then(function(response) {
				$.mobile.loading("hide");
				alert('领域修改成功');			
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
			

			var url = "/profile/profile-list";
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