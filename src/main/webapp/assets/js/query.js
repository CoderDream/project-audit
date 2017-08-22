$(function() {
	
	$("#project-audit-query-condition-btn").on("click", function() {
		// jquery获取复选框值
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
		$("#projectId").val('');// 清空填充内容
		$("#project").hide(); // 隐藏项目详情
		$ul.html("");
		if(value && value.length > 1) {			
			var url = "/audit/project/query";
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
				});
				html="";
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
				$("#autocomplete-query-by-project>li").on("click", function(e) {
					var projectitem = $(this).data("_dataItem_");
					var projectId = projectitem.id;
					var projectName = projectitem.projectName;
	
					var projectMgrWorkId = projectitem.projectMgrWorkId;
					var projectMgrName = projectitem.projectMgrName;
					var projectstartdatetime = new Date(projectitem.projectStartDate);
					var projectenddatetime = new Date(projectitem.projectEndDate);
					var projectStartDateString = projectstartdatetime.formatToString("yyyy-MM-dd");
					var projectEndDateString = projectenddatetime.formatToString("yyyy-MM-dd");
					
					$("#projectName").text('['+projectMgrWorkId+']'+projectMgrName);
					$("#projectStartDateString").text(projectStartDateString);
					$("#projectEndDateString").text(projectEndDateString);
					
					var key = $(this).attr("data-val");
					var value = $(this).text();
					// $("#projectId").attr("value", key);//填充内容
					$("#projectId").val(key);// 填充内容
					$("#autocomplete_input_project").val(value); 
					$("#project").show(); // 显示项目详情
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
	
});
