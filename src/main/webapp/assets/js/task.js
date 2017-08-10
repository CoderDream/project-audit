/* 
 * 人力看板查询相关JavaScript
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	$("#task-save-btn").on("click", function() {
		var id = $("#id").val();
		var projectId = $("#projectId").val();
		var taskState = $("input[name='taskState']:checked").val();
		var taskName = $("#taskName").val();
		var taskDescription = $("#taskDescription").val();
		var projectName = $("#projectName").val();
		var contactsWorkId = $("#contactsWorkId").val();
		var acceptanceStandard = $("#acceptanceStandard").val();
		var taskStateString = $("#taskStateString").val();

		var url = "/task/saveTask";
		var taskView = {
			id : id,
			projectId : projectId,
			taskState : taskState,
			taskName : taskName,
			taskDescription : taskDescription,
			projectName : projectName,
			contactsWorkId : contactsWorkId,
			acceptanceStandard : acceptanceStandard,
			taskStateString : taskStateString
		};

		$.mobile.loading("show");
		$.post(url, taskView, function(data) {
			$.mobile.loading("hide");
			alert('修改成功');
		});
	});
	
	$("#task-update-rtn-btn").on("click", function() {
		var id = $("#id").val();

		var url = "/task/task?taskId=" + id;
		window.location = url;
	});
	
	$("#taskitem-update-rtn-btn").on("click", function() {
		var id = $("#id").val();

		var url = "/task/back-to-taskitem-create?taskItemId=" + id;
		window.location = url;
	});
	
	$("#taskitem-create-rtn-btn").on("click", function() {
		var taskId = $("#taskId").val();

		var url = "/task/task?taskId=" + taskId;
		window.location = url;
	});
	
	$("#skill-create-rtn-btn").on("click", function() {
		var taskItemId = $("#taskItemId").val();

		var url = "/task/back-to-taskitem-create?taskItemId=" + taskItemId;
		window.location = url;
	});
	
	$("#domain-create-rtn-btn").on("click", function() {
		var taskItemId = $("#taskItemId").val();

		var url = "/task/back-to-taskitem-create?taskItemId=" + taskItemId;
		window.location = url;
	});
	
	$("#skill-update-rtn-btn").on("click", function() {
		var taskItemId = $("#taskItemId").val();

		var url = "/task/taskitem?taskItemId=" + taskItemId;
		window.location = url;
	});
	
	$("#domain-update-rtn-btn").on("click", function() {
		var taskItemId = $("#taskItemId").val();

		var url = "/task/taskitem?taskItemId=" + taskItemId;
		window.location = url;
	});

	$("#query-condition-btn").on("click", function() {
		var conditionType = $("#conditionType").val();
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
				queryString : chk_value,
				conditionType : conditionType
			};
			
			var url = "/task/taskitem-list?queryCondition=" + encodeURI(JSON.stringify(queryCondition));
			window.location = url;
		}
	});
	
});
