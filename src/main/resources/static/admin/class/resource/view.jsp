<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看视频</title>
<%@include file="../../staticFile.jsp"%>
<script>
	function MM_CheckFlashVersion(reqVerStr, msg) {
		with (navigator) {
			var isIE = (appVersion.indexOf("MSIE") != -1 && userAgent
					.indexOf("Opera") == -1);
			var isWin = (appVersion.toLowerCase().indexOf("win") != -1);
			if (!isIE || !isWin) {
				var flashVer = -1;
				if (plugins && plugins.length > 0) {
					var desc = plugins["Shockwave Flash"] ? plugins["Shockwave Flash"].description
							: "";
					desc = plugins["Shockwave Flash 2.0"] ? plugins["Shockwave Flash 2.0"].description
							: desc;
					if (desc == "")
						flashVer = -1;
					else {
						var descArr = desc.split(" ");
						var tempArrMajor = descArr[2].split(".");
						var verMajor = tempArrMajor[0];
						var tempArrMinor = (descArr[3] != "") ? descArr[3]
								.split("r") : descArr[4].split("r");
						var verMinor = (tempArrMinor[1] > 0) ? tempArrMinor[1]
								: 0;
						flashVer = parseFloat(verMajor + "." + verMinor);
					}
				}
				// WebTV has Flash Player 4 or lower -- too low for video
				else if (userAgent.toLowerCase().indexOf("webtv") != -1)
					flashVer = 4.0;

				var verArr = reqVerStr.split(",");
				var reqVer = parseFloat(verArr[0] + "." + verArr[2]);

				if (flashVer < reqVer) {
					if (confirm(msg))
						window.location = "http://www.macromedia.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash";
				}
			}
		}
	}
</script>
</head>
<body
	onload="MM_CheckFlashVersion('7,0,0,0','本页内容需要使用较新的 Macromedia Flash Player 版本。是否现在下载它？');">
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<c:if test="${type == '.flv'}">
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			width="820" height="440"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0"
			id="FLVPlayer">
			<param name="movie" value="${pp}/swf/FLVPlayer_Progressive.swf" />
			<param name="salign" value="lt" />
			<param name="quality" value="high" />
			<param name="scale" value="noscale" />
			<param name="FlashVars"
				value="&MM_ComponentVersion=1&skinName=${pp}/swf/Clear_Skin_2&streamName=${r1}&autoPlay=false&autoRewind=false" />
			<embed src="${pp}/swf/FLVPlayer_Progressive.swf"
				flashvars="&MM_ComponentVersion=1&skinName=${pp}/swf/Clear_Skin_2&streamName=${r1}&autoPlay=false&autoRewind=false "
				quality="high" scale="noscale" width="820" height="440"
				name="FLVPlayer" salign="LT" type="application/x-shockwave-flash"
				pluginspage="http://www.macromedia.com/go/getflashplayer" /></embed>
		</object>
	</c:if>

	<video width="820" height="440" controls>
		<source src="${fileServerVideo}/${r.files}" type="video/ogg" />
		<source src="${fileServerVideo}/${r.files}" type="video/mp4" />
		<source src="${fileServerVideo}/${r.files}" type="video/webm" />
	</video>

	<script type="text/javascript">
		$(function() {
			var Request = GetRequest();
			var id = Request["id"];

			/*$.get('${pp}/admin/resource/view/' + id, function(r) {
				console.log('${fileServerVideo}/' + r.files)
				var video = '${fileServerVideo}/' + r.files;
				$('video').attr('src', video);
				$('source').attr('src', video);
				//	$('embed').attr('src', video);
			});*/
		});
	</script>
</body>
</html>