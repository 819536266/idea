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
<%@include file="../../staticFile.jsp"%>
<script src="${pp}/admin/lib/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="${pp}/admin/js/block_ui.js"></script>
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
			action="${pp}/admin/resource/addImg" id="myAddForm"
			enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>课件名字
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.name" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item imgInput">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>课件上传
				</label>
				<div class="layui-input-inline imgName">
					<div id="preview"></div>
					<input type="file" name="a.files" />
				</div>
				<span class="x-red">建议视频上传MP4格式</span>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>类型：
				</label>
				<div class="layui-input-block">
					<input type="radio" name="a.type" title="课件文档" value="1" checked>
					<input type="radio" name="a.type" title="视频教程" value="2">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					确认添加</button>
			</div>
		</form>
	</div>
	<script>
		layui
				.use(
						[ 'form', 'layer', 'layedit' ],
						function() {
							$ = layui.jquery;
							var form = layui.form;
							var Request = GetRequest();
							var classId = Request["classId"];
							var input = '<input type="hidden" name="a.classesId" value="'+classId+'" />';
							$('#myAddForm').append(input);
						});
	</script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var bar = $('.bar');
							var percent = $('.percent');
							var status = $('#status');
							$("#myAddForm")
									.ajaxForm(
											{
												beforeSerialize : function() {

												},
												beforeSubmit : function() {
													//alert("表单提交前的操作");
													var file = $("input[type='file']")[0].files[0];
													var filesize = file.size / 1024 / 1024;
													if ($(
															"input[type='radio']:checked")
															.val() == 2) {
														var name = file.name;
														var type = name
																.substring(
																		name
																				.indexOf('.'),
																		name.length);

														if (type == '.mp4'
																|| type == '.flv') {

														} else {
															layer
																	.alert("请上传mp4、flv格式视频");
															return false;
														}
													}
													if (filesize > 1024) {
														layer
																.alert("文件大小超过限制，最多1g");
														return false;
													}

												},
												beforeSend : function() {
													status.empty();
													var percentVal = '0%';
													bar.width(percentVal)
													percent.html(percentVal);
												},
												uploadProgress : function(
														event, position, total,
														percentComplete) {
													var percentVal = percentComplete
															+ '%';
													bar.width(percentVal)
													percent.html(percentVal);
													$
															.blockUI({
																message : '<img src="${pp}/admin/js/load.gif" />'
															});
												},
												success : function(r) {
													if (r.success) {
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