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
	
	$("#rtn-btn").on("click", function() {
		var id = $("#id").val();

		var url = "/profile/profile?profileId=" + id;
		window.location = url;
	});
	
	$("#autocompleteeducation").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			html = "";
		$ul.html("");
		var url = "/dictionary/education";
			$ul.html("<li><div class='ui-loader'><span class='ui-icon ui-icon-loading'></span></div></li>");
			$ul.listview("refresh");
			$.ajax({
				url: url,
				dataType: "json",
				crossDomain: false,
			})
			.then(function(response) {
				$.each(response, function(i, val) {
					html += '<li data-val="'+i+'">' + val + '</li>';
				});
				
				$ul.html(html);
				
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
				
				$("#autocompleteeducation>li").on("click", function(e) {
					var key = $(this).attr("data-val");
					var value = $(this).text();
					//alert('value ' + value);
					$("#education").attr("value", key);//填充内容 
					$("#education").val(key);//填充内容 
					$("#autocomplete_input_education").val(value);//.attr("value", value);//填充内容 
					//alert('education ' + $("#education").val());
					//alert('autocomplete_input_education ' + $("#autocomplete_input_education").val());
					
					html = "";
					$ul.html(html);
					$ul.listview("refresh");
					$ul.trigger("updatelayout");
				});
			});
	});
	
	$("#autocompletemajor").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html = "";
		$ul.html("");
		var url = "/dictionary/major";
		if(value) {
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
					html += '<li data-val="'+i+'">' + val + '</li>';
				});
				
				$ul.html(html);
				
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
				
				$("#autocompletemajor>li").on("click", function(e) {
					//alert(e.key);
					
					//alert($(this).text());
					//alert($(this).attr("data-val"));
					//alert($(this).attr);
					
					var key = $(this).attr("data-val");
					var value = $(this).text();
					//alert('value ' + value);
					$("#major").attr("value", key);//填充内容
					$("#major").val(key);//填充内容 
					$("#autocomplete_input_major").val(value);//.attr("value", value);//填充内容 
					//alert('major ' + $("#major").val());
					//alert('autocomplete_input_major ' + $("#autocomplete_input_major").val());

					html = "";
					$ul.html(html);
					$ul.listview("refresh");
					$ul.trigger("updatelayout");
				});
			});
		}
	});
	
	$("#autocompleteuniversity").on("filterablebeforefilter", function(e, data) {
		var $ul = $(this),
			$input = $(data.input),
			value = $input.val(),
			html = "";
		$ul.html("");
		var url = "/dictionary/university";
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
				html += '<li data-val="'+i+'">' + val + '</li>';
			});
			
			$ul.html(html);
			
			$ul.listview("refresh");
			$ul.trigger("updatelayout");
			
			$("#autocompleteuniversity>li").on("click", function(e) {
				//alert(e.key);
				
				//alert($(this).text());
				//alert($(this).attr("data-val"));
				//alert($(this).attr);
				
				var key = $(this).attr("data-val");
				var value = $(this).text();
				//alert('value ' + value);
				$("#university").attr("value", key);//填充内容 
				$("#university").val(key);//填充内容 
				$("#autocomplete_input_university").val(value);//.attr("value", value);//填充内容 
				//alert('university ' + $("#university").val());
				//alert('autocomplete_input_university ' + $("#autocomplete_input_university").val());

				html = "";
				$ul.html(html);
				$ul.listview("refresh");
				$ul.trigger("updatelayout");
			});
		});
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
				html += '<li data-val="'+i+'">' + val + '</li>';
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
				html += '<li data-val="'+i+'">' + val + '</li>';
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
				$("#stateId").attr("value", key);//填充内容 
				$("#stateId").val(key);//填充内容 
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
				html += '<li data-val="' + i + '">' + val + '</li>';
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
