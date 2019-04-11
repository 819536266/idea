<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改专业——学历教育</title>
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
		<!-- action="${pp}/admin/majors/editImg" -->
		<form class="layui-form" method="post" id="myAddForm"
			action="${pp}/admin/majors/editImg" enctype=multipart/form-data>
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>专业名称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.ebName" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>类型：
				</label>
				<div class=layui-input-inline>
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
					确认修改</button>
			</div>
		</form>
	</div>
	<script>
		layui.use([ 'form', 'layer', 'layedit' ], function() {
			$ = layui.jquery;
			var form = layui.form;
			var layer = layui.layer;
			var layedit = layui.layedit;
			var layeditIndex = "";
			var Request = GetRequest();
			var key = Request["id"];

			var input = '<input type="hidden" name="a.id"  value="'+key+'">';
			$('#myAddForm').append(input);
			$.get('${pp}/admin/majors/view/' + key, function(r) {
				//console.log(r)	
				$('input[name="a.ebName"]').val(r.ebName);
				$('textarea').val(r.detail);
				var parentId = r.parentId;
				layeditIndex = layedit.build('demo', {
					height : 280,
					uploadImage : {
						url : '${pp}/upload',
						type : 'post'
					}
				});
				form.render();
				//下拉框
				var url1 = '${pp}/admin/majors/list?page=1&limit=1000';
				$.get(url1, function(r) {
					r = r.data;
					$.each(r, function(n, m) {
						var option = '<option value=' + r[n].id + ' ';
						if (parentId == r[n].id) {
							option += 'selected="selected"';
						}
						option += '>' + r[n].ebName + '</option>';
						//console.log(option)
						$('select').append(option);
					});
					form.render();
				});

			});

			$("#myAddForm").ajaxForm({
				beforeSerialize : function() {
					$('#demo').val(layedit.getContent(layeditIndex))
				},
				dataType : "json",
				success : function(r) {
					if (r) {
						var index = parent.layer.getFrameIndex(window.name);
						parent.layer.close(index);
					} else {
						layer.alert('修改失败');
					}
				}
			});

		});
	</script>

</body>

</html>