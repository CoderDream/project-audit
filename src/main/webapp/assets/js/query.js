/* 
 * 人力看板查询相关JavaScript
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	
	$("#autocomplete-project").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html;
		if(value && value.length > 1) {
			$ul.html("");
			var url = "/project/list";
			$ul.html("<li><div class='ui-loader'><span class='ui-icon ui-icon-loading'></span></div></li>");
			$ul.listview("refresh");
			$.ajax({
				url: url,
				dataType: "json",
				crossDomain: false,
				data: {
					value: $input.val()
				}
			})
			.then(function(response) {
				$.each(response, function(i, val) {
					var projectName = val.projectName;
					html = $('<li data-val="' + i + '">' + projectName + '</li>');
					html.data("_dataItem_",val);
					$ul.append(html);
					$("#projectId").val('');//清空填充内容 
					$("#project").hide(); // 隐藏项目详情
				});
				//$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
				$("#autocomplete-project>li").on("click", function(e) {
					var projectitem = $(this).data("_dataItem_");
					var projectId = projectitem.id;
					var projectName = projectitem.projectName;
					var projectmgrWorkId = projectitem.projectmgrWorkId;
					var projectmgrName = projectitem.projectmgrName
					var projectstartdatetime = new Date(projectitem.projectstartdatetime);
					var projectenddatetime = new Date(projectitem.projectenddatetime);
					var projectStartDateString = projectstartdatetime.formatToString("yyyy-MM-dd");
					var projectEndDateString = projectenddatetime.formatToString("yyyy-MM-dd");
					
					// $("#contactsName").val('[' + projectmgrWorkId + ']' + projectmgrName);
					$("#projectStartDateString").val(projectStartDateString);
					$("#projectEndDateString").val(projectEndDateString);
					
					// console.log(projectitem.projectName);
					var key = $(this).attr("data-val");
					var value = $(this).text();
					$("#project").show(); // 显示项目详情
					//$("#projectId").attr("value", key);//填充内容 
					$("#projectId").val(key);//填充内容 
					$("#autocomplete_input_project").val(value); 
					// console.log($("#projectId").val());
					// alert($("#projectId").val());
					// 点击后，关闭弹出框
					html = "";
					$ul.html(html);
					$ul.listview("refresh");
					$ul.trigger("updatelayout");
				});
			});
		}
	});  
	
	$("#project-audit-query-condition-btn").on("click", function() {
		//jquery获取复选框值 
		var chk_value = [];
		$('input[name="query-checkbox"]:checked').each(function() {
			chk_value.push($(this).val());
		});
		if(chk_value.length == 0) {
			alert('你还没有选择任何内容！'); 
		}
		else {
			var queryCondition = {
				queryString : chk_value
			};
	
			var url = "/audit/audit-list?queryCondition=" + encodeURI(JSON.stringify(queryCondition));
			window.location = url;
		}
	});
	
	$("#autocomplete-query-by-project").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val();
		if(value && value.length > 1) {
			$ul.html("");
			var url = "/project/query";
			$ul.html("<li><div class='ui-loader'><span class='ui-icon ui-icon-loading'></span></div></li>");
			$ul.listview("refresh");
			$.ajax({
				url: url,
				dataType: "json",
				crossDomain: false,
				data: {
					value: $input.val()
				}
			})
			.then(function(response) {
				var html;
				$ul.html("");
				$.each(response, function(i, val) {
					var projectName = val.projectName;
					html = $('<li data-val="' + i + '">' + projectName + '</li>');
					html.data("_dataItem_", val);
					$ul.append(html);
					$("#projectId").val('');//清空填充内容 
					$("#project").hide(); // 隐藏项目详情
				});
				html="";
				//$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
				$("#autocomplete-query-by-project>li").on("click", function(e) {
					var projectitem = $(this).data("_dataItem_");
					var projectId = projectitem.id;
					var projectName = projectitem.projectName;
	
					var projectmgrWorkId = projectitem.projectmgrWorkId;
					var projectmgrName = projectitem.projectmgrName;
					var projectstartdatetime = new Date(projectitem.projectstartdatetime);
					var projectenddatetime = new Date(projectitem.projectenddatetime);
					var projectStartDateString = projectstartdatetime.formatToString("yyyy-MM-dd");
					var projectEndDateString = projectenddatetime.formatToString("yyyy-MM-dd");
					
					// $("#contactsName").val('[' + projectmgrWorkId + ']' + projectmgrName);
					$("#projectName").text('['+projectmgrWorkId+']'+projectmgrName);
					$("#projectStartDateString").text(projectStartDateString);
					$("#projectEndDateString").text(projectEndDateString);
					
					// console.log(projectitem.projectName);
					var key = $(this).attr("data-val");
					var value = $(this).text();
					//$("#projectId").attr("value", key);//填充内容 
					$("#projectId").val(key);//填充内容 
					$("#autocomplete_input_project").val(value); 
					$("#project").show(); // 显示项目详情
					// console.log($("#projectId").val());
					// alert($("#projectId").val());
					// 点击后，关闭弹出框
					html = "";
					$ul.html(html);
					$ul.listview("refresh");
					$ul.trigger("updatelayout");
				});
			});
		}
	});  
	
	$("#project-btn").on("click", function() {
		var projectId = $("#projectId").val();

		if ('' == projectId) {
			alert('请先输入有效的项目信息');
		}
		else {
			var url = "/audit/audit?projectId=" + projectId;
			window.location = url;
		}
	});
	
	// 创建或修改Skill
	$("#project-form22").validate({
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
	
});
