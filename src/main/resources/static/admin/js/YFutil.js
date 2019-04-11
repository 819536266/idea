$(function() {

	// 去除所有select的重复option,注意这个方法会将value消除掉
	/*
	 * var all = $('select'); all.each(function(n, m) { var items = m; var sobj =
	 * (function() { var _sobj = {}; for ( var i = 0; i < items.options.length;
	 * i++) { _sobj[items.options[i].text] = 1; } return _sobj; })();
	 * items.options.length = 0; var _cx = 0; for ( var i in sobj) {
	 * items.options[_cx] = new Option(i, i); _cx += 1; } });
	 */
});
/**
 * js过滤html标签var newStr=str.replace(/<[^>]+>/g, "");
 */
/**
 * 获取request对象 var Request = GetRequest(); var key = Request["circleId"];
 */
function GetRequest() {
	var url = location.search; // 获取url中"?"符后的字串
	var theRequest = new Object();
	if (url.indexOf("?") != -1) {
		var str = url.substr(1);
		strs = str.split("&");
		for (var i = 0; i < strs.length; i++) {
			theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
		}
	}
	return theRequest;
}

/**
 * yf 使用方法 在需要显示系统时间标签加上id='time'
 */
function showTime() {
	var now = new Date();
	var nowTime = now.toLocaleString();
	var date = nowTime.substring(0, 10);// 截取日期
	var time = nowTime.substring(10, 20); // 截取时间
	var week = now.getDay(); // 星期
	var hour = now.getHours(); // 小时
	// 判断星期几
	var weeks = [ "日", "一", "二", "三", "四", "五", "六" ];
	var getWeek = "星期" + weeks[week];
	var sc;
	// 判断是AM or PM
	if (hour >= 0 && hour < 5) {
		sc = '凌晨';
	} else if (hour > 5 && hour <= 7) {
		sc = '早上';
	} else if (hour > 7 && hour <= 11) {
		sc = '上午';
	} else if (hour > 11 && hour <= 13) {
		sc = '中午';
	} else if (hour > 13 && hour <= 18) {
		sc = '下午';
	} else if (hour > 18 && hour <= 23) {
		sc = '晚上';
	}
	document.getElementById('time').innerHTML = "当前时间：" + date + " " + getWeek
			+ " " + "   " + sc + "  " + time;
	setTimeout('showTime()', 1000);
}
// 获取项目路径
function getRootPath() {
	var curPath = window.document.location.href;
	var pathName = window.document.location.pathname;
	var pos = curPath.indexOf(pathName);
	var localhostPaht = curPath.substring(0, pos);
	var projectName = pathName
			.substring(0, pathName.substr(1).indexOf('/') + 1);
	alert(localhostPaht + projectName);
	var path2 = localhostPaht + projectName;

	return path2;
}