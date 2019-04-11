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
<script src="${pp}/admin/lib/layui/layui.js" charset="utf-8"></script>
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
			action="${pp}/admin/problem/edit" id="myAddForm">
			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> <span
					class="x-red">*</span>问题：
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.problem" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="username" class="layui-form-label title"> 分数： </label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="a.scope"
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item ">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>选项A
				</label>
				<div class="layui-input-inline imgName">
					<input type="text" id="username" name="a.checkA" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>

			</div>
			<div class="layui-form-item ">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>选项B
				</label>
				<div class="layui-input-inline imgName">
					<input type="text" id="username" name="a.checkB" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>

			</div>
			<div class="layui-form-item ">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>选项C
				</label>
				<div class="layui-input-inline imgName">
					<input type="text" id="username" name="a.checkC" autocomplete="off"
						class="layui-input">
				</div>

			</div>
			<div class="layui-form-item ">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>选项D
				</label>
				<div class="layui-input-inline imgName">
					<input type="text" id="username" name="a.checkD" autocomplete="off"
						class="layui-input">
				</div>

			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"> 正确答案 </label>
				<div class="layui-input-block">
					<input type="radio" name="a.right" title="A" value="A"> <input
						type="radio" name="a.right" title="B" value="B"> <input
						type="radio" name="a.right" title="C" value="C"> <input
						type="radio" name="a.right" title="D" value="D">
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
			var Request = GetRequest();
			var id = Request["id"];
			var input = '<input type="hidden" name="a.id" value="'+id+'" />';
			$('#myAddForm').append(input);
			var url = '${pp}/admin/problem/view/' + id;
			$.get(url, function(r) {
				console.log(r)
				$('input[name="a.problem"]').val(r.problem);
				$('input[name="a.scope"]').val(r.scope);
				$('input[name="a.checkA"]').val(r.checkA);
				$('input[name="a.checkB"]').val(r.checkB);
				$('input[name="a.checkC"]').val(r.checkC);
				$('input[name="a.checkD"]').val(r.checkD);

				$('input[name="a.right"]').each(function(n, m) {
					console.log(m)
					$input = $(m);
					if (r.right == $input.val()) {
						$input.attr('checked', 'checked');
					}
				});
				form.render();
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#myAddForm").ajaxForm({
				success : function(r) {
					if (r.success) {
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