/* 
 * 人力看板查询相关JavaScript
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	var auditItem = $("#auditItem");
	var operateType = $("#operateType").val();
	// alert("auditType: " + auditType);
	var url = "/audit/dictionary/audit";
	$.ajax({
		url: url,
		dataType: "json",
		crossDomain: false,
		data: {
			type: auditType
		}
	})
	.then(function(response) {
		if('add' == operateType) {
			var index = 0;
			var html = '<option value="">--请选择审计科目--</option>';
			for(var key in response){
				//if(!auditTypeKeys.find(function(obj,index,list){return obj == key;})) {
					html += '<option value="' + key + '">' + response[key] + '</option>';
				//}
			}
			auditItem.html(html);
		}
		
		if('edit' == operateType) {
			var auditTypeKey = $("#auditTypeKey").val();
			
			var index = 0;
			var html = '';
			for(var key in response){
				if(auditTypeKey == key) {
					html += '<option value="' + key + '">' + response[key] + '</option>';
				}
			}
			
			auditItem.html(html).val(auditTypeKey).trigger("change");
			auditItem.selectmenu({disabled: true});
			//auditItem.attr("disabled","disabled");  
		}
	});
	
	$("#rtn-btn").on("click", function() {
		var projectId = $("#projectId").val();

		var url = "/audit/audit?projectId=" + projectId;
		window.location = url;
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
					var url = "/audit/audit-delete?projectId=" + projectId + "&projectAuditTypeKey=" + id;
					window.location = url;
				}else{
					return;
				}
			}
		});
	});

	$("#auditItem").change(function() {
		var checkText = $("#auditItem").find("option:selected").text(); // 获取Select选择的Text
		var checkValue = $("#auditItem").val(); // 获取Select选择的Value
		//var checkIndex = $("#auditItem")[0].selectedIndex; // 获取Select选择的索引值
		//var maxIndex = $("#auditItem option:last").attr("index"); // 获取Select最大的索引值
		var auditItem = $("#auditItem");
		 
		if('add' == operateType && auditTypeKeys.find(function(obj,index,list){return obj == checkValue;})) {
			alert({message:"该审计科目已评价，请评价其他科目！",callback:function(){
				$("#auditItem").val('').selectmenu("refresh");
			}});
			
		} else {
			$("#auditTypeKey").val(checkValue);
		}
		//alert(checkText);
		//alert(checkValue);
		//alert(checkIndex);
		//alert(maxIndex);
		
		//alert('window.auditTypeKeys ' + window.auditTypeKeys);
		//alert('window.auditTypeKeys length' + window.auditTypeKeys.length);
	});
	
	pushHistory(); 
	
	window.addEventListener("popstate", function(e) { 
	   // alert("我监听到了浏览器的返回按钮事件啦");//根据自己的需求实现自己的功能 
	   // window.location = 'http://www.baidu.com';
		var projectId = $("#projectId").val();
		
		var url = "/audit/audit?projectId=" + projectId;
		window.location = url;
	}, false); 
	    
	function pushHistory() { 
	  var state = { 
	    title: "title", 
	    url: "#"
	  }; 
	  window.history.pushState(state, "title", "#"); 
	}
});


//选中角色之后，根据索引动态载入相应工号
function check() {
	//1:拿到select对象： 
	var myselect = document.getElementById("staff");

	//2：拿到选中项的索引：
	var index = myselect.selectedIndex; // selectedIndex代表的是你所选中项的index

	//3:拿到选中项options的value：  
	//alert(myselect.options[index].value);

	// 4:拿到选中项options的text：  
	//alert(myselect.options[index].text);

	if ('' == myselect.options[index].value) {
		alert('请先选择一个员工');
	} else {
		var url = "${pageContext.request.contextPath}/login?workId="
				+ myselect.options[index].value;
		window.location = url;
	}
}
