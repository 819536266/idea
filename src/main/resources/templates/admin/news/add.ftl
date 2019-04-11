<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>内容添加</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<#include "../staticFile.ftl">
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
		<form class="layui-form" method="post" action="${request.contextPath}/admin/msd/addImg"
			id="myAddForm" enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
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
			<div class="layui-form-item imgInput">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>图片
				</label>
				<div class="layui-input-inline imgName">
					<div id="preview"></div>

				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>260*190
				</div>
			</div>

			<div class="layui-form-item detail">
				<label for="phone" class="layui-form-label"> 详情： </label>
				<div class="layui-input-block">
					<textarea id="demo" name="a.detail" style="display: none;"></textarea>
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
							var form = layui.form, layer = layui.layer, layedit = layui.layedit;
							var Request = GetRequest();
							var key = Request["detailId"];
							var input = '<input type="hidden" name="a.detailId" value="'+key+'"  />';
							$('#myAddForm').append(input);
							if (key == 17) {//17表示友情链接
								$('.title').find('label').text('标题：');
								$('.detail').find('label').text('链接：');
							}
						
							if (key == 10 || key == 19) {//10职业视角
								var input = '<input type="file" name="a.imgName" onchange="preview(this)" />';
								$('.imgName').append(input);
							} else {
								$('.imgInput').empty();
							}
							//文本编辑器
							var index = layedit.build('demo', {
								height : 480,
								uploadImage : {
									url : '${request.contextPath}/upload',
									type : 'post'
								}
							});
							var url = "${request.contextPath}/admin/msd/add";

						});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			$("#myAddForm").ajaxForm({
				dataType : "json",
				success : function(r) {

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