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
<%@include file="../staticFile.jsp"%>


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
			enctype='multipart/form-data'>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>专业名称
				</label>
				<div class="layui-input-inline">
					<input type="text" name="a.ebName" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> 所属行业 </label>
				<div class="layui-input-inline">
					<select name="a.parentId">
					</select>
				</div>
			</div>
			<input type="hidden" name="a.isEb" value="1" />
			<div class="layui-form-item">
				<label for="phone" class="layui-form-label"> 专业介绍： </label>
				<div class="layui-input-block">
					<textarea id="demo" name="a.detail"></textarea>
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
		layui.use([ 'form', 'layer', 'layedit' ], function() {
			$ = layui.jquery;
			var form = layui.form;
			var layer = layui.layer;
			var layedit = layui.layedit;
			var index = layedit.build('demo', {
				height : 280,
				uploadImage : {
					url : '${pp}/upload',
					type : 'post'
				}
			});
			var url1 = '${pp}/admin/majors/list?page=1&limit=1000&a.isEb=1';
			$.get(url1, function(r) {
				r = r.data;
				$.each(r, function(n, m) {
					var option = '<option value='+r[n].id+' >' + r[n].ebName
							+ '</option>';
					$('select').append(option);
				});
				form.render();
			});
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