function initPower(rootdom) {
	function checkCode(powercode){
		if(/^\$fn\./.test(powercode)){
			powercode=powercode.replace("$fn.","");
			var result;
			eval("result = " + powercode);
			return result;
		}else{
			return PowerData[powercode];
		}
	}
	var PowerData = JSON.parse(sessionStorage.PowerData);
	rootdom.find("[data-poweraction]").each(function() {
		var ctrl = $(this), poweraction = ctrl.attr("data-poweraction"), 
			powercode = ctrl.attr("data-powercode");
		
		if (!poweraction && !powercode) {
			alert("非法的权限标记");
			return;
		}

		poweraction = poweraction ? poweraction.split(":") : null;

		switch (poweraction[0]) {
		case "display":
			if (checkCode(powercode)) {
				ctrl.toggle(0,null,true);
			} else {
				ctrl.toggle(0,null,false);
			}
			break;
		case "enable":
			if (checkCode(powercode)) {
				ctrl.removeAttr("disabled");
			} else {
				ctrl.attr("disabled", "disabled");
			}
			break;
		case "readonly":
			break;
		case "class":
			var classcodes = poweraction[1].split(",");
			if (checkCode(powercode)) {
				ctrl.addClass(classcodes[0]);
				if (classcodes.length > 1) {
					ctrl.removeClass(classcodes[1]);
				}
			}
			break;
		default:
			break;
		}
	});
	rootdom.find("a.pdrc-cannotedit").removeAttr("href");
}

$(function() {
	if (window.powers) {
		var PowerData = {};
		for (var i = 0; i < powers.length; i++) {
			PowerData[powers[i]] = true;
		}
		sessionStorage.PowerData = JSON.stringify(PowerData);
		initPower($("body"));
	}
	
	//if(window.workId) {
	//	alert('workId'+ workId);
	//}
});

function checkPMPower(workId) {
	if(window.workId) {
		if(window.workId == workId) {
			return true;
		}
		else {
			return false;
		}
	}
}