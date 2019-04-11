<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>行业添加</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%><script
	src="${request.contextPath}/admin/lib/layui/layui.js"
	charset="utf-8"></script>
<style type="text/css">
#preview, .img, img {
	width: 130px;
	height: 175px;
}

#preview {
	border: 1px solid #cccccc;
}
</style>
<script type="text/javascript">
	function preview(file) {
		var prevDiv = document.getElementById('preview');
		if (file.files && file.files[0]) {
			var reader = new FileReader();
			reader.onload = function(evt) {
				prevDiv.innerHTML = '<img   src="'
						+ evt.target.result + '" />';
			}
			reader.readAsDataURL(file.files[0]);
		} else {
			prevDiv.innerHTML = '<div class="img" style="filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src=\''
					+ file.value + '\'"></div>';
		}
	}
</script>
</head>
<body>
	<div class="x-nav">
		<a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			href="javascript:location.replace(location.href);" title="刷新"> <i
			class="layui-icon" style="line-height: 30px">ဂ</i></a>
	</div>
	<div class="x-body">
		<form class="layui-form" method="post"
			action="${pp}/admin/majors/addImg" id="myAddForm"
			enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>行业名称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.ebName" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item imgInput">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>图片
				</label>
				<div class="layui-input-inline imgName">
					<div id="preview"></div>
					<input type="file" name="a.img" onchange="preview(this)" />
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>130*175
				</div>
			</div>
			<input type="hidden" name="a.parentId" value="0" /> <input
				type="hidden" name="a.isEb" value="1" />
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>类型：
				</label>
				<div class="layui-input-block">
					<input type="radio" name="a.ebType" title="本科教育" value="1" checked>
					<input type="radio" name="a.ebType" title="专科教育" value="2">
				</div>
			</div>


			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					确认添加</button>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#myAddForm").ajaxForm({
				dataType : "json",
				success : function(r) {
					console.log(r)
					if (r) {
						var index = parent.layer.getFrameIndex(window.name);
						parent.layer.close(index);
					} else {
						layer.alert('添加失败');
					}
				}
			});
		});
	</script>

</body>

</html>