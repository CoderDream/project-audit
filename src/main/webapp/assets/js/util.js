(function() {
	window.confirm=function(options){
		options=options.constructor==String ? {message:options}:options;
		options.ok=options.ok || "确定";
		options.cancel=options.cancel || "取消";
		var pop=$('<div style="z-index: 999999999999999999999;background-color: rgba(0,0,0,0.3);display: flex;position: fixed;top:0px;width: 100%;height: 100%;align-items: center;justify-content: center;">'+
				'<div style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
				 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">'+options.message+'</span>'+
			    '<div style="display: flex;">'+
			        '<span class="abc" data-active="cancel" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 0px 1em;border: none;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.cancel+'</span>'+
			        '<span class="abc" data-active="ok" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 1em 0px;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.ok+'</span>'+
			    '</div>'+
			'</div></div>').appendTo($("body")).show();
			pop.find(".abc").click(function(){
				pop.remove();
				options.callback && options.callback($(this).attr("data-active"));
			});
	};
	window.alert=function(options){
		options=options.constructor==String ? {message:options}:options;
		options.ok=options.ok || "确定";
		var pop=$('<div style="z-index: 999999999999999999999;background-color: rgba(0,0,0,0.3);display: flex;position: fixed;top:0px;width: 100%;height: 100%;align-items: center;justify-content: center;">'+
				'<div style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
				 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">'+options.message+'</span>'+
			    '<div style="display: flex;">'+
			        '<span class="abc" data-active="ok" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 1em 0px;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">'+options.ok+'</span>'+
			    '</div>'+
			'</div></div>').appendTo($("body")).show();
			pop.find(".abc").click(function(){
				pop.remove();
				options.callback && options.callback($(this).attr("data-active"));
			});
	};
	

//	var browser = {
//		versions : function() {
//			var u = navigator.userAgent, app = navigator.appVersion;
//			return { // 移动终端浏览器版本信息
//				trident : u.indexOf('Trident') > -1, // IE内核
//				presto : u.indexOf('Presto') > -1, // opera内核
//				webKit : u.indexOf('AppleWebKit') > -1, // 苹果、谷歌内核
//				gecko : u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, // 火狐内核
//				mobile : !!u.match(/AppleWebKit.*Mobile.*/), // 是否为移动终端
//				ios : !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), // ios终端
//				android : u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, // android终端或uc浏览器
//				iPhone : u.indexOf('iPhone') > -1, // 是否为iPhone或者QQHD浏览器
//				iPad : u.indexOf('iPad') > -1, // 是否iPad
//				webApp : u.indexOf('Safari') == -1
//			// 是否web应该程序，没有头部与底部
//			};
//		}(),
//		language : (navigator.browserLanguage || navigator.language)
//				.toLowerCase()
//	}
//
//	if (browser.versions.mobile) {// 判断是否是移动设备打开。browser代码在下面
//		var ua = navigator.userAgent.toLowerCase();// 获取判断用的对象
//		if (ua.match(/MicroMessenger/i) == "micromessenger") {
//			// 在微信中打开
//			window.alert = function(name) {
////				var iframe = document.createElement("IFRAME");
////				iframe.style.display = "none";
////				iframe.setAttribute("src", 'data:text/plain,');
////				document.documentElement.appendChild(iframe);
////				window.frames[0].window.alert(name);
////				iframe.parentNode.removeChild(iframe);
//				var pop=$('<div data-role="popup" id="popupDialog" data-overlay-theme="b" data-dismissible="false" style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
//						 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">' + name + '</span>'+
//					    '<div role="main" style="display: flex;">'+
//					        '<a href="#" class="ui-btn" data-rel="back" data-active="OK" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 0px 1em;border: none;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">确定</a>'+			        
//					    '</div>'+
//					'</div>').appendTo($("body")).popup({
//						  afterclose: function( event, ui ) {
//							  $(this).remove();
//						  }
//					});
//					pop.find("a").click(function(){
//						//$(this).attr("data-active");
//					});
//					pop.popup("open");
//			}
//			
//			window.confirm = function(name) {
////				var iframe = document.createElement("IFRAME");
////				iframe.style.display = "none";
////				iframe.setAttribute("src", 'data:text/plain,');
////				document.documentElement.appendChild(iframe);
//////				var alertFrame = window.frames[0];
//////				var result = alertFrame.window.confirm(name);
//////				iframe.parentNode.removeChild(iframe);
////				
////				var result = window.frames[0].window.confirm(name);  
////			    iframe.parentNode.removeChild(iframe);  
////			    return result;  
//				
//				var pop=$('<div data-role="popup" id="popupDialog" data-overlay-theme="b" data-dismissible="false" style="max-width:500px; min-width:20em; background-color: #fff;display: flex;flex-direction: column;border-radius: 1em;">'+
//						 '<span style="display: flex;flex: 1;margin: 1.2em;font-size:1.2em;font-weight: bold;">' + name + '</span>'+
//					    '<div role="main" style="display: flex;">'+
//					        '<a href="#" class="ui-btn" data-rel="back" data-active="Cancel" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 0px 1em;border: none;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">取消</a>'+
//					        '<a href="#" class="ui-btn" data-rel="back" data-transition="flow" data-active="Delete" style="flex: 1;padding: 0px;margin: 0px;display: flex;align-items: center;justify-content: center;height: 3em;border-radius: 0px 0px 1em 0px;border: solid 1px #eee;color: #00F;font-size: 1.2em;font-weight: normal;">删除</a>'+
//					    '</div>'+
//					'</div>').appendTo($("body")).popup({
//								  afterclose: function( event, ui ) {
//									  $(this).remove();
//								  }
//							});
//					pop.find("a").click(function(){
//						//$(this).attr("data-active");
//					});
//					pop.popup("open");
//			}
//		}
//		if (ua.match(/WeiBo/i) == "weibo") {
//			// 在新浪微博客户端打开
//		}
//		if (ua.match(/QQ/i) == "qq") {
//			// 在QQ空间打开
//		}
//		if (browser.versions.ios) {
//			// 是否在IOS浏览器打开
//		}
//		if (browser.versions.android) {
//			// 是否在安卓浏览器打开
//		}
//	} else {
//		// 否则就是PC浏览器打开
//	}

	var DATEFORMAT_REG = /(yyyy)|(MM)|(dd)|(HH)|(mm)|(ss)|(fff)/g;
	//格式化
	//@formater 格式化字符串表达式,如:yyyy-MM-dd
	//@return 格式化后的字符串
	Date.prototype.formatToString = function(formater) {
		var self = this;
		return formater.replace(DATEFORMAT_REG, function(part) {
			switch (part) {
			case "yyyy":
				return self.getFullYear();
			case "MM":
				var month = (self.getMonth() + 1).toString();
				return month.length > 1 ? month : "0" + month;
			case "dd":
				var date = self.getDate().toString();
				return date.length > 1 ? date : "0" + date;
			case "HH":
				var h = self.getHours().toString();
				return h.length > 1 ? h : "0" + h;
			case "mm":
				var m = self.getMinutes().toString();
				return m.length > 1 ? m : "0" + m;
			case "ss":
				var s = self.getSeconds().toString();
				return s.length > 1 ? s : "0" + s;
			case "fff":
				return self.getMilliseconds().toString();
			}
		});
	};
	//字符串转时间
	//@formater 字符串的格式
	//@value 时间字符串
	//@return 时间
	Date.fromString = function(formater, value) {
		formater = formater || "yyyy-MM-dd";
		var year = 0, month = 0, date = 1, hour = 0, minute = 0, second = 0, millisecond = 0;
		formater.replace(DATEFORMAT_REG, function(part) {
			var index = arguments[arguments.length - 2];
			switch (part) {
			case "yyyy":
				year = parseInt(value.substr(index, 4));
				break;
			case "MM":
				month = parseInt(value.substr(index, 2)) - 1;
				break;
			case "dd":
				date = parseInt(value.substr(index, 2));
				break;
			case "HH":
				hour = parseInt(value.substr(index, 2));
				break;
			case "mm":
				minute = parseInt(value.substr(index, 2));
				break;
			case "ss":
				second = parseInt(value.substr(index, 2));
				break;
			case "fff":
				millisecond = parseInt(value.substr(index, 3));
				break;
			}
		});
		return new Date(year, month, date, hour, minute, second, millisecond);
	};
})();