/* 
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	var workPlaceItem = $("#workPlaceItem");
	//var operateType = $("#operateType").val();
	var url = "/dictionary/city-all";
	$.ajax({
		url: url,
		dataType: "json",
		crossDomain: false,
	})
	.then(function(response) {
		if('add' == operateType) {
			var index = 0;
			var html = '<option value="">--请选择工作城市--</option>';
			for(var key in response){
				html += '<option value="' + key + '">' + response[key] + '</option>';
			}
			workPlaceItem.html(html);
		}
		
		if('edit' == operateType) {
			var workPlace = $("#workPlace").val();
			
			var index = 0;
			var html = '<option value="">--请选择工作城市--</option>';
			for(var key in response){
				//if(workPlace == key) {
					html += '<option value="' + key + '" >' + response[key] + '</option>';
				//}
			}
			
			workPlaceItem.html(html).val(workPlace).trigger("change");
			workPlaceItem.selectmenu({disabled: true});
			//workPlaceItem.attr("disabled","disabled");  
		}
	});
	
	$("#workPlaceItem").change(function() {
		var checkText = $("#workPlaceItem").find("option:selected").text(); // 获取Select选择的Text
		var checkValue = $("#workPlaceItem").val(); // 获取Select选择的Value
		//var checkIndex = $("#workPlaceItem")[0].selectedIndex; // 获取Select选择的索引值
		//var maxIndex = $("#workPlaceItem option:last").attr("index"); // 获取Select最大的索引值
		var workPlaceItem = $("#workPlaceItem");
		 
//		if('add' == operateType) {
//			$("#workPlaceItem").val('').selectmenu("refresh");
//			$("#workPlace").val(checkValue);
//		} else {
			$("#workPlace").val(checkValue);
//		}
		//alert(checkText);
		//alert(checkValue);
		//alert(checkIndex);
		//alert(maxIndex);
		
		//alert('window.workPlaces ' + window.workPlaces);
		//alert('window.workPlaces length' + window.workPlaces.length);
	});
});
