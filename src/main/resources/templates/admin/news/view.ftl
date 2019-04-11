<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>内容添加</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<#include "../staticFile.ftl"/>
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
		<form class="layui-form" method="post" id="myAddForm"
			action="${request.contextPath}/admin/msd/editImg" enctype="multipart/form-data">
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>标题
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.title" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>内容标题
				</div>
			</div>
			<div class="layui-form-item imgName">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>图片:
				</label>
				<div class="layui-input-inline file"></div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>260*190
				</div>
			</div>
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> 详情： </label>
				<div class="layui-input-block">
					<textarea id="demo" name="a.detail"></textarea>
				</div>
			</div>
			<input name="a.id" type="hidden" value="">
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">
					确认修改</button>
			</div>
		</form>
	</div>
	<script>
		layui
				.use(
						[ 'form', 'layer', 'layedit' ],
						function() {
							$ = layui.jquery;
							var form = layui.form, layer = layui.layer, layedit = layui.layedit;
							var Request = GetRequest();
							var id = Request["id"];
							var layeditIndex = "";
							var detailId = Request["detailId"];

							if (detailId == 10 || detailId == 19) {
								var ii = '<div id="preview"></div>';
								ii += '<input type="file" name="a.imgName" onchange="preview(this)" />';
								$('.file').append(ii);
								$
										.get(
												'${request.contextPath}/admin/msd/view/' + id,
												function(r) {
													var tu = fileServer + "/"
															+ r.imgName;
													var img = "<img  src="+tu+" width=50  height=50 />";
													$("#preview").append(img);

												});
							}
							var index = "";
							//获取本条记录
							$.get('${request.contextPath}/admin/msd/view/' + id, function(r) {
								$("input[name='a.title']").val(r.title);
								$("input[name='a.id']").val(r.id);
								$("textarea").val(r.detail);
								//文本编辑器
								layeditIndex = layedit.build('demo', {
									height : 480,
									uploadImage : {
										url : '${request.contextPath}/upload',
										type : 'post'
									}
								});
							});
							$("#myAddForm")
									.ajaxForm(
											{
												beforeSerialize : function() {
													$('#demo')
															.val(
																	layedit
																			.getContent(layeditIndex))
												},
												dataType : "json",
												success : function(r) {
													if (r) {
														var index = parent.layer
																.getFrameIndex(window.name);
														parent.layer
																.close(index);
													} else {
														layer.alert('修改失败');
													}
												}
											});
						});
	</script>

</body>

</html>