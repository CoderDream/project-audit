/* 
 * 人力看板查询相关JavaScript
 * @Author: xulin
 * @Date:   2017-06-28 22:04:41
 * @Last Modified by:   
 * @Last Modified time: 
 */
$(function() {
	
	$("#login-btn").on("click", function() {
		var workId = $("#workId").val();

		var url = "/login?workId=" + workId;
		window.location = url;
	});
	
	
	$("#autocompletecity").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html = "";
		$ul.html("");
		var url = "/dictionary/city";
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
				html += '<li data-val="'+i+'"><span>' + val + '</span></li>';
			});
			
			$ul.html(html);
			
			$ul.listview("refresh");
			$ul.trigger("updatelayout");
			
			$("#autocompletecity>li").on("click", function(e) {
				//alert(e.key);
				
				//alert($(this).text());
				//alert($(this).attr("data-val"));
				//alert($(this).attr);
				
				var key = $(this).attr("data-val");
				var value = $(this).text();
				//alert('value ' + value);
				$("#mainWorkPlace").attr("value", key);//填充内容 
				$("#mainWorkPlace").val(key);//填充内容 
				$("#autocomplete_input_mainWorkPlace").val(value);//.attr("value", value);//填充内容 
				//alert('city ' + $("#city").val());
				//alert('autocomplete_input_city ' + $("#autocomplete_input_city").val());

				html = "";
				$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
			});
		});
	});
	
	
	$("#autocomplete-employee-state").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html = "";
		$ul.html("");
		var url = "/dictionary/employee-state";
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
				html += '<li data-val="'+i+'"><span>' + val + '</span></li>';
			});
			
			$ul.html(html);
			
			$ul.listview("refresh");
			$ul.trigger("updatelayout");
			
			$("#autocomplete-employee-state>li").on("click", function(e) {
				//alert(e.key);
				
				//alert($(this).text());
				//alert($(this).attr("data-val"));
				//alert($(this).attr);
				
				var key = $(this).attr("data-val");
				var value = $(this).text();
				//alert('value ' + value);
				$("#stateKey").attr("value", key);//填充内容 
				$("#stateKey").val(key);//填充内容 
				$("#autocomplete_input_employee-state").val(value);//.attr("value", value);//填充内容 
				//alert('employee-state ' + $("#employee-state").val());
				//alert('autocomplete_input_employee-state ' + $("#autocomplete_input_employee-state").val());

				html = "";
				$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
			});
		});
	});
	
	$("#autocompletetmWorkIdName").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html = "";
		$ul.html("");
		var url = "/tm/search";
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
				html += '<li data-val="' + i + '"><span>' + val + '</span></li>';
			});
			
			$ul.html(html);
			
			$ul.listview("refresh");
			$ul.trigger("updatelayout");
			
			$("#autocompletetmWorkIdName>li").on("click", function(e) {
				var key = $(this).attr("data-val");
				var value = $(this).text();
				//alert('value ' + value);
				$("#tmWorkId").attr("value", key);//填充内容 
				$("#tmWorkId").val(key);//填充内容 
				$("#autocomplete_input_tmWorkIdName").val(value);//.attr("value", value);//填充内容 
				//alert('university ' + $("#university").val());
				//alert('autocomplete_input_university ' + $("#autocomplete_input_university").val());

				html = "";
				$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
			});
		});
	});
});
