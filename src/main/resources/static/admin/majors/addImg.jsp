<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>内容添加</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<%@include file="../staticFile.jsp"%>
<style type="text/css">
#preview, .img, img {
	width: 260px;
	height: 190px;
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
		<form class="layui-form" method="post" action="${pp}/admin/msd/addImg"
			id="myAddForm" enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>图片：
				</label>
				<div class="layui-input-inline">
					<div id="preview"></div>
					<input type="file" name="imgName" onchange="preview(this)" />
				</div>

			</div>
			<input type="hidden" name="imgName" onchange="preview(this)" />
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					确认添加</button>
			</div>
		</form>
	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var Request = GetRequest();
							var key = Request["detailId"];
							var input = '<input type="hidden" name="detailId" value="'+key+'"  />';
							$('#myAddForm').append(input);
							$("#myAddForm")
									.ajaxForm(
											{
												dataType : "json",
												success : function(r) {
													console.log(r)
													if (r) {
														var index = parent.layer
																.getFrameIndex(window.name);
														parent.layer
																.close(index);
													} else {
														layer.alert('添加失败');
													}
												}
											});
						});
	</script>
</body>

</html>